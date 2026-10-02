.class Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;
.super Ljava/lang/Object;
.source "FingerprintActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

.field private final synthetic val$errString:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;Ljava/lang/CharSequence;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    iput-object p2, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->val$errString:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v1}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->val$errString:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f010006

    invoke-virtual {v1, v4, v3}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\ud83d\udd12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;

    invoke-static {v1}, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;->access$1(Lcom/dudu/fingertest/FingerprintActivity$AuthCallback;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity$AuthCallback$1;->val$errString:Ljava/lang/CharSequence;

    aput-object p0, v2, v5

    const p0, 0x7f010007

    invoke-virtual {v1, p0, v2}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {v0, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
