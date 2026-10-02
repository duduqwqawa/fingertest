.class public Lcom/dudu/fingertest/FingerprintActivity;
.super Landroid/app/Activity;
.source "FingerprintActivity.java"


# static fields
.field private static final AUTH_BIOMETRIC_STRONG:I = 0xf

.field private static final AUTH_DEVICE_CREDENTIAL:I = 0x8000


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

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->executor:Ljava/util/concurrent/Executor;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->unlockSfx:I

    .line 38
    iput v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->lockSfx:I

    return-void
.end method

.method static synthetic access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2(Lcom/dudu/fingertest/FingerprintActivity;Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/dudu/fingertest/FingerprintActivity;->playSfx(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/dudu/fingertest/FingerprintActivity;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/dudu/fingertest/FingerprintActivity;->vibrate(I)V

    return-void
.end method

.method private authenticate(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V
    .locals 3

    .line 149
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 150
    new-instance v0, Lcom/dudu/fingertest/FingerprintActivity$1;

    invoke-direct {v0, p0}, Lcom/dudu/fingertest/FingerprintActivity$1;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    .line 179
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->cancellationSignal:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v2, v0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 180
    iget-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private buildUi()V
    .locals 7

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x18

    .line 52
    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v3, "\u9a8c\u8bc1\u6d4b\u8bd5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41d00000    # 26.0f

    .line 56
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x14

    .line 57
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 59
    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    .line 62
    const-string v5, "\ud83d\udd12"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    invoke-direct {p0, v4, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    .line 68
    const-string v5, "\u9009\u4e00\u79cd\u65b9\u5f0f\uff0c\u7cfb\u7edf\u4f1a\u5f39\u51fa\u5bf9\u5e94\u9a8c\u8bc1\u6846"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 70
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const/16 v5, 0x5a

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v2, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v2, "\u6307\u7eb9\u9a8c\u8bc1"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 78
    new-instance v5, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 82
    const-string v5, "\u8f93\u5165 PIN / \u5bc6\u7801"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 84
    new-instance v5, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda3;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v5, "\u91cd\u7f6e\uff08\u56de\u5230\u672a\u5f00\u9501\uff09"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 90
    new-instance v2, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0, v3, v4}, Lcom/dudu/fingertest/FingerprintActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 244
    invoke-virtual {p0}, Lcom/dudu/fingertest/FingerprintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private lp(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 248
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    .line 249
    invoke-direct {p0, p1}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/dudu/fingertest/FingerprintActivity;->dp(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private playSfx(Ljava/lang/String;)V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    const-string v0, "unlock.mp3"

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

    :goto_1
    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private resetLock()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    const-string v1, "\ud83d\udd12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const-string v1, "\u5df2\u91cd\u7f6e\u4e3a\u672a\u5f00\u9501\uff0c\u8bf7\u91cd\u65b0\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const-string v0, "lock.mp3"

    invoke-direct {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->playSfx(Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 217
    invoke-direct {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->vibrate(I)V

    return-void
.end method

.method private setupPrompts()V
    .locals 4

    .line 97
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    const-string v1, "\u6307\u7eb9\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 99
    const-string v1, "\u8bf7\u5c06\u624b\u6307\u653e\u5230\u6307\u7eb9\u4f20\u611f\u5668"

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 100
    const-string v1, "\u4ec5\u4f7f\u7528\u6307\u7eb9\uff0c\u4e0d\u4f7f\u7528 PIN"

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda0;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v0, v3, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 105
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->fingerprintPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    .line 108
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    const-string v1, "\u8bf7\u8f93\u5165 PIN / \u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 110
    const-string v1, "\u4f7f\u7528\u8bbe\u5907\u9501\u5c4f\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 111
    const-string v1, "\u4ec5\u4f7f\u7528 PIN / \u5bc6\u7801 / \u56fe\u6848\uff0c\u4e0d\u4f7f\u7528\u6307\u7eb9"

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    const v1, 0x8000

    .line 112
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->pinPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    return-void
.end method

.method private setupSound()V
    .locals 4

    .line 186
    :try_start_0
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x2

    .line 187
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v3, 0x4

    .line 190
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    .line 193
    invoke-virtual {p0}, Lcom/dudu/fingertest/FingerprintActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "unlock.mp3"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    iput v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->unlockSfx:I

    .line 195
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 196
    invoke-virtual {p0}, Lcom/dudu/fingertest/FingerprintActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "lock.mp3"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    iput v1, p0, Lcom/dudu/fingertest/FingerprintActivity;->lockSfx:I

    .line 198
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showFingerprint()V
    .locals 3

    .line 117
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const-string v1, "\u6b64\u8bbe\u5907\u4e0d\u652f\u6301\u6307\u7eb9\u8bc6\u522b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v1, 0xf

    .line 122
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6307\u7eb9\u4e0d\u53ef\u7528 (\u9519\u8bef\u7801 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 127
    const-string v1, "\u8bbe\u5907\u672a\u5f55\u5165\u6307\u7eb9\uff0c\u8bf7\u5148\u5728\u8bbe\u7f6e\u91cc\u5f55\u5165"

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 128
    const-string v1, "\u6b64\u8bbe\u5907\u6ca1\u6709\u6307\u7eb9\u786c\u4ef6"

    .line 130
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 131
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->fingerprintPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    const-string v1, "\u5df2\u5524\u8d77\u6307\u7eb9\u5f39\u7a97\uff0c\u8bf7\u628a\u624b\u6307\u653e\u5230\u4f20\u611f\u5668"

    invoke-direct {p0, v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V

    return-void
.end method

.method private showPin()V
    .locals 2

    .line 138
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u5907\u6ca1\u6709\u8bbe\u7f6e\u9501\u5c4f PIN / \u5bc6\u7801\uff0c\u8bf7\u5148\u5728\u8bbe\u7f6e\u91cc\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 142
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->pinPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    const-string v1, "\u5df2\u5524\u8d77 PIN / \u5bc6\u7801\u8f93\u5165\u6846"

    invoke-direct {p0, v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V

    return-void
.end method

.method private vibrate(I)V
    .locals 3

    .line 223
    :try_start_0
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Lcom/dudu/fingertest/FingerprintActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v1, p1

    const/4 p1, -0x1

    .line 225
    invoke-static {v1, v2, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$0$com-dudu-fingertest-FingerprintActivity(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->showFingerprint()V

    return-void
.end method

.method synthetic lambda$1$com-dudu-fingertest-FingerprintActivity(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->showPin()V

    return-void
.end method

.method synthetic lambda$2$com-dudu-fingertest-FingerprintActivity(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->resetLock()V

    return-void
.end method

.method synthetic lambda$3$com-dudu-fingertest-FingerprintActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    new-instance p1, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/dudu/fingertest/FingerprintActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    invoke-virtual {p0, p1}, Lcom/dudu/fingertest/FingerprintActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$4$com-dudu-fingertest-FingerprintActivity()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->statusView:Landroid/widget/TextView;

    const-string v1, "\u5df2\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->icon:Landroid/widget/TextView;

    const-string v1, "\ud83d\udd12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->buildUi()V

    .line 44
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->setupSound()V

    .line 45
    invoke-direct {p0}, Lcom/dudu/fingertest/FingerprintActivity;->setupPrompts()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 234
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 238
    :try_start_0
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity;->soundPool:Landroid/media/SoundPool;

    :cond_1
    return-void
.end method
