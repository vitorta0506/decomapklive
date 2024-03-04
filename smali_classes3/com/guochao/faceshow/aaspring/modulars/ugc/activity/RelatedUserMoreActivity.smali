.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field include:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field locationTipsView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->l0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->n0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->m0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V

    return-void
.end method

.method private i0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V
    .locals 4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->UGC:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/l;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    invoke-static {v0, v1, v2, v3}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private k0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V
    .locals 3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/k;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    invoke-static {v0, v1, v2}, Lib/b;->a(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private synthetic l0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserAttentStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->k0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->i0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    :goto_0
    return-void
.end method

.method private synthetic m0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V
    .locals 0

    const-string p2, "0"

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->setUserAttentStatus(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method

.method private synthetic n0(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V
    .locals 0

    const-string p2, "1"

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->setUserAttentStatus(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->g0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    return-void
.end method

.method public g0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V
    .locals 5

    const p2, 0x7f0a0d86

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v0, 0x7f0a0cc7

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a05a7

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0cfb

    .line 4
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0e13

    .line 5
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 6
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;-><init>()V

    .line 7
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setImg(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setAvatar(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSex()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSex()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setSex(I)V

    .line 11
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserCountryFlag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setCountryLogo(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    const/4 v4, 0x1

    .line 13
    invoke-virtual {p2, v3, v4}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 14
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    :cond_1
    const p1, 0x7f060093

    .line 16
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserNickName()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->a:Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->findSearchNodiff(ILjava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserAttentStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 19
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 20
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/j;

    invoke-direct {p1, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d008c

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const v0, 0x7f120977

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->include:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_search_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->locationTipsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setContent(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setCurrPage(I)V

    const/16 p1, 0xf

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setPageSize(I)V

    const-string p1, "tokens/search/findUserByNickNameOrId"

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public o0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mCurrentNetWork:I

    if-eqz p1, :cond_0

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->b:I

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0xc8

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    const-string p2, "data"

    .line 2
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->b:I

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->b:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->setUserAttentStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->b:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->setUserAttentStatus(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->b:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d026a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->o0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    return-void
.end method
