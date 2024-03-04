.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;->e0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V

    return-void
.end method

.method private e0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V
    .locals 0

    const p2, 0x7f0a042f

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->UGC:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$c;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;)V

    invoke-static {p1, p2, p0, p3}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;->d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V

    return-void
.end method

.method public d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V
    .locals 4

    const v0, 0x7f0a00fd

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a0e13

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 3
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a0dc5

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1209bc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserSignature()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v2, 0x7f0a0a8c

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 8
    :cond_1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserAttentStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserAttentStatus()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const v3, 0x7f0a042f

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method public g0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    :cond_0
    const v1, 0x7f120980

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLikeNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    .line 6
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0603ce

    .line 8
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v1, 0x43160000    # 150.0f

    .line 9
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f0a0330

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public loadData(I)V
    .locals 2

    const-string p1, "tokens/friend/this_like_user_list"

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "friendId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

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

    const v1, 0x7f0d0372

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;->g0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V

    return-void
.end method
