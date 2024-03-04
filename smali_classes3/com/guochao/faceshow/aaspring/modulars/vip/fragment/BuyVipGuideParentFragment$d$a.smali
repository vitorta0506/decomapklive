.class Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserImg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "payPassword"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/guochao/faceshow/bean/UserBean;->payPassword:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 9
    instance-of v2, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    if-eqz v2, :cond_2

    .line 10
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;->a2(Z)V

    .line 11
    new-instance v1, Ly7/r;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v2

    invoke-direct {v1, v2}, Ly7/r;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;->updateSubState(Ly7/r;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->z0(ZI)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->onSubscribeFailed()V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d$a;->a(Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
