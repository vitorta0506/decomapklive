.class Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->b2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g$a;-><init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
