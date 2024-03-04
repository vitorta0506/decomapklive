.class Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->Z1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;->getResult()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;->getDiamond()I

    move-result v0

    invoke-virtual {p2, v0}, Lp9/a;->B(I)V

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;->getTokenNum()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->U1()Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->U1()Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;->c()V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    const v0, 0x7f120163

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 8
    :cond_3
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->onFailure(Lg7/a;)V

    :goto_1
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12005d

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$f;->a(Lcom/guochao/faceshow/aaspring/beans/ChangeShuijingBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
