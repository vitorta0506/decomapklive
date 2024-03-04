.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 3
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a08ea

    const-string v2, "field \'mPushCloudView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPushCloudView:Landroid/widget/FrameLayout;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0423

    const-string v2, "field \'flWatcherDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->flWatcherDate:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0974

    const-string v1, "field \'mRequestLink\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 6
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00ba

    const-string v2, "field \'mRequestLinkCountTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLinkCountTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0096

    const-string v1, "field \'adsLay\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->adsLay:Landroid/view/View;

    .line 11
    const-class v0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v1, 0x7f0a0a07

    const-string v2, "field \'mLiveScrollToClearScreenView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03c0

    const-string v2, "field \'mTextViewFaceCastId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewFaceCastId:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a042a

    const-string v2, "field \'mLiveViewContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewContainer:Landroid/view/ViewGroup;

    .line 14
    const-class v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const v1, 0x7f0a0def

    const-string v2, "field \'mVideoRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const v0, 0x7f0a0427

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewMaskContainer:Landroid/view/View;

    .line 16
    const-class v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const v1, 0x7f0a0de5

    const-string v2, "field \'mMaskRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    .line 17
    const-class v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const v1, 0x7f0a0742

    const-string v2, "field \'mMaskVideoRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0143

    const-string v2, "field \'mTextViewBigGiftBoxCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewBigGiftBoxCount:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04f6

    const-string v2, "field \'iconBigBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->iconBigBox:Landroid/widget/ImageView;

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a047b

    const-string v2, "field \'mTextViewCountDownGift\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewCountDownGift:Landroid/widget/TextView;

    const v0, 0x7f0a0141

    const-string v1, "field \'mViewGiftBox\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    .line 22
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0144

    const-string v2, "field \'mRunwayMessageViewArea\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    .line 23
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0933

    const-string v2, "field \'rcvGift\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0209

    const-string v1, "field \'clickView\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->clickView:Landroid/view/View;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a066a

    const-string v2, "field \'mTextViewLinkMicUserName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewLinkMicUserName:Landroid/widget/TextView;

    const v0, 0x7f0a0893

    const-string v1, "field \'mPkInfoAreaView\'"

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPkInfoAreaView:Landroid/view/View;

    const v0, 0x7f0a0091

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->giftAndAdsView:Landroid/view/View;

    const v0, 0x7f0a0090

    const-string v1, "field \'mAdsAndActivityView\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mAdsAndActivityView:Landroid/view/View;

    .line 29
    const-class v0, Landroid/view/ViewStub;

    const v1, 0x7f0a07bb

    const-string v2, "field \'musicViewSub\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->musicViewSub:Landroid/view/ViewStub;

    .line 30
    const-class v0, Landroid/view/ViewStub;

    const v1, 0x7f0a02d0

    const-string v2, "field \'dishWheelView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->dishWheelView:Landroid/view/ViewStub;

    const v0, 0x7f0a0aa3

    const-string v1, "field \'smallMiniGameLay\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    .line 32
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a003b

    const-string v2, "field \'mTXCloudVideoViewAcc\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTXCloudVideoViewAcc:Landroid/widget/FrameLayout;

    .line 33
    const-class v0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    const v1, 0x7f0a06b4

    const-string v2, "field \'mPeriscopeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPeriscopeLayout:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    .line 34
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03e8

    const-string v2, "field \'firstRechargeClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeClose:Landroid/widget/ImageView;

    .line 35
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03ec

    const-string v2, "field \'firstRechargeLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cdf

    const-string v2, "field \'tvRechargeDowntownTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->tvRechargeDowntownTime:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03e9

    const-string v2, "field \'firstRechargeCloseVoice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeCloseVoice:Landroid/widget/ImageView;

    .line 38
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03ed

    const-string v2, "field \'firstRechargeLayVoice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ce0

    const-string v2, "field \'tvRechargeDowntownTimeVoice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->tvRechargeDowntownTimeVoice:Landroid/widget/TextView;

    const v0, 0x7f0a0672

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLittleClickView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 42
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->d:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0292

    .line 44
    const-class v1, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    const-string v2, "field \'mIDanmakuView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mIDanmakuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    const v0, 0x7f0a067b

    const-string v1, "field \'mInputArea\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    const v0, 0x7f0a0679

    .line 46
    const-class v1, Landroid/widget/EditText;

    const-string v2, "field \'mEditText\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    const v0, 0x7f0a019a

    const-string v1, "field \'btnSend\' and method \'send\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'btnSend\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->btnSend:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->e:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b0d

    const-string v1, "field \'mViewLiveDanmuSwitch\' and method \'openDanmu\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewLiveDanmuSwitch:Landroid/view/View;

    .line 53
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->f:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ac

    const-string v1, "field \'mGuideDanmu\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mGuideDanmu:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPushCloudView:Landroid/widget/FrameLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->flWatcherDate:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLinkCountTextView:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->adsLay:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewFaceCastId:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewContainer:Landroid/view/ViewGroup;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewMaskContainer:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewBigGiftBoxCount:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->iconBigBox:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewCountDownGift:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->clickView:Landroid/view/View;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewLinkMicUserName:Landroid/widget/TextView;

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPkInfoAreaView:Landroid/view/View;

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->giftAndAdsView:Landroid/view/View;

    .line 25
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mAdsAndActivityView:Landroid/view/View;

    .line 26
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->musicViewSub:Landroid/view/ViewStub;

    .line 27
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->dishWheelView:Landroid/view/ViewStub;

    .line 28
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    .line 29
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTXCloudVideoViewAcc:Landroid/widget/FrameLayout;

    .line 30
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPeriscopeLayout:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    .line 31
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeClose:Landroid/widget/ImageView;

    .line 32
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    .line 33
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->tvRechargeDowntownTime:Landroid/widget/TextView;

    .line 34
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeCloseVoice:Landroid/widget/ImageView;

    .line 35
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    .line 36
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->tvRechargeDowntownTimeVoice:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLittleClickView:Landroid/view/View;

    .line 38
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mIDanmakuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    .line 39
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    .line 40
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    .line 41
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->btnSend:Landroid/widget/ImageView;

    .line 42
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewLiveDanmuSwitch:Landroid/view/View;

    .line 43
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mGuideDanmu:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->c:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->d:Landroid/view/View;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->e:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
