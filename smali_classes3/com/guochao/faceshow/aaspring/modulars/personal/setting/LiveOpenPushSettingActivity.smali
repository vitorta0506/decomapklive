.class public Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/bean/FollowBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;Ljava/lang/String;Lcom/guochao/faceshow/bean/FollowBean;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->i0(Ljava/lang/String;Lcom/guochao/faceshow/bean/FollowBean;I)V

    return-void
.end method

.method private g0(Lcom/guochao/faceshow/bean/FollowBean;)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;Lcom/guochao/faceshow/bean/FollowBean;)V

    return-object v0
.end method

.method private i0(Ljava/lang/String;Lcom/guochao/faceshow/bean/FollowBean;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/FollowBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;

    invoke-direct {v0, p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;Lcom/guochao/faceshow/bean/FollowBean;I)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V

    return-void
.end method

.method public d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V
    .locals 6

    const v0, 0x7f0a04c1

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a0d1c

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0d88

    .line 3
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a05de

    .line 4
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 5
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;ZZZ)V

    .line 6
    invoke-virtual {v3, p3}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 7
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 8
    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/FollowBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/FollowBean;->getStartLivePush()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 10
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 12
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;

    invoke-direct {v0, p0, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;Lcom/guochao/faceshow/bean/FollowBean;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V
    .locals 1

    const p2, 0x7f0a04c1

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->g0(Lcom/guochao/faceshow/bean/FollowBean;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0d1c

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->g0(Lcom/guochao/faceshow/bean/FollowBean;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0071

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const v0, 0x7f1204ce

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0330

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->listAttention:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&currPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&types=0&pageSize=20&systoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-string v2, "userToken"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "currPage"

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "types"

    const-string v2, "0"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "pageSize"

    const-string v2, "20"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

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

    const v1, 0x7f0d024d

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->e0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V

    return-void
.end method
