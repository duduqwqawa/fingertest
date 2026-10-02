.class Lcom/dudu/fingertest/FingerprintActivity$4;
.super Ljava/lang/Object;
.source "FingerprintActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dudu/fingertest/FingerprintActivity;->setupPrompts()V
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

    .line 129
    iput-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$4;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dudu/fingertest/FingerprintActivity$4;)Lcom/dudu/fingertest/FingerprintActivity;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/dudu/fingertest/FingerprintActivity$4;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/dudu/fingertest/FingerprintActivity$4;->this$0:Lcom/dudu/fingertest/FingerprintActivity;

    new-instance p2, Lcom/dudu/fingertest/FingerprintActivity$4$1;

    invoke-direct {p2, p0}, Lcom/dudu/fingertest/FingerprintActivity$4$1;-><init>(Lcom/dudu/fingertest/FingerprintActivity$4;)V

    invoke-virtual {p1, p2}, Lcom/dudu/fingertest/FingerprintActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
