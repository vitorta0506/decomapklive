.class public Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    const v1, 0x7f0a0e18

    const-string v2, "field \'mVipSwitcherView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    const v0, 0x7f0a020d

    const-string v1, "field \'mViewClose\' and method \'close\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 5
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->mViewClose:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0136

    const-string v1, "field \'bgTitleLay\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->bgTitleLay:Landroid/view/View;

    const v0, 0x7f0a0bbf

    const-string v1, "method \'toCustomerService\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->mViewClose:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->bgTitleLay:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
