.class Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;
.super Ljava/lang/Object;
.source "FingerprintActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;


# direct methods
.method constructor <init>(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v1}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v1

    const v2, 0x7f010019

    invoke-virtual {v1, v2}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\ud83d\udd13"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    const-string v1, "unlock.mp3"

    invoke-virtual {v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->playSfx(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->vibrate(I)V

    .line 223
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    .line 224
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$2;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {p0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object p0

    const v1, 0x7f01001a

    invoke-virtual {p0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 223
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
