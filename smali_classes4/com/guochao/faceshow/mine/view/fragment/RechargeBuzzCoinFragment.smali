.class public final Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0012\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016R$\u0010\u0003\u001a\u00020\u00048\u0016@\u0016X\u0097.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;",
        "()V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/DialogRechargeBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/DialogRechargeBinding;)V",
        "getRechargeItemBackground",
        "",
        "getSelectTextColor",
        "getStartBuyBackground",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public viewBinding:Lcom/guochao/faceshow/databinding/DialogRechargeBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;-><init>()V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method


# virtual methods
.method public getRechargeItemBackground()I
    .locals 1

    const v0, 0x7f0800d4

    return v0
.end method

.method public getSelectTextColor()I
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getStartBuyBackground()I
    .locals 1

    const v0, 0x7f0800a6

    return v0
.end method

.method public getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;->viewBinding:Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->bgView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->contentArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0603ce

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x30

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->rechargeHeaderTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/DialogRechargeBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p2, 0x0

    .line 8
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 9
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public bridge synthetic onConsumeResponse()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->a(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public bridge synthetic onCrystalsChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lp9/b;->a(Lp9/a$e;I)V

    return-void
.end method

.method public bridge synthetic onPayError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->b(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onPayResponse()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->c(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public bridge synthetic onSubscribeFailed()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->d(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public bridge synthetic onSubscribeSuccess()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->e(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public setViewBinding(Lcom/guochao/faceshow/databinding/DialogRechargeBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/DialogRechargeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;->viewBinding:Lcom/guochao/faceshow/databinding/DialogRechargeBinding;

    return-void
.end method

.method public bridge synthetic startSubscribe()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method
