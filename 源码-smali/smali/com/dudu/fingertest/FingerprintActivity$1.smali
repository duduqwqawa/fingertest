.class Lcom/dudu/fingertest/FingerprintActivity$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "FingerprintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dudu/fingertest/FingerprintActivity;->authenticate(Landroid/hardware/biometrics/BiometricPrompt;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dudu/fingertest/FingerprintActivity;


# direct methods
.method constructor <init>(Lcom/dudu/fingertest/FingerprintActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$0$com-dudu-fingertest-FingerprintActivity$1(Ljava/lang/CharSequence;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9a8c\u8bc1\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\ud83d\udd12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5931\u8d25: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$1$com-dudu-fingertest-FingerprintActivity$1()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u6210\u529f \u2714 \u5df2\u5f00\u9501"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\ud83d\udd13"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    const-string v1, "unlock.mp3"

    invoke-static {v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->access$2(Lcom/dudu/fingertest/FingerprintActivity;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->access$3(Lcom/dudu/fingertest/FingerprintActivity;I)V

    .line 167
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    const-string v1, "\u9a8c\u8bc1\u6210\u529f\uff0c\u5df2\u5f00\u9501"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$2$com-dudu-fingertest-FingerprintActivity$1()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u4e0d\u5339\u914d\uff0c\u518d\u8bd5\u4e00\u6b21"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\ud83d\udd12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    new-instance v0, Lcom/dudu/fingertest/FingerprintActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/dudu/fingertest/FingerprintActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/dudu/fingertest/FingerprintActivity$1;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lcom/dudu/fingertest/FingerprintActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    new-instance v1, Lcom/dudu/fingertest/FingerprintActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/dudu/fingertest/FingerprintActivity$1$$ExternalSyntheticLambda2;-><init>(Lcom/dudu/fingertest/FingerprintActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/dudu/fingertest/FingerprintActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$1;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    new-instance v0, Lcom/dudu/fingertest/FingerprintActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/dudu/fingertest/FingerprintActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/dudu/fingertest/FingerprintActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/dudu/fingertest/FingerprintActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
