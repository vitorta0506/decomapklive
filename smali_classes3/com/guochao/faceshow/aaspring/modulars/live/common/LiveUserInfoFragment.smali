.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;


# instance fields
.field public backToLast:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private fBNumber:J

.field focusBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field focusBtnRunnable:Ljava/lang/Runnable;

.field focusSVGA:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private isSlidingEndWard:Z

.field ivMotion:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

.field littleAvatar:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field liveFbCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field liveLikeCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llFb:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llLikeCount:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llLocation:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llLocationAndName:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mLastUserEnterIn:J

.field private mLikeNum:J

.field mLiveFCoinAndLike:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mLoadMoreListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mPendingUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mTIMUserProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHolder:Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;

.field masterName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field nameLy:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field onlineCountText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private pageNo:I

.field rankListMulti:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rankListSingle:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private showLast:Z

.field tvLiveLocation:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvLiveName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->pageNo:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mPendingUser:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtnRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLoadMoreListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->showLast:Z

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;FFLandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->underPoint(FFLandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->toUserHomePageAct(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setUserInfoPadding()V

    return-void
.end method

.method static synthetic access$500(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->isSlidingEndWard:Z

    return p0
.end method

.method static synthetic access$502(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->isSlidingEndWard:Z

    return p1
.end method

.method static synthetic access$600(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->pageNo:I

    return p0
.end method

.method static synthetic access$608(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->pageNo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->pageNo:I

    return v0
.end method

.method static synthetic access$700(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->getAudienceList(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->showLast:Z

    return p0
.end method

.method static synthetic access$802(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->showLast:Z

    return p1
.end method

.method private addFocus()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusSVGA:Landroid/view/View;

    check-cast v1, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v2, 0x7f11000a

    invoke-static {v0, v1, v2}, Lib/a;->a(Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->LIVE:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-static {v0, v1, v2, v3}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private flushUser()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mPendingUser:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v2

    if-lez v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mPendingUser:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->sortList()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private getAudienceList(I)V
    .locals 3

    const-string v0, "tokens/live/newLive/findAudienceList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v1, 0xa

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$l;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private setHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Landroid/view/ViewGroup;)V
    .locals 15
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v8, p0

    move-object/from16 v3, p2

    if-nez v3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p1

    .line 5
    iput-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v2, 0x7f0a091c

    .line 7
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    new-instance v9, Lcom/guochao/faceshow/views/HourRankTextView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/guochao/faceshow/views/HourRankTextView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v9}, Landroid/widget/TextSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f010034

    invoke-virtual {v9, v4, v5}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 11
    invoke-virtual {v9}, Landroid/widget/TextSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f010035

    invoke-virtual {v9, v4, v5}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    const/4 v4, 0x1

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f0a0b47

    .line 13
    invoke-virtual {v9, v5}, Landroid/widget/TextSwitcher;->setId(I)V

    .line 14
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$m;

    invoke-direct {v2, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {v9}, Lcom/guochao/faceshow/views/HourRankTextView;->getOldFactory()Landroid/widget/ViewSwitcher$ViewFactory;

    move-result-object v2

    if-nez v2, :cond_2

    .line 17
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-virtual {v9, v2}, Lcom/guochao/faceshow/views/HourRankTextView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 18
    :cond_2
    invoke-virtual {v9}, Lcom/guochao/faceshow/views/HourRankTextView;->stop()V

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v9, v2}, Lcom/guochao/faceshow/views/HourRankTextView;->setOnScrollListener(Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v2

    const v5, 0x7f12041e

    const/4 v6, -0x1

    if-ne v2, v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v2

    if-ne v2, v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result v2

    if-ne v2, v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 21
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 22
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v2

    const/16 v7, 0xa

    const/16 v10, 0x1e

    if-le v2, v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v2

    if-le v2, v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result v2

    if-le v2, v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v2

    if-le v2, v7, :cond_4

    .line 23
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const v2, 0x7f120af6

    .line 24
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getCountry()Ljava/lang/String;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v12

    if-eq v2, v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v2

    if-ne v2, v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v2

    if-ltz v2, :cond_5

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v12

    if-lt v2, v12, :cond_6

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v2

    goto :goto_0

    .line 29
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v2

    :goto_0
    const/4 v12, 0x0

    goto :goto_2

    .line 30
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v2

    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_8

    if-le v2, v10, :cond_8

    const/4 v2, -0x1

    :cond_8
    if-nez v12, :cond_9

    if-le v2, v7, :cond_9

    const/4 v13, -0x1

    goto :goto_3

    :cond_9
    move v13, v2

    .line 31
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result v14

    if-eq v2, v14, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result v2

    if-ne v2, v6, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v2

    if-ltz v2, :cond_a

    goto :goto_5

    .line 32
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v14

    if-lt v2, v14, :cond_b

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v0

    goto :goto_4

    .line 34
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result v0

    :goto_4
    const/4 v14, 0x0

    goto :goto_6

    .line 35
    :cond_c
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v0

    const/4 v14, 0x1

    :goto_6
    if-eqz v14, :cond_d

    if-le v0, v10, :cond_d

    const/4 v0, -0x1

    :cond_d
    if-nez v14, :cond_e

    if-le v0, v7, :cond_e

    const/4 v2, -0x1

    goto :goto_7

    :cond_e
    move v2, v0

    :goto_7
    if-gtz v13, :cond_f

    if-gtz v2, :cond_f

    .line 36
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_f
    const v0, 0x7f12041f

    const-string v5, ""

    const/4 v6, 0x2

    if-lt v13, v4, :cond_11

    if-gtz v2, :cond_11

    new-array v2, v6, [Ljava/lang/Object;

    if-eqz v12, :cond_10

    goto :goto_8

    .line 37
    :cond_10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getCountry()Ljava/lang/String;

    move-result-object v11

    :goto_8
    aput-object v11, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v9}, Lcom/guochao/faceshow/views/HourRankTextView;->reStartScroll()V

    xor-int/lit8 v0, v12, 0x1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 40
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setOnScrollListener(Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;)V

    goto/16 :goto_b

    :cond_11
    if-lt v2, v4, :cond_13

    if-gtz v13, :cond_13

    const v0, 0x7f120420

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz v14, :cond_12

    goto :goto_9

    .line 41
    :cond_12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v7

    invoke-interface {v7}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getCountry()Ljava/lang/String;

    move-result-object v11

    :goto_9
    aput-object v11, v6, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {p0, v0, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v9}, Lcom/guochao/faceshow/views/HourRankTextView;->reStartScroll()V

    xor-int/lit8 v0, v14, 0x1

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setOnScrollListener(Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;)V

    goto :goto_b

    :cond_13
    xor-int/lit8 v7, v12, 0x1

    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz v12, :cond_14

    move-object v7, v11

    goto :goto_a

    .line 46
    :cond_14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v7

    invoke-interface {v7}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getCountry()Ljava/lang/String;

    move-result-object v7

    :goto_a
    aput-object v7, v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-virtual {p0, v0, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v9}, Lcom/guochao/faceshow/views/HourRankTextView;->reStartScroll()V

    .line 48
    iput-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->showLast:Z

    .line 49
    new-instance v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v3, p2

    move v4, v14

    move-object v5, v11

    move v6, v13

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;ILandroid/view/ViewGroup;ZLjava/lang/String;IZ)V

    invoke-virtual {v9, v10}, Lcom/guochao/faceshow/views/HourRankTextView;->setOnScrollListener(Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;)V

    :goto_b
    return-void
.end method

.method private setUserInfoPadding()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->nameLy:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method private sortList()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private toUserHomePageAct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private underPoint(FFLandroid/view/View;)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr v4, p3

    aget p3, v0, v1

    int-to-float p3, p3

    cmpg-float p3, p3, p1

    if-gez p3, :cond_0

    int-to-float p3, v2

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    aget p1, v0, v3

    int-to-float p1, p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    int-to-float p1, v4

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    return v3

    :cond_0
    return v1
.end method


# virtual methods
.method public addFBNumber(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftBCoinValue()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveFbCount:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public addZanCount()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveLikeCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLikeNum:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLikeNum:J

    .line 3
    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public cancelLocationAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLocationAndName:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->c(Landroid/view/View;)V

    return-void
.end method

.method public checkBackToLast(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->littleAvatar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLastRoomItem()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLastRoomItem(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x42200000    # 40.0f

    .line 7
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40e00000    # 7.0f

    .line 8
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->littleAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$h;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public checkHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListSingle:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListMulti:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Landroid/view/ViewGroup;)V

    :goto_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01b1

    return v0
.end method

.method public getLikeNum()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveLikeCount:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v1

    .line 4
    :cond_1
    :try_start_0
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLikeNum:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public getViewHolder()Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mViewHolder:Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->masterName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mViewHolder:Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mViewHolder:Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;

    return-object v0
.end method

.method public hideBackToLast()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0674

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    :cond_2
    const v0, 0x7f0a0db3

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setUserInfoPadding()V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->ivMotion:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const v1, 0x7f080367

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->ivMotion:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->initVisitorListView()V

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLiveFCoinAndLike:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLiveFCoinAndLike:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->resetData()V

    return-void
.end method

.method protected initVisitorListView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLoadMoreListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;->setOnItemClickListener(Lz9/a;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->C()V

    .line 3
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onFocusEvent(Ly7/e;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ly7/e;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onFocusState(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onFocusState(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "1"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/KitEvent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, p1}, Lcom/guochao/faceshow/aaspring/beans/KitEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setUserInfoPadding()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/KitEvent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, p1}, Lcom/guochao/faceshow/aaspring/beans/KitEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setUserInfoPadding()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLiveFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->C()V

    :cond_0
    return-void
.end method

.method public onPlaySuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLiveFCoinAndLike:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mRecyclerViewUsers:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onQuitLiveRoom(ZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onQuitLiveRoom(ZZ)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onUserEnterIn(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mPendingUser:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mPendingUser:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_6
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setAvatar(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setImg(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setUserId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mPendingUser:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLastUserEnterIn:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_7

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->flushUser()V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLastUserEnterIn:J

    :cond_7
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0432

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a06cc

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0bd4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->toUserHomePageAct(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/ContributionListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "live_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ownerid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->addFocus()V

    :cond_3
    :goto_0
    return-void
.end method

.method public refreshBroadcasterInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/bean/UserBean;->setPendantUrl(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setPendantUrl(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->masterName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/bean/UserBean;->setPendantUrl(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    :goto_2
    return-void
.end method

.method public refreshUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 1
    iget-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    if-eqz p5, :cond_2

    .line 2
    iget-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->clear()V

    .line 3
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    if-eqz p5, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mTIMUserProfiles:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->sortList()V

    .line 7
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/UserInfoAdapter;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :cond_2
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onlineCountText:Landroid/widget/TextView;

    const-string p5, "0"

    if-eqz p4, :cond_4

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p1, p5

    :cond_3
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const-wide/16 v0, 0x0

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "userFB"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveFbCount:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 13
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_8

    move-wide v4, v2

    goto :goto_1

    :cond_8
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 16
    :goto_1
    iget-wide v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J

    cmp-long p1, v6, v4

    if-ltz p1, :cond_9

    cmp-long p1, v4, v2

    if-nez p1, :cond_c

    .line 17
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveFbCount:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_a

    move-object p2, p5

    :cond_a
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmp-long p1, v4, v2

    if-nez p1, :cond_b

    move-wide v4, v0

    .line 18
    :cond_b
    iput-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :cond_c
    :goto_2
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "null"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 20
    :cond_e
    :goto_3
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLikeNum:J

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveLikeCount:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    .line 22
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_f
    return-void
.end method

.method public resetData()V
    .locals 6

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mLikeNum:J

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListMulti:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListSingle:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->masterName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 17
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "userFB"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveFbCount:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_6
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLikeCount:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llFb:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    const/high16 v1, 0x41200000    # 10.0f

    .line 26
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_2

    .line 27
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLikeCount:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public setBroadCasterUserName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->masterName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setFcoinCound(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveFbCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveFbCount:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->fBNumber:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public synthetic setLiveRoomOwnerUserInfo(Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;)V
    .locals 0

    invoke-static {p0, p1}, La7/a;->a(Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;)V

    return-void
.end method

.method public setUserInfoData(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;ZZ)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onPlaySuccess()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->pageNo:I

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getOnlineNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getFcoin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLikeNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->refreshUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p3

    invoke-interface {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setUserInfoPadding()V

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->H()V

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->E(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V

    :cond_3
    return-void
.end method

.method public showLocationAnimator(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveLocation:Landroid/widget/TextView;

    const v1, 0x7f120067

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveLocation:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveName:Landroid/widget/TextView;

    div-int/lit8 v2, v0, 0x2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveInfoContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->containsEmoji(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveInfoContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    div-int/lit8 v0, v0, 0x2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveInfoContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->j:Z

    if-nez v0, :cond_5

    return-void

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLocationAndName:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->tvLiveName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->llLocation:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->g(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public switchPkMode(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListMulti:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListSingle:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->lastResult:Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    :cond_1
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListMulti:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListMulti:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListMulti:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->rankListSingle:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Landroid/view/ViewGroup;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateActivityInfo(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->liveActivityView:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;->getAppActivityGiftList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->F(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateAudienceLiveInfo(Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getOnlineNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getFcoin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLikeNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->refreshUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public updateHeadView(Lp7/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    :cond_0
    return-void
.end method
