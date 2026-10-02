package com.dudu.fingertest;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.DialogInterface;
import android.content.res.AssetFileDescriptor;
import android.graphics.Color;
import android.hardware.biometrics.BiometricManager;
import android.hardware.biometrics.BiometricPrompt;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/**
 * 指纹测试 v1.11
 * - 应用名与全部界面文字支持多语言（跟随系统语言自动切换）
 * - 区分"无指纹硬件 / 未录入指纹 / 指纹硬件暂不可用"等提示
 * - PIN 未设置时提示：部分设备系统不允许设置锁屏密码
 */
public class FingerprintActivity extends Activity {

    private static final int AUTH_BIOMETRIC_STRONG = 15;
    private static final int AUTH_DEVICE_CREDENTIAL = 32768;

    private static final int BIOMETRIC_ERROR_HW_UNAVAILABLE = 1;
    private static final int BIOMETRIC_ERROR_NONE_ENROLLED = 11;
    private static final int BIOMETRIC_ERROR_NO_HARDWARE = 12;

    private final Executor executor = Executors.newSingleThreadExecutor();

    private CancellationSignal cancellationSignal;
    private BiometricPrompt fingerprintPrompt;
    private BiometricPrompt pinPrompt;
    private SoundPool soundPool;
    private TextView icon;
    private TextView statusView;
    private int unlockSfx = -1;
    private int lockSfx = -1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        buildUi();
        setupSound();
        setupPrompts();
    }

    private void buildUi() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        root.setPadding(dp(24), dp(24), dp(24), dp(24));

        TextView title = new TextView(this);
        title.setText(getString(R.string.title));
        title.setTextSize(26.0f);
        title.setTextColor(Color.rgb(20, 20, 20));
        title.setGravity(Gravity.CENTER);
        root.addView(title, lp(-1, -2));

        icon = new TextView(this);
        icon.setText("\uD83D\uDD12"); // 🔒
        icon.setTextSize(80.0f);
        icon.setGravity(Gravity.CENTER);
        root.addView(icon, lp(-2, -2));

        statusView = new TextView(this);
        statusView.setText(getString(R.string.hint));
        statusView.setTextSize(14.0f);
        statusView.setTextColor(Color.rgb(90, 90, 90));
        statusView.setGravity(Gravity.CENTER);
        statusView.setPadding(0, dp(12), 0, dp(12));
        root.addView(statusView, lp(-1, -2));

        Button fpBtn = new Button(this);
        fpBtn.setText(getString(R.string.btn_fingerprint));
        fpBtn.setTextSize(16.0f);
        fpBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showFingerprint();
            }
        });
        root.addView(fpBtn, lp(-1, -2));

        Button pinBtn = new Button(this);
        pinBtn.setText(getString(R.string.btn_pin));
        pinBtn.setTextSize(16.0f);
        pinBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showPin();
            }
        });
        root.addView(pinBtn, lp(-1, -2));

        Button resetBtn = new Button(this);
        resetBtn.setText(getString(R.string.btn_reset));
        resetBtn.setTextSize(16.0f);
        resetBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                resetLock();
            }
        });
        root.addView(resetBtn, lp(-1, -2));

        setContentView(root);
    }

    private void setupPrompts() {
        fingerprintPrompt = new BiometricPrompt.Builder(this)
                .setTitle(getString(R.string.fp_title))
                .setSubtitle(getString(R.string.fp_subtitle))
                .setDescription(getString(R.string.fp_desc))
                .setNegativeButton(getString(R.string.cancel), executor, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                statusView.setText(getString(R.string.cancelled));
                                icon.setText("\uD83D\uDD12");
                            }
                        });
                    }
                })
                .setAllowedAuthenticators(AUTH_BIOMETRIC_STRONG)
                .build();

        pinPrompt = new BiometricPrompt.Builder(this)
                .setTitle(getString(R.string.pin_title))
                .setSubtitle(getString(R.string.pin_subtitle))
                .setDescription(getString(R.string.pin_desc))
                .setAllowedAuthenticators(AUTH_DEVICE_CREDENTIAL)
                .build();
    }

    private void showFingerprint() {
        BiometricManager biometricManager = (BiometricManager) getSystemService(BiometricManager.class);
        if (biometricManager == null) {
            statusView.setText(getString(R.string.no_fp_support));
            return;
        }
        int result = biometricManager.canAuthenticate(AUTH_BIOMETRIC_STRONG);
        if (result != 0) {
            String msg;
            switch (result) {
                case BIOMETRIC_ERROR_NONE_ENROLLED:
                    msg = getString(R.string.fp_no_enroll);
                    break;
                case BIOMETRIC_ERROR_NO_HARDWARE:
                    msg = getString(R.string.fp_no_hw);
                    break;
                case BIOMETRIC_ERROR_HW_UNAVAILABLE:
                    msg = getString(R.string.fp_hw_unavailable);
                    break;
                default:
                    msg = getString(R.string.fp_unavailable, result);
                    break;
            }
            statusView.setText(msg);
            Toast.makeText(this, msg, Toast.LENGTH_LONG).show();
            return;
        }
        authenticate(fingerprintPrompt, getString(R.string.fp_prompt_shown));
    }

    private void showPin() {
        KeyguardManager keyguardManager = (KeyguardManager) getSystemService(KeyguardManager.class);
        if (keyguardManager != null && !keyguardManager.isDeviceSecure()) {
            // 未设置锁屏 PIN / 密码，或系统不允许设置锁屏密码
            String msg = getString(R.string.no_lock_msg);
            statusView.setText(msg);
            Toast.makeText(this, msg, Toast.LENGTH_LONG).show();
        } else {
            authenticate(pinPrompt, getString(R.string.pin_prompt_shown));
        }
    }

    private void authenticate(BiometricPrompt prompt, String statusText) {
        cancellationSignal = new CancellationSignal();
        prompt.authenticate(cancellationSignal, executor, new AuthCallback());
        statusView.setText(statusText);
    }

    private class AuthCallback extends BiometricPrompt.AuthenticationCallback {
        @Override
        public void onAuthenticationError(int errorCode, final CharSequence errString) {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    statusView.setText(getString(R.string.fail_status, errString));
                    icon.setText("\uD83D\uDD12");
                    Toast.makeText(FingerprintActivity.this,
                            getString(R.string.fail_toast, errString), Toast.LENGTH_SHORT).show();
                }
            });
        }

        @Override
        public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult result) {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    statusView.setText(getString(R.string.success_status));
                    icon.setText("\uD83D\uDD13"); // 🔓
                    playSfx("unlock.mp3");
                    vibrate(80);
                    Toast.makeText(FingerprintActivity.this,
                            getString(R.string.success_toast), Toast.LENGTH_SHORT).show();
                }
            });
        }

        @Override
        public void onAuthenticationFailed() {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    statusView.setText(getString(R.string.not_match));
                    icon.setText("\uD83D\uDD12");
                }
            });
        }
    }

    private void setupSound() {
        try {
            soundPool = new SoundPool.Builder()
                    .setMaxStreams(2)
                    .setAudioAttributes(new AudioAttributes.Builder()
                            .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                            .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
                            .build())
                    .build();
            AssetFileDescriptor fd = getAssets().openFd("unlock.mp3");
            unlockSfx = soundPool.load(fd, 1);
            fd.close();
            AssetFileDescriptor fd2 = getAssets().openFd("lock.mp3");
            lockSfx = soundPool.load(fd2, 1);
            fd2.close();
        } catch (IOException ignored) {
        }
    }

    public void playSfx(String name) {
        if (soundPool == null) {
            return;
        }
        int id = "unlock.mp3".equals(name) ? unlockSfx : lockSfx;
        if (id <= 0) {
            return;
        }
        soundPool.play(id, 1.0f, 1.0f, 1, 0, 1.0f);
    }

    private void resetLock() {
        icon.setText("\uD83D\uDD12");
        statusView.setText(getString(R.string.reset_done));
        playSfx("lock.mp3");
        vibrate(60);
    }

    public void vibrate(int ms) {
        try {
            Vibrator vibrator = (Vibrator) getSystemService(Vibrator.class);
            if (vibrator == null || !vibrator.hasVibrator()) {
                return;
            }
            vibrator.vibrate(VibrationEffect.createOneShot(ms, -1));
        } catch (Exception ignored) {
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        if (soundPool != null) {
            try {
                soundPool.release();
            } catch (Exception ignored) {
            }
            soundPool = null;
        }
    }

    private int dp(int value) {
        return (int) ((value * getResources().getDisplayMetrics().density) + 0.5f);
    }

    private LinearLayout.LayoutParams lp(int w, int h) {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(w, h);
        params.setMargins(0, dp(10), 0, dp(10));
        return params;
    }
}
