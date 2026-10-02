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
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dudu.fingertest.FingerprintActivity;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class FingerprintActivity extends Activity {
    private static final int AUTH_BIOMETRIC_STRONG = 15;
    private static final int AUTH_DEVICE_CREDENTIAL = 32768;
    private CancellationSignal cancellationSignal;
    private BiometricPrompt fingerprintPrompt;
    private TextView icon;
    private BiometricPrompt pinPrompt;
    private SoundPool soundPool;
    private TextView statusView;
    private final Executor executor = Executors.newSingleThreadExecutor();
    private int unlockSfx = -1;
    private int lockSfx = -1;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        buildUi();
        setupSound();
        setupPrompts();
    }

    private void buildUi() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setPadding(dp(24), dp(24), dp(24), dp(24));
        TextView textView = new TextView(this);
        textView.setText("验证测试");
        textView.setTextSize(26.0f);
        textView.setTextColor(Color.rgb(20, 20, 20));
        textView.setGravity(17);
        linearLayout.addView(textView, lp(-1, -2));
        TextView textView2 = new TextView(this);
        this.icon = textView2;
        textView2.setText("🔒");
        this.icon.setTextSize(80.0f);
        this.icon.setGravity(17);
        linearLayout.addView(this.icon, lp(-2, -2));
        TextView textView3 = new TextView(this);
        this.statusView = textView3;
        textView3.setText("选一种方式，系统会弹出对应验证框");
        this.statusView.setTextSize(14.0f);
        this.statusView.setTextColor(Color.rgb(90, 90, 90));
        this.statusView.setGravity(17);
        this.statusView.setPadding(0, dp(12), 0, dp(12));
        linearLayout.addView(this.statusView, lp(-1, -2));
        Button button = new Button(this);
        button.setText("指纹验证");
        button.setTextSize(16.0f);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.dudu.fingertest.FingerprintActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FingerprintActivity.this.m0lambda$0$comdudufingertestFingerprintActivity(view);
            }
        });
        linearLayout.addView(button, lp(-1, -2));
        Button button2 = new Button(this);
        button2.setText("输入 PIN / 密码");
        button2.setTextSize(16.0f);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.dudu.fingertest.FingerprintActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FingerprintActivity.this.m1lambda$1$comdudufingertestFingerprintActivity(view);
            }
        });
        linearLayout.addView(button2, lp(-1, -2));
        Button button3 = new Button(this);
        button3.setText("重置（回到未开锁）");
        button3.setTextSize(16.0f);
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.dudu.fingertest.FingerprintActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FingerprintActivity.this.m2lambda$2$comdudufingertestFingerprintActivity(view);
            }
        });
        linearLayout.addView(button3, lp(-1, -2));
        setContentView(linearLayout);
    }

    /* renamed from: lambda$0$com-dudu-fingertest-FingerprintActivity, reason: not valid java name */
    /* synthetic */ void m0lambda$0$comdudufingertestFingerprintActivity(View view) {
        showFingerprint();
    }

    /* renamed from: lambda$1$com-dudu-fingertest-FingerprintActivity, reason: not valid java name */
    /* synthetic */ void m1lambda$1$comdudufingertestFingerprintActivity(View view) {
        showPin();
    }

    /* renamed from: lambda$2$com-dudu-fingertest-FingerprintActivity, reason: not valid java name */
    /* synthetic */ void m2lambda$2$comdudufingertestFingerprintActivity(View view) {
        resetLock();
    }

    private void setupPrompts() {
        this.fingerprintPrompt = new BiometricPrompt.Builder(this).setTitle("指纹验证").setSubtitle("请将手指放到指纹传感器").setDescription("仅使用指纹，不使用 PIN").setNegativeButton("取消", this.executor, new DialogInterface.OnClickListener() { // from class: com.dudu.fingertest.FingerprintActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FingerprintActivity.this.m3lambda$3$comdudufingertestFingerprintActivity(dialogInterface, i);
            }
        }).setAllowedAuthenticators(AUTH_BIOMETRIC_STRONG).build();
        this.pinPrompt = new BiometricPrompt.Builder(this).setTitle("请输入 PIN / 密码").setSubtitle("使用设备锁屏密码").setDescription("仅使用 PIN / 密码 / 图案，不使用指纹").setAllowedAuthenticators(AUTH_DEVICE_CREDENTIAL).build();
    }

    /* renamed from: lambda$3$com-dudu-fingertest-FingerprintActivity, reason: not valid java name */
    /* synthetic */ void m3lambda$3$comdudufingertestFingerprintActivity(DialogInterface dialogInterface, int i) {
        runOnUiThread(new Runnable() { // from class: com.dudu.fingertest.FingerprintActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FingerprintActivity.this.m4lambda$4$comdudufingertestFingerprintActivity();
            }
        });
    }

    /* renamed from: lambda$4$com-dudu-fingertest-FingerprintActivity, reason: not valid java name */
    /* synthetic */ void m4lambda$4$comdudufingertestFingerprintActivity() {
        this.statusView.setText("已取消");
        this.icon.setText("🔒");
    }

    private void showFingerprint() {
        BiometricManager biometricManager = (BiometricManager) getSystemService(BiometricManager.class);
        if (biometricManager == null) {
            this.statusView.setText("此设备不支持指纹识别");
            return;
        }
        int canAuthenticate = biometricManager.canAuthenticate(AUTH_BIOMETRIC_STRONG);
        if (canAuthenticate != 0) {
            String str = "指纹不可用 (错误码 " + canAuthenticate + ")";
            if (canAuthenticate == 11) {
                str = "设备未录入指纹，请先在设置里录入";
            } else if (canAuthenticate == 12) {
                str = "此设备没有指纹硬件";
            }
            this.statusView.setText(str);
            Toast.makeText(this, str, 1).show();
            return;
        }
        authenticate(this.fingerprintPrompt, "已唤起指纹弹窗，请把手指放到传感器");
    }

    private void showPin() {
        KeyguardManager keyguardManager = (KeyguardManager) getSystemService(KeyguardManager.class);
        if (keyguardManager != null && !keyguardManager.isDeviceSecure()) {
            this.statusView.setText("设备没有设置锁屏 PIN / 密码，请先在设置里设置");
            Toast.makeText(this, "设备没有设置锁屏 PIN / 密码，请先在设置里设置", 1).show();
        } else {
            authenticate(this.pinPrompt, "已唤起 PIN / 密码输入框");
        }
    }

    /* renamed from: com.dudu.fingertest.FingerprintActivity$1, reason: invalid class name */
    class AnonymousClass1 extends BiometricPrompt.AuthenticationCallback {
        AnonymousClass1() {
        }

        @Override // android.hardware.biometrics.BiometricPrompt.AuthenticationCallback
        public void onAuthenticationError(int i, final CharSequence charSequence) {
            FingerprintActivity.this.runOnUiThread(new Runnable() { // from class: com.dudu.fingertest.FingerprintActivity$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FingerprintActivity.AnonymousClass1.this.m5lambda$0$comdudufingertestFingerprintActivity$1(charSequence);
                }
            });
        }

        /* renamed from: lambda$0$com-dudu-fingertest-FingerprintActivity$1, reason: not valid java name */
        /* synthetic */ void m5lambda$0$comdudufingertestFingerprintActivity$1(CharSequence charSequence) {
            FingerprintActivity.this.statusView.setText("验证失败: " + ((Object) charSequence));
            FingerprintActivity.this.icon.setText("🔒");
            Toast.makeText(FingerprintActivity.this, "失败: " + ((Object) charSequence), 0).show();
        }

        @Override // android.hardware.biometrics.BiometricPrompt.AuthenticationCallback
        public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
            FingerprintActivity.this.runOnUiThread(new Runnable() { // from class: com.dudu.fingertest.FingerprintActivity$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FingerprintActivity.AnonymousClass1.this.m6lambda$1$comdudufingertestFingerprintActivity$1();
                }
            });
        }

        /* renamed from: lambda$1$com-dudu-fingertest-FingerprintActivity$1, reason: not valid java name */
        /* synthetic */ void m6lambda$1$comdudufingertestFingerprintActivity$1() {
            FingerprintActivity.this.statusView.setText("验证成功 ✔ 已开锁");
            FingerprintActivity.this.icon.setText("🔓");
            FingerprintActivity.this.playSfx("unlock.mp3");
            FingerprintActivity.this.vibrate(80);
            Toast.makeText(FingerprintActivity.this, "验证成功，已开锁", 0).show();
        }

        @Override // android.hardware.biometrics.BiometricPrompt.AuthenticationCallback
        public void onAuthenticationFailed() {
            FingerprintActivity.this.runOnUiThread(new Runnable() { // from class: com.dudu.fingertest.FingerprintActivity$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    FingerprintActivity.AnonymousClass1.this.m7lambda$2$comdudufingertestFingerprintActivity$1();
                }
            });
        }

        /* renamed from: lambda$2$com-dudu-fingertest-FingerprintActivity$1, reason: not valid java name */
        /* synthetic */ void m7lambda$2$comdudufingertestFingerprintActivity$1() {
            FingerprintActivity.this.statusView.setText("验证不匹配，再试一次");
            FingerprintActivity.this.icon.setText("🔒");
        }
    }

    private void authenticate(BiometricPrompt biometricPrompt, String str) {
        this.cancellationSignal = new CancellationSignal();
        biometricPrompt.authenticate(this.cancellationSignal, this.executor, new AnonymousClass1());
        this.statusView.setText(str);
    }

    private void setupSound() {
        try {
            this.soundPool = new SoundPool.Builder().setMaxStreams(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(4).build()).build();
            AssetFileDescriptor openFd = getAssets().openFd("unlock.mp3");
            this.unlockSfx = this.soundPool.load(openFd, 1);
            openFd.close();
            AssetFileDescriptor openFd2 = getAssets().openFd("lock.mp3");
            this.lockSfx = this.soundPool.load(openFd2, 1);
            openFd2.close();
        } catch (IOException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playSfx(String str) {
        if (this.soundPool == null) {
            return;
        }
        int i = "unlock.mp3".equals(str) ? this.unlockSfx : this.lockSfx;
        if (i <= 0) {
            return;
        }
        this.soundPool.play(i, 1.0f, 1.0f, 1, 0, 1.0f);
    }

    private void resetLock() {
        this.icon.setText("🔒");
        this.statusView.setText("已重置为未开锁，请重新验证");
        playSfx("lock.mp3");
        vibrate(60);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vibrate(int i) {
        try {
            Vibrator vibrator = (Vibrator) getSystemService(Vibrator.class);
            if (vibrator == null || !vibrator.hasVibrator()) {
                return;
            }
            vibrator.vibrate(VibrationEffect.createOneShot(i, -1));
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        CancellationSignal cancellationSignal = this.cancellationSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            try {
                soundPool.release();
            } catch (Exception unused) {
            }
            this.soundPool = null;
        }
    }

    private int dp(int i) {
        return (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    private LinearLayout.LayoutParams lp(int i, int i2) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.setMargins(0, dp(10), 0, dp(10));
        return layoutParams;
    }
}
