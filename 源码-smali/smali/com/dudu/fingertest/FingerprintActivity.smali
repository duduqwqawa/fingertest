.class public Lcom/dudu/fingertest/FingerprintActivity;
.super Landroid/app/Activity;
.source "FingerprintActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;
    }
.end annotation


# static fields
.field private static final AUTH_BIOMETRIC_STRONG:I = 0xf

.field private static final AUTH_DEVICE_CREDENTIAL:I = 0x8000

.field private static final BIOMETRIC_ERROR_HW_UNAVAILABLE:I = 0x1

.field private static final BIOMETRIC_ERROR_NONE_ENROLLED:I = 0xb

.field private static final BIOMETRIC_ERROR_NO_HARDWARE:I = 0xc


# instance fields
.field private cancellationSignal:Landroid/os/CancellationSignal;

.field private final executor:Ljava/util/concurrent/Executor;

.field private fingerprintPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field private icon:Landroid/widget/TextView;

.field private lockSfx:I

.field private pinPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field private soundPool:Landroid/media/SoundPool;

.field private statusView:Landroid/widget/TextView;

.field private unlockSfx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->executor:Ljava/util/concurrent/Executor;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->unlockSfx:I

    .line 51
    iput v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->lockSfx:I

    return-void
.end method

.method static synthetic access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2(Lcom/dudu/fingertest/FingerprintActivity;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->showFingerprint()V

    return-void
.end method

.method static synthetic access$3(Lcom/dudu/fingertest/FingerprintActivity;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->showPin()V

    return-void
.end method

.method static synthetic access$4(Lcom/dudu/fingertest/FingerprintActivity;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->resetLock()V

    return-void
.end method

.method private authenticate(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V
    .locals 4

    .line 195
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 196
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;-><init>(Lcom/dudu/fingertest/FingerprintActivity;Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 197
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private buildUi()V
    .locals 7

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x18

    .line 65
    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f01001b

    .line 68
    invoke-virtual {p0, v3}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41d00000    # 26.0f

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x14

    .line 70
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 72
    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    const-string v5, "\ud83d\udd12"

    .line 75
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    invoke-direct {p0, v4, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const v5, 0x7f010010

    .line 81
    invoke-virtual {p0, v5}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const/16 v5, 0x5a

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f010001

    .line 89
    invoke-virtual {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 91
    new-instance v5, Lcom/dudu/fingertest/FingerprintActivity$1;

    invoke-direct {v5, p0}, Lcom/dudu/fingertest/FingerprintActivity$1;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v5, 0x7f010002

    .line 100
    invoke-virtual {p0, v5}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 102
    new-instance v5, Lcom/dudu/fingertest/FingerprintActivity$2;

    invoke-direct {v5, p0}, Lcom/dudu/fingertest/FingerprintActivity$2;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v5, 0x7f010003

    .line 111
    invoke-virtual {p0, v5}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 113
    new-instance v2, Lcom/dudu/fingertest/FingerprintActivity$3;

    invoke-direct {v2, p0}, Lcom/dudu/fingertest/FingerprintActivity$3;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private dp(I)I
    .locals 0

    int-to-float p1, p1

    .line 305
    invoke-virtual {p0}, Lcom/dudu/fingertest/FingerprintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private lp(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 309
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    .line 310
    invoke-direct {p0, p1}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2, p1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private resetLock()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    const-string v1, "\ud83d\udd12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const v1, 0x7f010018

    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "lock.mp3"

    .line 274
    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->playSfx(Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 275
    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->vibrate(I)V

    return-void
.end method

.method private setupPrompts()V
    .locals 4

    .line 125
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f01000e

    .line 126
    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x7f01000d

    .line 127
    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x7f010008

    .line 128
    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x7f010004

    .line 129
    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/dudu/fingertest/FingerprintActivity$4;

    invoke-direct {v3, p0}, Lcom/dudu/fingertest/FingerprintActivity$4;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 141
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->fingerprintPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    .line 144
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f010017

    .line 145
    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x7f010016

    .line 146
    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x7f010014

    .line 147
    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x8000

    .line 148
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->pinPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    return-void
.end method

.method private setupSound()V
    .locals 3

    .line 243
    :try_start_0
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x2

    .line 244
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    .line 246
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 247
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    .line 243
    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    .line 250
    invoke-virtual {p0}, Lcom/dudu/fingertest/FingerprintActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "unlock.mp3"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    iput v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->unlockSfx:I

    .line 252
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 253
    invoke-virtual {p0}, Lcom/dudu/fingertest/FingerprintActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "lock.mp3"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    iput v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->lockSfx:I

    .line 255
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showFingerprint()V
    .locals 5

    .line 153
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const v1, 0x7f010011

    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v1, 0xf

    .line 158
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const v2, 0x7f01000f

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f01000b

    .line 166
    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f01000a

    .line 163
    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f010009

    .line 169
    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->fingerprintPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    const v1, 0x7f01000c

    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V

    return-void
.end method

.method private showPin()V
    .locals 2

    .line 183
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f010012

    .line 186
    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 188
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->pinPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    const v1, 0x7f010015

    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->buildUi()V

    .line 57
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->setupSound()V

    .line 58
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->setupPrompts()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 292
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 297
    :try_start_0
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    :cond_1
    return-void
.end method

.method public playSfx(Ljava/lang/String;)V
    .locals 7

    .line 261
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "unlock.mp3"

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/dudu/fingertest/FingerprintActivity;->unlockSfx:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/dudu/fingertest/FingerprintActivity;->lockSfx:I

    :goto_0
    move v1, p1

    if-gtz v1, :cond_2

    return-void

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method public vibrate(I)V
    .locals 2

    .line 280
    :try_start_0
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    const/4 p1, -0x1

    .line 284
    invoke-static {v0, v1, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
