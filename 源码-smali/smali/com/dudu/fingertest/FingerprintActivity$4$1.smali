.class Lcom/dudu/fingertest/FingerprintActivity$4$1;
.super Ljava/lang/Object;
.source "FingerprintActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dudu/fingertest/FingerprintActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dudu/fingertest/FingerprintActivity$4;


# direct methods
.method constructor <init>(Lcom/dudu/fingertest/FingerprintActivity$4;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$4$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/dudu/fingertest/FingerprintActivity$4$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$4;

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity$4;->access$0(Lcom/dudu/fingertest/FingerprintActivity$4;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dudu/fingertest/FingerprintActivity;->access$0(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dudu/fingertest/FingerprintActivity$4$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$4;

    invoke-static {v1}, Lcom/dudu/fingertest/FingerprintActivity$4;->access$0(Lcom/dudu/fingertest/FingerprintActivity$4;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object v1

    const v2, 0x7f010005

    invoke-virtual {v1, v2}, Lcom/dudu/fingertest/FingerprintActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity$4$1;->this$1:Lcom/dudu/fingertest/FingerprintActivity$4;

    invoke-static {p0}, Lcom/dudu/fingertest/FingerprintActivity$4;->access$0(Lcom/dudu/fingertest/FingerprintActivity$4;)Lcom/dudu/fingertest/FingerprintActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/dudu/fingertest/FingerprintActivity;->access$1(Lcom/dudu/fingertest/FingerprintActivity;)Landroid/widget/TextView;

    move-result-object p0

    const-string v0, "\ud83d\udd12"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
