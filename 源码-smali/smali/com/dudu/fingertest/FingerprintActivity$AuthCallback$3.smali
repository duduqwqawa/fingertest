.class Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$3;
.super Ljava/lang/Object;
.source "FingerprintActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->onAuthenticationFailed()V
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

    .line 231
    iput-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$3;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$3;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$3;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v1}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v1

    const v2, 0x7f010013

    invoke-virtual {v1, v2}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$3;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {p0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/dudu/fingertest/FingerprintActivity;->access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object p0

    const-string v0, "\ud83d\udd12"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
