.class public final Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/mine/model/ContributionBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J \u0010\u001b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;",
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;",
        "Lcom/guochao/faceshow/mine/model/ContributionBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "()V",
        "mVideoId",
        "",
        "getMVideoId",
        "()Ljava/lang/String;",
        "setMVideoId",
        "(Ljava/lang/String;)V",
        "convertItem",
        "",
        "holder",
        "position",
        "",
        "item",
        "getLayoutId",
        "loadData",
        "pageNo",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onItemClick",
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
.field private mVideoId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->mVideoId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/ContributionBean;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/mine/model/ContributionBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a04c1

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.views.HeadPortraitView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getNick_name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0dc5

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getTotalPrice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0269

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const v1, 0x7f0a05cd

    .line 5
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0cdb

    .line 6
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7
    new-instance v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v2}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 8
    iget-object v3, p3, Lcom/guochao/faceshow/mine/model/ContributionBean;->user_id:Ljava/lang/String;

    iput-object v3, v2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 9
    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getImg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 10
    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getCountryFlag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 11
    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 12
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    const/4 p3, 0x0

    const/16 v0, 0x8

    const/4 v2, 0x3

    if-ge p2, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 13
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x8

    .line 14
    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 p3, p2, 0x1

    .line 15
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const p1, 0x7f0f00b0

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    const p1, 0x7f0f00af

    .line 17
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    const p1, 0x7f0f00ae

    .line 18
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/guochao/faceshow/mine/model/ContributionBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/ContributionBean;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b3

    return v0
.end method

.method public final getMVideoId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public loadData(I)V
    .locals 2

    const-string p1, "tokens/gift/giftRankingList"

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->mVideoId:Ljava/lang/String;

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "limit"

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity$loadData$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->mVideoId:Ljava/lang/String;

    const v0, 0x7f120093

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0397

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/ContributionBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/mine/model/ContributionBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/mine/model/ContributionBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/ContributionBean;)V

    return-void
.end method

.method public final setMVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;->mVideoId:Ljava/lang/String;

    return-void
.end method
