.class Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "FingerprintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dudu/fingertest/FingerprintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dudu/fingertest/FingerprintActivity;


# direct methods
.method private constructor <init>(Lcom/dudu/fingertest/FingerprintActivity;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dudu/fingertest/FingerprintActivity;Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;-><init>(Lcom/dudu/fingertest/FingerprintActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    return-object p0
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    new-instance v0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;

    invoke-direct {v0, p0, p2}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;-><init>(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lcom/dudu/fingertest/FingerprintActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    new-instance v1, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$3;

    invoke-direct {v1, p0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$3;-><init>(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)V

    invoke-virtual {v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    new-instance v0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;

    invoke-direct {v0, p0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;-><init>(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)V

    invoke-virtual {p1, v0}, Lcom/dudu/fingertest/FingerprintActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
