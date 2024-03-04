.class Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;->onClick(Landroid/app/Dialog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g$a;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g$a;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g$a;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g$a;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$g;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->Z1(I)V

    :cond_0
    return-void
.end method
