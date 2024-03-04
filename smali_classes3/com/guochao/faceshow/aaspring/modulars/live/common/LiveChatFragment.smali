.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"

# interfaces
.implements Lu8/b;


# static fields
.field private static final TIME_TO_SHOW_FOCUS_TIP:I = 0x3a98

.field private static final TIME_TO_SHOW_LUCKY_GIFT:I = 0x2bf20

.field private static final TIME_TO_SHOW_SHARE:I = 0x2bf20


# instance fields
.field private PKstate:Z

.field callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field floatImUnread:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private giftPopController:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

.field helloUnReadNum:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public isDelayed:Z

.field public isFirstCustomMsg:Z

.field private isInPictureInPictureMode:Z

.field private lastIMChatOrgiftTime:J

.field public liveChatBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field liveImBtn:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llNewMsg:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAddFocusRunnable:Ljava/lang/Runnable;

.field mAddShareRunnable:Ljava/lang/Runnable;

.field mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

.field mGiftIconTipPopupWindow:Landroid/widget/PopupWindow;

.field mGiftImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field public mLiveBtns:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mLiveMore:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLuckyGiftTipRunnable:Ljava/lang/Runnable;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

.field private mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

.field mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mShowedShareGuide:Z

.field mSpace:Landroid/widget/Space;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field multiGame:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field newMessage:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pkLayoutLive:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private svgaParser:Lcom/opensource/svgaplayer/SVGAParser;

.field private tip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->isInPictureInPictureMode:Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f1209ad

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->tip:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->sendGiftSuccessful(ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->checkLuckyGiftResult(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V

    return-void
.end method

.method private checkLuckyGiftResult(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->getLuckyGiftResults()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;->getLuckyGiftResults()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setLuckyGiftResults(Ljava/util/List;)V

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getCurrentReward()I

    move-result p3

    if-lez p3, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getTotalReward()I

    move-result p3

    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->getTotalSendNumber()I

    move-result p5

    if-le p3, p5, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->playRewardSound()V

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getTotalRewardDiamonds()I

    move-result p2

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .line 10
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lp9/a;->b(I)I

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {p1, p4}, Ld9/e;->onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private downloadSvgaIfNeed(Ljava/lang/String;)V
    .locals 5

    const-string v0, "gift_btn"

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playFile(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$k;

    invoke-direct {v4, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ljava/io/File;)V

    invoke-interface {v0, v1, p1, v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->a(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method private onShowKeyboard(Ly7/j;)V
    .locals 4

    .line 1
    iget v0, p1, Ly7/j;->b:I

    .line 2
    iget p1, p1, Ly7/j;->c:I

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-gtz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveBtns:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveBtns:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-gtz v0, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z2(I)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j3(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private playRewardSound()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->stopPlay()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110024

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendGiftSuccessful(ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->refreshDiamonds()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->g1(I)V

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {p1, p2}, Ld9/e;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    instance-of p3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p3, :cond_2

    .line 8
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    .line 9
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$b;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method private showFragment(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    const-string v1, "gift"

    if-eqz v0, :cond_7

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_6

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const v2, 0x7f13000b

    const/4 v3, 0x1

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v4

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVipInfo()Lb8/g;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 16
    invoke-static/range {v2 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getInstance(IIZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    goto :goto_0

    :cond_4
    const v2, 0x7f13000b

    const/4 v3, 0x1

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVipInfo()Lb8/g;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-static/range {v2 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getInstance(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->showGiftPopContriller()V

    goto/16 :goto_2

    .line 20
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->showGiftPopContriller()V

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s:Z

    if-nez v0, :cond_8

    return-void

    .line 23
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_9

    const v2, 0x7f13000b

    const/4 v3, 0x1

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v4

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z2()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVipInfo()Lb8/g;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 28
    invoke-static/range {v2 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getInstance(IIZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    goto :goto_1

    :cond_9
    const v2, 0x7f13000b

    const/4 v3, 0x1

    .line 29
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVipInfo()Lb8/g;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-static/range {v2 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getInstance(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    goto :goto_1

    :cond_a
    const v2, 0x7f13000b

    const/4 v3, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVipInfo()Lb8/g;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-static/range {v2 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getInstance(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    .line 31
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private showGiftPopContriller()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->giftPopController:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->giftPopController:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    const-string v1, "live"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->T1(Ljava/lang/String;)Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->giftPopController:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showInputFragment(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 4
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveBtns:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0, p1}, Ld9/g;->M0(Ljava/lang/String;)V

    return-void
.end method

.method private showNewMessageAnimation()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->llNewMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private stopPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusMessage()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getIsAttention()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v2, "TYPE_CUSTOM_MSG"

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v6

    iget-object v6, v6, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f120aa5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 8
    invoke-virtual {p0, v6, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setRichContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f1209ad

    new-array v4, v4, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v5

    iget-object v5, v5, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lp7/e;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getIsAttention()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setIsAttention(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getMvpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setMvpUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 20
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_4

    .line 22
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v3, "LIVE_CUSTOM_MSG"

    invoke-direct {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->h(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v3, "LOCAL_LIVE_ADD_SHARE"

    invoke-direct {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->h(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_4

    .line 26
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v3, "LOCAL_VOICE_ROOM_WELCOME"

    invoke-direct {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->h(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public addPrivateShareMessage()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mShowedShareGuide:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v3, "LOCAL_LIVE_BROADCASTER_SHARE"

    invoke-direct {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->h(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mShowedShareGuide:Z

    return-void
.end method

.method public addShareMessage(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mShowedShareGuide:Z

    if-eqz p1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getShareUrl()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz p1, :cond_4

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v2, "LOCAL_LIVE_BROADCASTER_SHARE"

    invoke-direct {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->h(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_4
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mShowedShareGuide:Z

    return-void
.end method

.method public checkHelloReadDot()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->helloUnReadNum:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigSwitch()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getHelloAnchorSwitch()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_LIVE_CHAT_HELLO"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->helloUnReadNum:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->helloUnReadNum:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public dismissInvite()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t2()V

    :cond_0
    return-void
.end method

.method public getApplyPkSuccess()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V1:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01a7

    return v0
.end method

.method public giftOnclick(I)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->lastIMChatOrgiftTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->lastIMChatOrgiftTime:J

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->i0()V

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->showFragment(I)V

    return-void
.end method

.method public handleEvent(Ly7/g;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p1, Ly7/g;->a:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public initPkIcon()V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->pkLayoutLive:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getGameSwitch()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getLiveGameData()Ljava/util/List;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->hasEnableGame()Z

    move-result v1

    :cond_2
    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->r(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->multiGame:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->r(I)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->r(I)V

    .line 13
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->multiGame:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->n(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->k()V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder$d;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewItemDecoration;

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewItemDecoration;-><init>(FI)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->svgaParser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getRecommendRechargeActivityLiveIcon()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->checkHelloReadDot()V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    const v4, 0x7f11000d

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    goto :goto_1

    :cond_2
    const-string v1, "svga"

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->downloadSvgaIfNeed(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "png"

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftImageView:Landroid/widget/ImageView;

    const v4, 0x7f0f0137

    invoke-static {v1, p1, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftImageView:Landroid/widget/ImageView;

    invoke-static {v1, p1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 27
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->U5:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->callingBtn:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;->bindCallingBtn(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/views/SvgaImageViewV2;)V

    .line 28
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result p1

    if-nez p1, :cond_7

    .line 29
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-direct {p1, v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ld9/g;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    .line 30
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 33
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    .line 36
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz p1, :cond_a

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->g0(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 38
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-static {p1, v0}, Loa/h;->a(Landroidx/recyclerview/widget/RecyclerView;I)Loa/b;

    .line 39
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->reset()V

    .line 40
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->setOnBottomCallback(Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView$a;)V

    .line 41
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 42
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getGameLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public keyboardHeight(Ly7/j;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onShowKeyboard(Ly7/j;)V

    return-void
.end method

.method public liveShareClicked(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getShareUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShareType(I)V

    if-eqz p1, :cond_3

    const v2, 0x7f1204ea

    goto :goto_1

    :cond_3
    const v2, 0x7f1204eb

    .line 8
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setImgUrl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShortUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    const p1, 0x7f1204ec

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const p1, 0x7f1204ed

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->g2(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$l;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->setOnSharePlatformClickListener(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$m;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "share"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->addInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->showInputFragment(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->J()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftIconTipPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->stopPlay()V

    return-void
.end method

.method public onLiveFinish(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onLiveFinish(ILjava/lang/String;)V

    return-void
.end method

.method public onLiveFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onNewMessageClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->newMessage:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->isInPictureInPictureMode:Z

    return-void
.end method

.method public onPlaySuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->liveImBtn:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;->checkLiveFloatIM(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TYPE_ADD_GROUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TYPE_CUSTOM_MSG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->newMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->showNewMessageAnimation()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->newMessage:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->isFirstCustomMsg:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->tip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LIVE_CUSTOM_MSG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->containsAllEmoji(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->isDelayed:Z

    .line 13
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->isFirstCustomMsg:Z

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_6

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto :goto_1

    .line 16
    :cond_3
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->isDelayed:Z

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-nez v0, :cond_5

    return-void

    .line 19
    :cond_5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    .line 20
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->checkHelloStarMessage(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public synthetic onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lu8/a;->b(Lu8/b;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V

    return-void
.end method

.method public onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;IZI",
            "Lcom/guochao/faceshow/gift/SendGiftCallBack;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    .line 1
    iget-object v0, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    instance-of v0, v0, Ld9/c;

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    const/4 v12, 0x0

    .line 2
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 3
    iget-object v0, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    move/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface/range {v0 .. v5}, Ld9/g;->z0(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v12, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result v1

    invoke-direct {v12, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;-><init>(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setVoiceRoom(Z)V

    move/from16 v0, p7

    .line 6
    invoke-virtual {v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setComboId(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 10
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setVoiceIds(Ljava/util/HashMap;)V

    .line 12
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v2

    .line 15
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v3

    sget-object v4, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloStarGift()Lcom/guochao/faceshow/aaspring/beans/GiftBagNum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/GiftBagNum;->getGiftId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 16
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    const/16 v2, 0x3d

    const/4 v4, 0x0

    .line 17
    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_9

    .line 18
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v13, v13, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    const/4 v2, 0x2

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 20
    :goto_4
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 21
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 22
    :cond_7
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_8

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v11, 0x1

    :cond_8
    const/16 v2, 0xf

    .line 23
    :cond_9
    :goto_5
    invoke-virtual {v12, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendType(I)V

    .line 24
    iget-object v2, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v2

    if-nez v2, :cond_a

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v2, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_a
    invoke-virtual {v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setToUserIds(Ljava/util/List;)V

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setBusinessId(Ljava/lang/String;)V

    if-eqz p6, :cond_b

    const-string v0, "1"

    .line 29
    invoke-virtual {v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v0, "0"

    .line 30
    invoke-virtual {v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    .line 31
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSinglePrice(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v12, v10}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendNumber(I)V

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v10, v10, v0

    .line 34
    invoke-static/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 35
    invoke-static {v8, v9, v12, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createGiftMessageModel(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;ZI)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    if-eqz v1, :cond_c

    .line 37
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->checkLiveMessageModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 38
    :cond_c
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setSelfSend(Z)V

    .line 39
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 40
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v1, v9}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setGiftSendList(Ljava/util/List;)V

    .line 41
    :cond_d
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-interface {v1, v2}, Ld9/e;->onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    if-eqz v11, :cond_11

    .line 42
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v1, v0}, Ld9/g;->addFBNumber(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    goto :goto_7

    .line 43
    :cond_e
    invoke-static {v8, v9, v12, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createGiftMessageModel(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;ZI)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    .line 44
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    if-eqz v1, :cond_f

    .line 45
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->checkLiveMessageModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 46
    :cond_f
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setSelfSend(Z)V

    .line 47
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 48
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v1, v9}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setGiftSendList(Ljava/util/List;)V

    .line 49
    :cond_10
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v1, v0}, Ld9/e;->onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    if-eqz v11, :cond_11

    .line 50
    iget-object v1, v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v1, v0}, Ld9/g;->addFBNumber(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_11
    :goto_7
    move-object v9, v0

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result v11

    new-instance v13, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$m;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p3

    move v4, v10

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/gift/SendGiftCallBack;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    new-instance v14, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object v4, v9

    move-object v5, v12

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;I)V

    invoke-static {p0, v11, v12, v13, v14}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->checkSendGiftType(Landroidx/lifecycle/LifecycleOwner;ILcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method public onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getGameSwitch()I

    move-result p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getGameSwitch()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->initPkIcon()V

    :cond_0
    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->PKstate:Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPkEnableFlag()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 6
    :goto_1
    invoke-static {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->e2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ld9/g;ZZ)Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->showInputFragment(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->f()V

    return-void
.end method

.method public refreshChatMargin(ZZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x40e00000    # 7.0f

    const v2, 0x7f07010d

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mSpace:Landroid/widget/Space;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, v3}, Landroid/widget/Space;->setVisibility(I)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    const v5, 0x7f07014f

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    if-eqz p2, :cond_4

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    goto :goto_0

    :cond_4
    const/high16 p2, 0x42200000    # 40.0f

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    :goto_0
    add-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_7

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mSpace:Landroid/widget/Space;

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p1, v3}, Landroid/widget/Space;->setVisibility(I)V

    .line 11
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 12
    :cond_7
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 13
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 14
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mSpace:Landroid/widget/Space;

    if-eqz p1, :cond_8

    .line 16
    invoke-virtual {p1, v4}, Landroid/widget/Space;->setVisibility(I)V

    :cond_8
    :goto_1
    if-eqz p3, :cond_a

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mSpace:Landroid/widget/Space;

    if-eqz p1, :cond_9

    .line 18
    invoke-virtual {p1, v3}, Landroid/widget/Space;->setVisibility(I)V

    .line 19
    :cond_9
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/high16 p2, 0x41700000    # 15.0f

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz p1, :cond_b

    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method

.method public refreshPkBtn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->refreshPkBtn()V

    :cond_1
    return-void
.end method

.method public removeFocusRunnable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mAddFocusRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->liveImBtn:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;->checkLiveFloatIM(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->liveImBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->l()V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120520

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createNoticModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isLaunchFromFloatWindow()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v5, 0x0

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120471

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserType()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v3, "LIVE_ADD_GROUP"

    const-string v4, "TYPE_ADD_GROUP"

    invoke-static/range {v3 .. v11}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createChatMessage(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/bean/UserBean;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v4, :cond_2

    .line 15
    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 16
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$c;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mAddShareRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$d;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mAddFocusRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->addShareMessage(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->initPkIcon()V

    .line 21
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAdministrator()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveMore:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 24
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveMore:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshPkBtn()V

    .line 26
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public resetVoiceRoomChatList()V
    .locals 0

    return-void
.end method

.method public restoreMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFinalResultSpannableString(Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setMoreBtn(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveMore:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveMore:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setPkBtnVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->o(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->setPkBtnVisibility(Z)V

    :cond_1
    return-void
.end method

.method public setPkLoadingState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->p(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->setPkLoadingState(Z)V

    :cond_1
    return-void
.end method

.method public setPkState(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->PKstate:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPkHolder:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutHolder;->q(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mPlayBottomDialogFragment:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->setPkState(Z)V

    :cond_1
    return-void
.end method

.method public showGift(Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->lastIMChatOrgiftTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->lastIMChatOrgiftTime:J

    .line 3
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->f()V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->showFragment(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 7
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mTextViewUserGuideGift:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mTextViewUserGuideGift:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->b6:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_GIFT_ICON_CLICK_TIPS"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showMore(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    instance-of p1, p1, Ld9/c;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->helloUnReadNum:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_LIVE_CHAT_HELLO"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    check-cast p1, Ld9/c;

    invoke-interface {p1}, Ld9/c;->e1()V

    :cond_1
    return-void
.end method

.method public startCalling(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 3
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->startCalling(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    :cond_0
    return-void
.end method

.method public startIMChat(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->lastIMChatOrgiftTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->f()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r2()V

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->lastIMChatOrgiftTime:J

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 9
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 10
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "live_im_float_chat_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    return-void
.end method
