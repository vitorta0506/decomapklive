.class public abstract Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ld9/g;
.implements Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;
.implements Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;
.implements Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;
.implements Lc8/b$c;
.implements Lcom/guochao/faceshow/aaspring/manager/im/a$g;
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$a;
.implements Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;
.implements Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;
.implements Lp9/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$u0;,
        Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$v0;,
        Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;,
        Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$TimeoutReceiver;
    }
.end annotation


# static fields
.field public static final K5:Lcom/google/gson/Gson;

.field public static final L5:[Ljava/lang/String;


# instance fields
.field private final A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

.field public B:Landroid/os/Handler;

.field protected B3:Ld9/a;

.field private B5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

.field public C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

.field protected C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

.field private C5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

.field protected final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;",
            ">;"
        }
    .end annotation
.end field

.field protected D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

.field private D5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

.field protected final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;",
            ">;"
        }
    .end annotation
.end field

.field protected E4:Z

.field private E5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;

.field protected F:Lcom/guochao/faceshow/views/g;

.field protected F4:J

.field private F5:J

.field protected G:I

.field protected G4:Ljava/lang/String;

.field G5:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;

.field protected H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

.field protected H4:Z

.field public H5:Landroid/widget/PopupWindow;

.field public I:Z

.field I4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

.field public I5:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

.field protected final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field protected J4:I

.field private final J5:Lcom/guochao/faceshow/views/g;

.field protected K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation
.end field

.field protected K4:Landroid/view/ViewGroup$MarginLayoutParams;

.field protected L:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

.field protected L4:Ljava/lang/String;

.field protected M:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;

.field protected M4:Ljava/lang/String;

.field protected N:J

.field protected N4:J

.field protected O:J

.field protected O4:J

.field protected P:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;

.field public P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Q:Z

.field protected Q4:Z

.field public R:Z

.field private R4:J

.field protected S4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld9/m;",
            ">;"
        }
    .end annotation
.end field

.field protected T4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

.field protected U4:Z

.field public V1:Z

.field protected V2:Z

.field V3:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$TimeoutReceiver;

.field private V4:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

.field private W4:J

.field public X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

.field public Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

.field public Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

.field public a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public a1:Z

.field public a2:Z

.field a5:I

.field protected adsLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field b:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

.field b5:I

.field btnSend:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected c:Z

.field protected c5:Z

.field clickView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected d:Z

.field public d5:J

.field dishWheelView:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected e:Landroid/view/View;

.field protected e5:Ljava/lang/String;

.field protected f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

.field f5:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

.field firstRechargeClose:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field firstRechargeCloseVoice:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected firstRechargeLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public firstRechargeLayVoice:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected flWatcherDate:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;

.field protected g5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation
.end field

.field public giftAndAdsView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected h:I

.field private final h5:Ljava/lang/Runnable;

.field protected i:Z

.field private final i5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field iconBigBox:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

.field j5:Landroid/view/animation/LinearInterpolator;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation
.end field

.field k5:Ljava/lang/Runnable;

.field public l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l5:Z

.field protected m:J

.field protected m5:Ljava/lang/Runnable;

.field public mAdsAndActivityView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGuideDanmu:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIDanmakuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mInputArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mLittleClickView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mLiveViewContainer:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mLiveViewMaskContainer:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPeriscopeLayout:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mPkInfoAreaView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mPushCloudView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mRequestLink:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mRequestLinkCountTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mRunwayMessageViewArea:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTXCloudVideoViewAcc:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewBigGiftBoxCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewCountDownGift:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mTextViewFaceCastId:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTextViewLinkMicUserName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mViewGiftBox:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewLiveDanmuSwitch:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field musicViewSub:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected n:J

.field protected n5:Ljava/lang/String;

.field protected o:J

.field protected o5:Ljava/lang/String;

.field protected p:J

.field p5:Z

.field protected q:J

.field protected q5:Ljava/lang/String;

.field protected r:Z

.field public r5:Z

.field protected rcvGift:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected s:Z

.field protected s5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field public smallMiniGameLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected t:I

.field t5:Ljava/lang/Runnable;

.field tvRechargeDowntownTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRechargeDowntownTimeVoice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field u:Ljava/lang/String;

.field protected u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

.field protected v:Z

.field protected v5:J

.field protected w:Lsa/c;

.field protected w5:Z

.field protected x:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

.field private x5:Z

.field public y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

.field private y5:Z

.field public z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

.field z5:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K5:Lcom/google/gson/Gson;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L5:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x80
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m:J

    .line 5
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n:J

    .line 6
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->o:J

    .line 7
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p:J

    .line 8
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q:J

    const/4 v3, 0x0

    .line 9
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r:Z

    .line 10
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    .line 11
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A:Landroid/util/SparseArray;

    .line 12
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    .line 13
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    .line 14
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E:Ljava/util/List;

    .line 15
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K:Ljava/util/List;

    .line 18
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O:J

    .line 19
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V1:Z

    .line 20
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    .line 21
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$TimeoutReceiver;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$TimeoutReceiver;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V3:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$TimeoutReceiver;

    .line 22
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E4:Z

    .line 23
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H4:Z

    .line 24
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q4:Z

    .line 25
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->U4:Z

    .line 26
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    .line 27
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b5:I

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    .line 29
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h5:Ljava/lang/Runnable;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i5:Ljava/util/List;

    .line 31
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j5:Landroid/view/animation/LinearInterpolator;

    .line 32
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k5:Ljava/lang/Runnable;

    .line 33
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l5:Z

    .line 34
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$q;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m5:Ljava/lang/Runnable;

    .line 35
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p5:Z

    .line 36
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t5:Ljava/lang/Runnable;

    .line 37
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x5:Z

    .line 38
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y5:Z

    .line 39
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$c0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$c0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z5:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G5:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;

    .line 41
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o0;

    const-wide/32 v4, 0x7fffffff

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;JJ)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J5:Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method private C3(Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUserSpeech()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveSpeechOperationLogVo()Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveSpeechOperationLogVo()Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;->getReasonContentLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMute()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getForbiddenMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "showDanmu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->isMVPDanmuOn()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 10
    :goto_2
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->hasKeyword(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 11
    sget-object v3, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v3}, Lcom/guochao/faceshow/signin/SigninManager;->addLiveMessageCount()V

    .line 12
    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createTextModel(Ljava/lang/String;ZZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$n0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$n0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-nez p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_7
    return-void

    :cond_8
    :goto_3
    const p1, 0x7f120510

    .line 17
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void
.end method

.method private D2()V
    .locals 3

    const-string v0, "tokens/live/invite/cancel/arena"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 2
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancelUserId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$p;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private D3(Landroid/graphics/drawable/Drawable;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f5:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    const-string v0, "0"

    .line 2
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 3
    move-object v0, p2

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setResource(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;-><init>()V

    const-string v0, "5"

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q2()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    :cond_1
    return-void
.end method

.method private F2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->musicViewSub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$r0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$r0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->setOnPlayMusicAnimListener(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$f;)V

    :cond_0
    return-void
.end method

.method private H2()V
    .locals 3

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_LIVE_DANMU"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mGuideDanmu:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->btnSend:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "showDanmu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->isMVPDanmuOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewLiveDanmuSwitch:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$l0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$l0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$m0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$m0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private H3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 10

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    const/4 v5, 0x0

    .line 2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;

    if-eqz p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k5:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private J2(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    const-string v3, "2"

    invoke-interface {v2, p1, v3, p2}, Ld9/e;->onPlayMusicAnim(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private M2(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic O2(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f5:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    :goto_0
    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveRoomId(Ljava/lang/String;)V

    .line 11
    instance-of v2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    if-eqz v2, :cond_5

    .line 12
    move-object v3, p1

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    .line 13
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTrackType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoom(Z)V

    .line 14
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveRoomId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getLiveUserImg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getLiveUserImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveCoverImg(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getLiveFlow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStreamUrl(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setChatGroupId(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setGroupId(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserId(Ljava/lang/String;)V

    const-string v3, "1"

    .line 22
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_5
    instance-of v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    if-eqz v3, :cond_6

    .line 24
    move-object v3, p1

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;->getLiveUserImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveCoverImg(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;->getLiveFlow()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStreamUrl(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setGroupId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;->getLiveType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    .line 29
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 30
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_8

    .line 33
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLastRoomItem(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    :cond_8
    if-eqz v2, :cond_9

    .line 35
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "tokens/live/treasure/click/track"

    .line 36
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTrackId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 37
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getTrackType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "trackType"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_9
    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R2()V

    return-void
.end method

.method private synthetic P2(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1204dd

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1204d8

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic Q2(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    const v1, 0x7f0a045e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->V()V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic R2()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w5:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A3(Z)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic S2(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    aget v2, p1, v1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v1, p1, v1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    aget v3, p1, v2

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget p1, p1, v2

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O2(Landroid/view/View;)V

    return-void
.end method

.method private synthetic T2(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    aget v2, p1, v1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v1, p1, v1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    aget v3, p1, v2

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget p1, p1, v2

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showDialog(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    return-void
.end method

.method public static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T2(Landroid/view/View;)V

    return-void
.end method

.method private U3()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J2(Ljava/lang/String;I)V

    return-void
.end method

.method private V3()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J5:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->U3()V

    return-void
.end method

.method public static W2(Landroid/content/Context;ZZZZ)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveKickOutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x20000000

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "isBroadcaster"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "isVVip"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "isOfficial"

    .line 5
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "isBlacked"

    .line 6
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C3(Z)V

    return-void
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y5:Z

    return p1
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x5:Z

    return p0
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x5:Z

    return p1
.end method

.method private a4()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V3:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$TimeoutReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h5:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/graphics/drawable/Drawable;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D3(Landroid/graphics/drawable/Drawable;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-void
.end method

.method static synthetic d2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i5:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D2()V

    return-void
.end method

.method static synthetic f2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    return-object p1
.end method

.method private f4(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->z(Ljava/util/List;J)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->z(Ljava/util/List;J)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v0, :cond_2

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->z(Ljava/util/List;J)V

    .line 7
    :cond_2
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d5:J

    return-void
.end method

.method private getList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld9/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ld9/e;

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld9/e;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 7
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private h2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a069b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method private i2()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    :goto_0
    const v0, 0x7f0a0dad

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getOnlineNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFcoin()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLikeNum()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a1:Z

    invoke-virtual/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->refreshUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    return-void
.end method

.method private o3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$n;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/TXIMUtils;->quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    :cond_0
    return-void
.end method

.method private p2(Landroid/view/ViewGroup$MarginLayoutParams;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    if-eqz v0, :cond_1

    const/high16 v0, 0x43990000    # 306.0f

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v1, 0x429c0000    # 78.0f

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v1, v1

    sub-float/2addr v2, v1

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    .line 6
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const p2, 0x800003

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-void
.end method

.method private r3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewLinkMicUserName:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z3()V

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    if-eqz v0, :cond_5

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewLinkMicUserName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n5:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->o5:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewLinkMicUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLittleClickView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, p1, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshChatMargin(ZZZ)V

    goto :goto_3

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z3()V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->n()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshChatMargin(ZZZ)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z3()V

    :cond_8
    :goto_3
    return-void
.end method

.method private z3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLittleClickView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n5:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->o5:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewLinkMicUserName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewLinkMicUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A2()Lcom/guochao/pusher/GCLivePusher;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->pusher()Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    return-object v0
.end method

.method protected A3(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/b;->h(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->musicViewSub:Landroid/view/ViewStub;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_8

    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w5:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFullScreenActivity()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F2()V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$p0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$p0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F2()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$q0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$q0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 13
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p1, v1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->x(ZZ)V

    .line 15
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz p1, :cond_8

    .line 16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->u()V

    :cond_8
    :goto_2
    return-void

    .line 17
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz p1, :cond_a

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->x(ZZ)V

    :cond_a
    return-void
.end method

.method public B2()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V4:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V4:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V4:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method public B3()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e5:Ljava/lang/String;

    return-void
.end method

.method public C0(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createCancelApplyLinkMicModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method public C1(Ld9/k;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a068e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    return-void
.end method

.method public C2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 24
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_31

    .line 2
    :cond_0
    iget-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S4:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/m;

    .line 5
    invoke-interface {v2, v8, v0}, Ld9/m;->y(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 6
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "LIVE_VOICE_HAPPY_RUNWAY"

    const-string v6, "LIVE_BEGIN_PK"

    const-string v7, "LIVE_PK_RESULT"

    const-string v9, "LIVE_LUCKY_REMOTE_ROUND_V_COIN"

    const-string v10, "LIVE_RUNWAY_LUCKY_MSG_V2"

    const-string v11, "LIVE_VOICE_RUNWAY_MSG"

    const-string v12, "MVP_RECOMMEND_IM_LOCK_SUCCESS"

    const-string v13, "LIVE_HAPPY_RUNWAY"

    const-string v14, "LIVE_HELLO_JOIN_GROUP"

    const-string v15, "RECOMMEND_LOCK_SUCCESS"

    const-string v2, "LIVE_PK_MERGE_SUCCESS"

    move/from16 v16, v1

    const/4 v1, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_1
    const/4 v3, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "LIVE_VOICE_RUNWAY_LUCKY_MSG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x4d

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/16 v3, 0x4c

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "LIVE_LUCKY_REMOTE_CANCEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/16 v3, 0x4b

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "LIVE_GET_URL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/16 v3, 0x4a

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "LIVE_LINKMIC_HANGUP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/16 v3, 0x49

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "LIVE_UPDATE_PK_INFO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v3, 0x48

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "LIVE_LEAVE_PK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    const/16 v3, 0x47

    goto/16 :goto_2

    :sswitch_7
    const-string v4, "LIVE_RUNWAY_MSG_V2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    const/16 v3, 0x46

    goto/16 :goto_2

    :sswitch_8
    const-string v4, "LIVE_CHANGE_PK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_1

    :cond_d
    const/16 v3, 0x45

    goto/16 :goto_2

    :sswitch_9
    const-string v4, "LIVE_LINKMIC_CANCEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_1

    :cond_e
    const/16 v3, 0x44

    goto/16 :goto_2

    :sswitch_a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v3, 0x43

    goto/16 :goto_2

    :sswitch_b
    const-string v4, "LIVE_LUCKY_REMOTE_REMOVE_V_COIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v3, 0x42

    goto/16 :goto_2

    :sswitch_c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0x41

    goto/16 :goto_2

    :sswitch_d
    const-string v4, "LIVE_SCREENSHOT_BTN_SWITCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v3, 0x40

    goto/16 :goto_2

    :sswitch_e
    const-string v4, "LIVE_ADD_GROUP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v3, 0x3f

    goto/16 :goto_2

    :sswitch_f
    const-string v4, "LIVE_TREASURE_MSG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v3, 0x3e

    goto/16 :goto_2

    :sswitch_10
    const-string v4, "LIVE_HOUR_RANK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v3, 0x3d

    goto/16 :goto_2

    :sswitch_11
    const-string v4, "LIVE_PUSH_CHECH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v3, 0x3c

    goto/16 :goto_2

    :sswitch_12
    const-string v4, "LIVE_CUSTOM_MSG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v3, 0x3b

    goto/16 :goto_2

    :sswitch_13
    const-string v4, "LIVE_RESET_TITLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v3, 0x3a

    goto/16 :goto_2

    :sswitch_14
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v3, 0x39

    goto/16 :goto_2

    :sswitch_15
    const-string v4, "LIVE_UPDATE_LINKMIC_INFO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v3, 0x38

    goto/16 :goto_2

    :sswitch_16
    const-string v4, "LIVE_PK_INVITER_PLAY_SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v3, 0x37

    goto/16 :goto_2

    :sswitch_17
    const-string v4, "LIVE_UPDATE_ACTIVITY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v3, 0x36

    goto/16 :goto_2

    :sswitch_18
    const-string v4, "LIVE_UPDATE_LIVEINFO_V2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v3, 0x35

    goto/16 :goto_2

    :sswitch_19
    const-string v4, "LIVE_UPDATE_ACTIVITY_V2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v3, 0x34

    goto/16 :goto_2

    :sswitch_1a
    const-string v4, "LIVE_LINKMIC_MICMODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v3, 0x33

    goto/16 :goto_2

    :sswitch_1b
    const-string v4, "LIVE_LINKMIC_MICLOCK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v3, 0x32

    goto/16 :goto_2

    :sswitch_1c
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v3, 0x31

    goto/16 :goto_2

    :sswitch_1d
    const-string v4, "LIVE_LINKMIC_START_MERGE_STREAM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v3, 0x30

    goto/16 :goto_2

    :sswitch_1e
    const-string v4, "LIVE_SCREEN_SHOT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v3, 0x2f

    goto/16 :goto_2

    :sswitch_1f
    const-string v4, "LIVE_SEND_GIFT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v3, 0x2e

    goto/16 :goto_2

    :sswitch_20
    const-string v4, "LIVE_RUNWAY_MSG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v3, 0x2d

    goto/16 :goto_2

    :sswitch_21
    const-string v4, "LIVE_LUCKY_REMOTE_JOIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_1

    :cond_26
    const/16 v3, 0x2c

    goto/16 :goto_2

    :sswitch_22
    const-string v4, "LIVE_LUCKY_REMOTE_JOIN_V_COIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_1

    :cond_27
    const/16 v3, 0x2b

    goto/16 :goto_2

    :sswitch_23
    const-string v4, "LIVE_REMOVE_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_1

    :cond_28
    const/16 v3, 0x2a

    goto/16 :goto_2

    :sswitch_24
    const-string v4, "LIVE_LUCKY_REMOTE_READY_V_COIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_1

    :cond_29
    const/16 v3, 0x29

    goto/16 :goto_2

    :sswitch_25
    const-string v4, "LIVE_LUCKY_REMOTE_WIN_V_COIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_1

    :cond_2a
    const/16 v3, 0x28

    goto/16 :goto_2

    :sswitch_26
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_1

    :cond_2b
    const/16 v3, 0x27

    goto/16 :goto_2

    :sswitch_27
    const-string v4, "LIVE_RUNWAY_LUCKY_MSG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_1

    :cond_2c
    const/16 v3, 0x26

    goto/16 :goto_2

    :sswitch_28
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_1

    :cond_2d
    const/16 v3, 0x25

    goto/16 :goto_2

    :sswitch_29
    const-string v4, "LIVE_UPDATE_PK_COINS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_1

    :cond_2e
    const/16 v3, 0x24

    goto/16 :goto_2

    :sswitch_2a
    const-string v4, "LOCAL_GROUP_DISSMISS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_1

    :cond_2f
    const/16 v3, 0x23

    goto/16 :goto_2

    :sswitch_2b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_1

    :cond_30
    const/16 v3, 0x22

    goto/16 :goto_2

    :sswitch_2c
    const-string v4, "LIVE_LINKMIC_RESPONSE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto/16 :goto_1

    :cond_31
    const/16 v3, 0x21

    goto/16 :goto_2

    :sswitch_2d
    const-string v4, "LIVE_VOLUME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_1

    :cond_32
    const/16 v3, 0x20

    goto/16 :goto_2

    :sswitch_2e
    const-string v4, "LIVE_CALLING_BTN_SWITCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_1

    :cond_33
    const/16 v3, 0x1f

    goto/16 :goto_2

    :sswitch_2f
    const-string v4, "LIVE_LIKE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_1

    :cond_34
    const/16 v3, 0x1e

    goto/16 :goto_2

    :sswitch_30
    const-string v4, "GAME_DION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_1

    :cond_35
    const/16 v3, 0x1d

    goto/16 :goto_2

    :sswitch_31
    const-string v4, "HOUR_RANK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_1

    :cond_36
    const/16 v3, 0x1c

    goto/16 :goto_2

    :sswitch_32
    const-string v4, "LIVE_BAN_TALK_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_1

    :cond_37
    const/16 v3, 0x1b

    goto/16 :goto_2

    :sswitch_33
    const-string v4, "LIVE_EVENT_ANIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_1

    :cond_38
    const/16 v3, 0x1a

    goto/16 :goto_2

    :sswitch_34
    const-string v4, "LIVE_LUCKY_REMOTE_START_V_COIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_1

    :cond_39
    const/16 v3, 0x19

    goto/16 :goto_2

    :sswitch_35
    const-string v4, "LIVE_LUCKY_REMOTE_WIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_1

    :cond_3a
    const/16 v3, 0x18

    goto/16 :goto_2

    :sswitch_36
    const-string v4, "LIVE_UPDATE_LIVEINFO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_1

    :cond_3b
    const/16 v3, 0x17

    goto/16 :goto_2

    :sswitch_37
    const-string v4, "LIVE_PK_INVITED_PLAY_SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_1

    :cond_3c
    const/16 v3, 0x16

    goto/16 :goto_2

    :sswitch_38
    const-string v4, "LIVE_LINKMIC_VOICE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_1

    :cond_3d
    const/16 v3, 0x15

    goto/16 :goto_2

    :sswitch_39
    const-string v4, "LIVE_LINKMIC_VIDEO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_1

    :cond_3e
    const/16 v3, 0x14

    goto/16 :goto_2

    :sswitch_3a
    const-string v4, "LIVE_LINKMIC_MIXED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_1

    :cond_3f
    const/16 v3, 0x13

    goto/16 :goto_2

    :sswitch_3b
    const-string v4, "LIVE_LINKMIC_APPLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_1

    :cond_40
    const/16 v3, 0x12

    goto/16 :goto_2

    :sswitch_3c
    const-string v4, "LIVE_ADMIN_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_1

    :cond_41
    const/16 v3, 0x11

    goto/16 :goto_2

    :sswitch_3d
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_1

    :cond_42
    const/16 v3, 0x10

    goto/16 :goto_2

    :sswitch_3e
    const-string v4, "LIVE_LUCKY_REMOTE_UPDATE_V_COIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_1

    :cond_43
    const/16 v3, 0xf

    goto/16 :goto_2

    :sswitch_3f
    const-string v4, "LIVE_LUCKY_REMOTE_START"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_1

    :cond_44
    const/16 v3, 0xe

    goto/16 :goto_2

    :sswitch_40
    const-string v4, "LIVE_LUCKY_REMOTE_ROUND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_1

    :cond_45
    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_41
    const-string v4, "LIVE_LUCKY_REMOTE_READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_1

    :cond_46
    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_42
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_1

    :cond_47
    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_43
    const-string v4, "LIVE_REPLY_PK_INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto/16 :goto_1

    :cond_48
    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_44
    const-string v4, "LIVE_LINKMIC_PUSHSUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto/16 :goto_1

    :cond_49
    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_45
    const-string v4, "LIVE_RUNWAY_MULTIPLE_LUCKY_MSG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto/16 :goto_1

    :cond_4a
    const/16 v3, 0x8

    goto :goto_2

    :sswitch_46
    const-string v4, "LIVE_FOLLOW_ANCHOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto/16 :goto_1

    :cond_4b
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_47
    const-string v4, "LIVE_SHARE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto/16 :goto_1

    :cond_4c
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_48
    const-string v4, "LIVE_CLOSE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto/16 :goto_1

    :cond_4d
    const/4 v3, 0x5

    goto :goto_2

    :sswitch_49
    const-string v4, "LIVE_LUCKY_REMOTE_UPDATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto/16 :goto_1

    :cond_4e
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_4a
    const-string v4, "LIVE_LUCKY_REMOTE_REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_1

    :cond_4f
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4b
    const-string v4, "GAME_GUESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto/16 :goto_1

    :cond_50
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_4c
    const-string v4, "LIVE_LINKMIC_PLAYSUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto/16 :goto_1

    :cond_51
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_4d
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto/16 :goto_1

    :cond_52
    const/4 v3, 0x0

    :goto_2
    const-string v4, ""

    const-string v22, "2"

    const-string v23, "1"

    packed-switch v3, :pswitch_data_0

    return-void

    .line 9
    :pswitch_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v1

    if-nez v1, :cond_53

    return-void

    .line 10
    :cond_53
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    if-eqz v0, :cond_5a

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v1

    if-nez v1, :cond_54

    goto/16 :goto_4

    .line 12
    :cond_54
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R4:J

    .line 13
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v1

    if-ltz v1, :cond_59

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-nez v1, :cond_59

    .line 14
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getGameInfoId()J

    move-result-wide v1

    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getGameInfoId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_55

    return-void

    .line 15
    :cond_55
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 16
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getBackDiamond()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;->T1(Landroidx/fragment/app/FragmentManager;II)Z

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v0

    if-nez v0, :cond_57

    .line 20
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 21
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getBackDiamond()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lp9/a;->B(I)V

    goto :goto_3

    .line 22
    :cond_57
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v1

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getBackDiamond()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    .line 23
    :cond_58
    :goto_3
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 24
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->f()V

    .line 25
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    :cond_59
    return-void

    .line 27
    :cond_5a
    :goto_4
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v0

    if-ltz v0, :cond_5b

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 28
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->f()V

    .line 29
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    :cond_5b
    return-void

    .line 31
    :pswitch_1
    iget-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-nez v1, :cond_5d

    iget-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l5:Z

    if-nez v1, :cond_5d

    iget-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-nez v1, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-nez v1, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_5

    .line 32
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/SwitchUrlMessage;

    .line 33
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/SwitchUrlMessage;->getFlvUrl()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D0()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->buildRoomInfo()Lcom/guochao/user/RoomInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/guochao/player/GCLivePlayer;->startPlay(Ljava/lang/String;Lcom/guochao/user/RoomInfo;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setStreamUrl(Ljava/lang/String;)V

    :cond_5d
    :goto_5
    return-void

    .line 37
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    if-eqz v1, :cond_5e

    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 39
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->b2()V

    .line 40
    :cond_5e
    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l3(Ljava/lang/String;)V

    return-void

    .line 41
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;

    .line 42
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 43
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return-void

    .line 44
    :cond_5f
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "\u5bf9\u65b9\u4e0bP\u4e86"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p3()V

    .line 46
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->isPunishment()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    if-eqz v0, :cond_60

    const/4 v1, 0x1

    .line 47
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 48
    :cond_60
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_61

    .line 49
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->s2()V

    .line 50
    :cond_61
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d()V

    return-void

    .line 51
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_62

    return-void

    .line 52
    :cond_62
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTrackType(I)V

    .line 54
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;->obtain(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-void

    .line 55
    :pswitch_5
    instance-of v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_63

    .line 56
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6536\u5230Change_pk\u6d88\u606f"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    const-string v0, "tokens/live/newLive/getLiveInfo"

    .line 57
    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    .line 59
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->getLikeNum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "likeNum"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const/4 v1, 0x3

    .line 60
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$u;

    invoke-direct {v1, v8}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$u;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_63
    return-void

    .line 62
    :pswitch_6
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz v2, :cond_64

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v2, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->f2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto :goto_6

    .line 64
    :cond_64
    iget v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G:I

    sub-int/2addr v0, v1

    iput v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G:I

    .line 65
    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s3(I)V

    :goto_6
    return-void

    .line 66
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_65

    return-void

    .line 67
    :cond_65
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63a5\u6536\u5230\u4e86\u4e3b\u64ad\u53d1\u9001\u7684\u5f00\u59cbPK\u6d88\u606f\u3002 data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_30

    .line 69
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_66

    return-void

    .line 70
    :cond_66
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63a5\u6536\u5230\u4e86\u672c\u6b21PK\u7684\u7ed3\u679c\u4fe1\u606f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 71
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v1, :cond_67

    .line 72
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->r2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 73
    :cond_67
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 74
    :pswitch_9
    instance-of v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v1, :cond_69

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model.getData().action:"

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v0, :cond_68

    .line 78
    sget v0, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_ON:I

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setScreenShotSwitch(I)V

    .line 79
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_ON:I

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->changeFlagSecure(Landroidx/fragment/app/FragmentActivity;I)V

    goto :goto_7

    .line 80
    :cond_68
    sget v0, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_OFF:I

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setScreenShotSwitch(I)V

    .line 81
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/guochao/faceshow/utils/Contants;->SWITCH_SCREEN_SHOTS_OFF:I

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->changeFlagSecure(Landroidx/fragment/app/FragmentActivity;I)V

    :cond_69
    :goto_7
    return-void

    .line 82
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    return-void

    .line 83
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getChatDate()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setChatDate(Ljava/lang/Long;)V

    .line 85
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_ADD_GROUP"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const v2, 0x7f120471

    invoke-virtual {v8, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    iget-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-eqz v1, :cond_6c

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 89
    iget-object v9, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w:Lsa/c;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getLevelId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getMvpUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v9 .. v15}, Lsa/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)V

    .line 90
    :cond_6c
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v1, :cond_6d

    iget-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a1:Z

    if-eqz v1, :cond_6d

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base\u91cc\u8fb9LIVE_ADD_GROUP\u6d88\u606f\u6267\u884c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7528\u6237"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveInfoState"

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onUserEnterIn(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 93
    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 94
    new-instance v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;-><init>()V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->setNickName(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->setUserId(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->setImg(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B2()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->userEnterRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;)V

    goto/16 :goto_30

    .line 99
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6e

    return-void

    .line 100
    :cond_6e
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage;

    .line 101
    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i3(Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage;)V

    return-void

    .line 102
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    .line 103
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 104
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->checkHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V

    :cond_6f
    return-void

    .line 105
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_PUSH_CHECH"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const v2, 0x7f120505

    invoke-virtual {v8, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_70
    return-void

    .line 108
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_CUSTOM_MSG"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 110
    invoke-virtual/range {p0 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void

    .line 111
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const v2, 0x7f1204e0

    invoke-virtual {v8, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 114
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live_text_persons"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    .line 115
    :cond_71
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "live_text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_72
    return-void

    .line 116
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    .line 117
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 118
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v3, :cond_73

    .line 119
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_74
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 120
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 121
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getMatchType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setMatchType(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getVoiceStatus()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setVoiceStatus(Ljava/lang/String;)V

    goto :goto_8

    .line 123
    :cond_75
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    invoke-virtual {v8, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d3(Ljava/util/List;J)V

    return-void

    .line 124
    :pswitch_11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->B(Z)V

    return-void

    .line 125
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;

    .line 126
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 127
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->updateActivityInfo(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;)V

    :cond_76
    return-void

    .line 128
    :pswitch_13
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    const-string v3, "0"

    if-nez v2, :cond_77

    .line 129
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;-><init>()V

    iput-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setUserId(Ljava/lang/String;)V

    .line 131
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getPendantUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setAvatar(Ljava/lang/String;)V

    .line 132
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setImg(Ljava/lang/String;)V

    .line 133
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 134
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setType(Ljava/lang/String;)V

    .line 135
    :cond_77
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;

    .line 136
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getOnlineNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 137
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getOnlineNum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setOnlineNum(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    nop

    .line 138
    :cond_78
    :goto_9
    instance-of v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v2, :cond_7b

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 140
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getVideoOpen()I

    move-result v4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getVideoOpen()I

    move-result v5

    if-ne v4, v5, :cond_79

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getVideoSwitch()I

    move-result v4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getVideoSwitch()I

    move-result v5

    if-eq v4, v5, :cond_7a

    .line 141
    :cond_79
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getVideoOpen()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setVideoOpen(I)V

    .line 142
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getVideoSwitch()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setVideoSwitch(I)V

    .line 143
    iget-object v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->setCurrentLiveRoom(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 144
    :cond_7a
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getScreenShotSwitch()I

    move-result v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getScreenShotSwitch()I

    move-result v4

    if-eq v2, v4, :cond_7b

    .line 145
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getScreenShotSwitch()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->changeFlagSecure(Landroidx/fragment/app/FragmentActivity;I)V

    .line 146
    :cond_7b
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v2

    iget-object v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-virtual {v8, v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L2(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 147
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v2

    iget-object v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D4:Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 148
    :cond_7c
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 149
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iget-boolean v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    invoke-virtual {v2, v0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->updateAudienceLiveInfo(Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;Z)V

    .line 150
    :cond_7d
    iput-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i:Z

    .line 151
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getIsLockMicrophone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setRequestLinkMicEnabled(Z)V

    .line 152
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getIsLockMicrophone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    return-void

    .line 153
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    .line 154
    iget-wide v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N4:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_7e

    return-void

    .line 155
    :cond_7e
    iget-wide v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O4:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_7f

    return-void

    .line 156
    :cond_7f
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;

    invoke-virtual {v3, v0}, Lc8/b;->A(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;)V

    .line 157
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v0, :cond_80

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->v(J)V

    .line 159
    :cond_80
    iput-wide v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O4:J

    return-void

    .line 160
    :pswitch_15
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setFreeLinkMic(Z)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v1, :cond_81

    .line 162
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->w(Z)V

    .line 163
    :cond_81
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_MICROPHON_MODE"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 164
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->canRequestLinkMic()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    .line 165
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->o()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 166
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFreeLinkMic()Z

    move-result v1

    if-nez v1, :cond_82

    .line 167
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 168
    :cond_82
    instance-of v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_ef

    return-void

    .line 169
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v2

    if-eqz v2, :cond_83

    return-void

    .line 170
    :cond_83
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    const-string v3, "TYPE_MICROPHON"

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 171
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    iget-boolean v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    xor-int/2addr v3, v1

    invoke-interface {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setRequestLinkMicEnabled(Z)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    xor-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    .line 173
    instance-of v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_ef

    return-void

    .line 174
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v0, 0x0

    .line 176
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTrackType(I)V

    goto :goto_a

    :cond_84
    const/4 v0, 0x2

    .line 177
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTrackType(I)V

    .line 178
    :goto_a
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->obtain(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;

    move-result-object v0

    .line 179
    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-void

    .line 180
    :pswitch_18
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e3()V

    goto :goto_c

    .line 183
    :cond_85
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 184
    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_87

    .line 185
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 186
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setIsOnLine(I)V

    .line 187
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;-><init>()V

    .line 188
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->setMatchList(Ljava/util/List;)V

    .line 189
    iget-wide v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v5:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4ece\u6d88\u606f\u4f53\u91cc\u5237\u65b0UI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LiveRoom"

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b4(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V

    goto :goto_c

    :cond_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_87
    :goto_c
    return-void

    .line 192
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-nez v1, :cond_88

    return-void

    .line 193
    :cond_88
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_SCREEN_SHOT"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 194
    :pswitch_1a
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    .line 197
    iget-wide v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F4:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_89

    .line 198
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftBCoinValue()I

    move-result v2

    .line 199
    iget-wide v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMyFCoin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "||giftPrice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Facecast_MB"

    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-wide v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    invoke-interface {v8, v2, v3}, Ld9/g;->y1(J)V

    .line 202
    :cond_89
    invoke-virtual {v8, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_SEND_GIFT"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    if-eqz v1, :cond_8a

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    goto :goto_d

    .line 207
    :cond_8a
    invoke-virtual/range {p0 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 208
    :goto_d
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v1, :cond_ef

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 209
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->addFBNumber(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    goto/16 :goto_30

    .line 210
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8b

    return-void

    .line 211
    :cond_8b
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;

    .line 212
    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-void

    .line 213
    :pswitch_1c
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 214
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6536\u5230\u4e86\u52a0\u5165\u7684\u8bf7\u6c42\uff0c\u4f46\u6e38\u620f\u4e0d\u53ef\u7528, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 215
    :cond_8c
    iget-boolean v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-nez v2, :cond_8d

    .line 216
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6536\u5230\u4e86\u52a0\u5165\u7684\u8bf7\u6c42\uff0c\u4f46\u5c1a\u672a\u62c9\u6d41\u6210\u529f, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 217
    :cond_8d
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v2, :cond_90

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v2

    if-nez v2, :cond_90

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->fromLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    move-result-object v0

    .line 219
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_8e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 220
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 221
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    const-string v4, "\u6536\u5230\u4e86\u52a0\u5165\u7684\u8bf7\u6c42\uff0c\u4f46\u53d1\u73b0\u8f6e\u76d8\u91cc\u9762\u5df2\u7ecf\u6709\u8be5\u7528\u6237\u4e86, \u66ff\u6362\u52a0\u5165"

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    const/4 v3, 0x1

    goto :goto_e

    .line 222
    :cond_8f
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v1, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->X(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;Z)V

    goto :goto_f

    .line 223
    :cond_90
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6536\u5230\u4e86\u52a0\u5165\u7684\u8bf7\u6c42\uff0c\u53d1\u751f\u610f\u5916, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_f
    return-void

    .line 224
    :pswitch_1d
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_REMOVE_USER"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-direct {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 226
    invoke-virtual/range {p0 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void

    .line 227
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-nez v1, :cond_91

    return-void

    .line 228
    :cond_91
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 229
    :pswitch_1f
    instance-of v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_92

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v8, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;

    .line 232
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;->getFCoin()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O:J

    .line 233
    :cond_92
    invoke-virtual/range {p0 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void

    .line 234
    :pswitch_20
    instance-of v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v1, :cond_93

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;

    .line 236
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, "system notify"

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v8, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    :cond_93
    return-void

    .line 238
    :pswitch_21
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    if-eqz v1, :cond_98

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    if-eqz v1, :cond_95

    .line 240
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v3

    if-eqz v3, :cond_95

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v3

    if-eqz v3, :cond_95

    .line 241
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6536\u5230PK\u8f6e\u8be2\u6d88\u606f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u4e14\u6570\u636e\u5b8c\u6574"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 242
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v3

    int-to-long v3, v3

    iget-wide v5, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_94

    .line 243
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    .line 244
    :cond_94
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v3

    int-to-long v3, v3

    iget-wide v5, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_96

    .line 245
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O:J

    goto :goto_10

    .line 246
    :cond_95
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6536\u5230PK\u8f6e\u8be2\u6d88\u606f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u4f46\u6570\u636e\u4e0d\u5b8c\u6574"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_96
    :goto_10
    if-eqz v1, :cond_98

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v3

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-wide/16 v5, 0x3e8

    goto :goto_11

    :cond_97
    const-wide/16 v5, 0x1f4

    :goto_11
    add-long/2addr v3, v5

    .line 250
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v3, v4, v1}, Ld9/g;->h0(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;JZ)V

    :cond_98
    return-void

    .line 251
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v2, :cond_9a

    .line 253
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->p(ILjava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->z()V

    .line 255
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz v2, :cond_99

    .line 256
    invoke-virtual {v2}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 257
    :cond_99
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 258
    iput-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->canRequestLinkMic()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    goto :goto_12

    .line 260
    :cond_9a
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->s(Ljava/lang/String;)V

    goto :goto_12

    .line 261
    :cond_9b
    iget-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-eqz v1, :cond_9e

    .line 262
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->p(ILjava/lang/String;)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v1, :cond_9e

    .line 264
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->j(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    move-result-object v1

    if-eqz v1, :cond_9e

    .line 265
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v2, :cond_9c

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->c(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;J)V

    .line 267
    :cond_9c
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v2, :cond_9d

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->c(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;J)V

    .line 269
    :cond_9d
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v2, :cond_9e

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->c(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;J)V

    .line 271
    :cond_9e
    :goto_12
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz v1, :cond_a0

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-nez v1, :cond_9f

    .line 273
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->h2(Ljava/lang/String;)V

    goto :goto_13

    .line 274
    :cond_9f
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->j2(Ljava/lang/String;)V

    goto :goto_13

    .line 275
    :cond_a0
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-nez v1, :cond_a1

    .line 276
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->s(Ljava/lang/String;)V

    :cond_a1
    :goto_13
    return-void

    .line 277
    :pswitch_23
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;

    .line 278
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v1, :cond_a2

    .line 279
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->F(Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;)V

    :cond_a2
    return-void

    .line 280
    :pswitch_24
    instance-of v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v1, :cond_a3

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 283
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getVideoSwitch()I

    move-result v2

    if-eq v2, v0, :cond_a3

    .line 284
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setVideoSwitch(I)V

    .line 285
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    if-eqz v0, :cond_a3

    .line 286
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->setCurrentLiveRoom(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    :cond_a3
    return-void

    .line 287
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j2()V

    return-void

    .line 288
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->anim(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    return-void

    .line 289
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    return-void

    .line 290
    :cond_a4
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-direct {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    move/from16 v2, v16

    .line 291
    invoke-virtual {v8, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onSelfMute(Z)V

    .line 292
    :cond_a5
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_BAN_TALK_USER"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 293
    :pswitch_28
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v1, :cond_ef

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N4:J

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveFullScreenMessage;

    .line 296
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveFullScreenMessage;->getActivityId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->z(I)V

    goto/16 :goto_30

    .line 297
    :pswitch_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base\u91cc\u8fb9LIVE_UPDATE_LIVEINFO\u6d88\u606f\u6267\u884c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveInfoState"

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M3(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Z)V

    return-void

    .line 299
    :pswitch_2a
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6536\u5230\u4e86\u5bf9\u65b9\u62c9\u6d41\u6210\u529f\u6d88\u606f\uff1a\u6b64\u65f6\u6211\u662f\u5426\u4e3a\u9080\u8bf7\u8005"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->t()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 300
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->z(Z)V

    return-void

    .line 301
    :pswitch_2b
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    .line 302
    iget-object v9, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v9, :cond_ad

    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v3, :cond_ad

    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v3, :cond_ad

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    iget-boolean v10, v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->A(ZLjava/lang/String;JZ)V

    .line 304
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v19

    const/16 v21, 0x1

    move-object/from16 v16, v3

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v21}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->A(ZLjava/lang/String;JZ)V

    .line 305
    iget-object v9, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    iget-boolean v10, v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v12

    invoke-virtual/range {v9 .. v14}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->A(ZLjava/lang/String;JZ)V

    .line 306
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    if-eqz v3, :cond_a7

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    if-eqz v3, :cond_a7

    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    .line 307
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 308
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v4, :cond_a6

    move-object/from16 v4, v22

    goto :goto_14

    :cond_a6
    move-object/from16 v4, v23

    :goto_14
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->f2(Ljava/lang/String;)V

    .line 309
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->h2(Z)V

    .line 310
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    iget-boolean v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    iput-boolean v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y5:Z

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A2()Lcom/guochao/pusher/GCLivePusher;

    move-result-object v3

    iget-boolean v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y5:Z

    xor-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/guochao/pusher/GCLivePusher;->enableAudio(Z)V

    .line 313
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    iget-boolean v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v3, :cond_a9

    move-object/from16 v3, v22

    goto :goto_15

    :cond_a9
    move-object/from16 v3, v23

    :goto_15
    invoke-interface {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setVoiceStatus(Ljava/lang/String;)V

    :cond_aa
    const/4 v1, 0x0

    .line 315
    :goto_16
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_ad

    .line 316
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 317
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v0, :cond_ab

    move-object/from16 v0, v22

    goto :goto_17

    :cond_ab
    move-object/from16 v0, v23

    :goto_17
    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setVoiceStatus(Ljava/lang/String;)V

    goto :goto_18

    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_ad
    :goto_18
    return-void

    .line 319
    :pswitch_2c
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    .line 320
    iget-object v9, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v9, :cond_ae

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    iget-boolean v10, v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->E(ZLjava/lang/String;JZ)V

    .line 322
    :cond_ae
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v3, :cond_af

    .line 323
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v19

    const/16 v21, 0x1

    move-object/from16 v16, v3

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v21}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->E(ZLjava/lang/String;JZ)V

    .line 324
    :cond_af
    iget-object v9, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v9, :cond_b0

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    iget-boolean v10, v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->E(ZLjava/lang/String;JZ)V

    .line 326
    :cond_b0
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    if-eqz v3, :cond_b2

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    if-eqz v3, :cond_b2

    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    .line 327
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 328
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v4, :cond_b1

    move-object/from16 v4, v22

    goto :goto_19

    :cond_b1
    move-object/from16 v4, v23

    :goto_19
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e2(Ljava/lang/String;)V

    .line 329
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    xor-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g2(Z)V

    .line 330
    :cond_b2
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    iput-boolean v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x5:Z

    .line 332
    :cond_b3
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    iget-boolean v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v3, :cond_b4

    move-object/from16 v3, v22

    goto :goto_1a

    :cond_b4
    move-object/from16 v3, v23

    :goto_1a
    invoke-interface {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setMatchType(Ljava/lang/String;)V

    :cond_b5
    const/4 v1, 0x0

    .line 334
    :goto_1b
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_b8

    .line 335
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 336
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v0, :cond_b6

    move-object/from16 v0, v22

    goto :goto_1c

    :cond_b6
    move-object/from16 v0, v23

    :goto_1c
    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setMatchType(Ljava/lang/String;)V

    goto :goto_1d

    :cond_b7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_b8
    :goto_1d
    return-void

    .line 338
    :pswitch_2d
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    .line 339
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    invoke-virtual {v8, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d3(Ljava/util/List;J)V

    .line 340
    invoke-direct {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V

    return-void

    .line 341
    :pswitch_2e
    instance-of v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v2, :cond_ba

    .line 342
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz v2, :cond_b9

    .line 343
    invoke-virtual {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->f2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto :goto_1e

    .line 344
    :cond_b9
    iget v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G:I

    .line 345
    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s3(I)V

    :cond_ba
    :goto_1e
    return-void

    :pswitch_2f
    move/from16 v2, v16

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M2(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    if-eqz v2, :cond_bb

    .line 347
    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onUserTypeChanged(I)V

    goto :goto_1f

    :cond_bb
    const/4 v1, 0x2

    .line 348
    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onUserTypeChanged(I)V

    .line 349
    :cond_bc
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_ADMIN_USER"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12047b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 352
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_bd

    return-void

    .line 353
    :cond_bd
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_20
    const/16 v19, -0x1

    goto :goto_21

    :sswitch_4e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    goto :goto_20

    :cond_be
    const/16 v19, 0x2

    goto :goto_21

    :sswitch_4f
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    goto :goto_20

    :cond_bf
    const/16 v19, 0x1

    goto :goto_21

    :sswitch_50
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto :goto_20

    :cond_c0
    const/16 v19, 0x0

    :goto_21
    packed-switch v19, :pswitch_data_1

    goto :goto_22

    :pswitch_31
    const/4 v0, 0x3

    .line 355
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTrackType(I)V

    goto :goto_22

    :pswitch_32
    const/4 v0, 0x2

    .line 356
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTrackType(I)V

    goto :goto_22

    .line 357
    :pswitch_33
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTrackType(I)V

    .line 358
    :goto_22
    invoke-virtual {v8, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-void

    .line 359
    :pswitch_34
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v2

    if-nez v2, :cond_c1

    return-void

    .line 360
    :cond_c1
    iget-boolean v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-nez v2, :cond_c2

    return-void

    .line 361
    :cond_c2
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    .line 362
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    if-nez v2, :cond_c3

    return-void

    .line 363
    :cond_c3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 365
    :goto_23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c6

    const/4 v5, 0x0

    .line 366
    :goto_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c5

    .line 367
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getRemovePosition()I

    move-result v6

    if-ne v4, v6, :cond_c4

    .line 368
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_c4
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_c5
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 369
    :cond_c6
    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v3, :cond_c7

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v3

    if-nez v3, :cond_c7

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v3

    if-nez v3, :cond_c7

    .line 370
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->z(Ljava/util/List;)V

    .line 371
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->t(Ljava/util/List;)V

    .line 372
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->D()V

    goto :goto_26

    .line 373
    :cond_c7
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c8

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 374
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->s()V

    .line 375
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfUserNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfDiamondNum()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->v(IIZ)V

    .line 376
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->p0(ZLjava/util/List;)V

    :cond_c8
    :goto_26
    return-void

    .line 377
    :pswitch_35
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v2

    if-nez v2, :cond_c9

    .line 378
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6536\u5230\u4e86\u6e38\u620f\u51c6\u5907\u7684\u8bf7\u6c42\uff0c\u4f46\u6e38\u620f\u4e0d\u53ef\u7528, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 379
    :cond_c9
    iget-boolean v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-nez v2, :cond_ca

    .line 380
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6536\u5230\u4e86\u6e38\u620f\u51c6\u5907\u7684\u8bf7\u6c42\uff0c\u4f46\u5c1a\u672a\u62c9\u6d41\u6210\u529f, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 381
    :cond_ca
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v2, :cond_cd

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 382
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    .line 383
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    if-nez v2, :cond_cb

    .line 384
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6536\u5230\u4e86\u6e38\u620f\u51c6\u5907\u7684\u8bf7\u6c42\uff0c\u4f46getGameInfo == null, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 385
    :cond_cb
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->s()V

    .line 386
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->x(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;)V

    .line 387
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfUserNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfDiamondNum()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->v(IIZ)V

    .line 388
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->A(Z)V

    .line 389
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_cc

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 390
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->b(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    goto :goto_27

    .line 391
    :cond_cc
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6536\u5230\u4e86\u6e38\u620f\u51c6\u5907\u7684\u8bf7\u6c42\uff0c\u53d1\u751f\u610f\u5916, \u7ec8\u6b62\u52a0\u5165"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_cd
    :goto_27
    return-void

    .line 392
    :pswitch_36
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-nez v1, :cond_ce

    goto :goto_28

    .line 394
    :cond_ce
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getChatDate()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_cf

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setChatDate(Ljava/lang/Long;)V

    .line 396
    :cond_cf
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_d0
    :goto_28
    return-void

    :pswitch_37
    move/from16 v2, v16

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v3

    if-nez v3, :cond_d1

    return-void

    :cond_d1
    if-eqz v2, :cond_d2

    .line 398
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPKPrepare(Z)V

    .line 399
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5bf9\u65b9\u540c\u610f\u4e86PK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_29

    :cond_d2
    const/4 v2, 0x0

    .line 400
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPKPrepare(Z)V

    .line 401
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5bf9\u65b9\u62d2\u7edd\u4e86PK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 402
    :goto_29
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->e()V

    .line 403
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v3, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m5:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v2, :cond_d7

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    .line 408
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkMessageModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 409
    :cond_d3
    instance-of v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_d7

    .line 410
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->v()V

    goto :goto_2b

    .line 411
    :cond_d4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u5bf9\u65b9\u62d2\u7eddPK \u6062\u590d\u6309\u94ae"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p3()V

    .line 413
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkBtnVisibility(Z)V

    .line 414
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v1, :cond_d5

    .line 415
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->dismissInvite()V

    .line 416
    :cond_d5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isRefusePkInvite()Z

    move-result v0

    if-eqz v0, :cond_d6

    const v0, 0x7f1206fe

    goto :goto_2a

    :cond_d6
    const v0, 0x7f120718

    :goto_2a
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_d7
    :goto_2b
    return-void

    .line 417
    :pswitch_38
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFreeLinkMic()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 418
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->p(ILjava/lang/String;)V

    .line 419
    instance-of v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_da

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->W3()V

    goto :goto_2c

    .line 421
    :cond_d8
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz v2, :cond_d9

    .line 422
    invoke-virtual {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->f2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    goto :goto_2c

    .line 423
    :cond_d9
    iget v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G:I

    .line 424
    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s3(I)V

    :cond_da
    :goto_2c
    return-void

    .line 425
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_db

    return-void

    .line 426
    :cond_db
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-void

    .line 427
    :pswitch_3a
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_FOLLOW_ANCHOR"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const v2, 0x7f12051c

    invoke-virtual {v8, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 429
    :pswitch_3b
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const-string v2, "TYPE_SHARE"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    const v2, 0x7f12051e

    invoke-virtual {v8, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 431
    :pswitch_3c
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string v0, "closed by broadcaster"

    .line 432
    invoke-virtual {v8, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    :cond_dc
    return-void

    .line 433
    :pswitch_3d
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v2

    if-nez v2, :cond_dd

    return-void

    .line 434
    :cond_dd
    iget-boolean v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-nez v2, :cond_de

    return-void

    .line 435
    :cond_de
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v2

    if-nez v2, :cond_e6

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    .line 437
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    if-nez v2, :cond_df

    return-void

    .line 438
    :cond_df
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    iget-wide v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R4:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_e0

    return-void

    .line 439
    :cond_e0
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v2, :cond_e1

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e1

    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v2

    if-eqz v2, :cond_e1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    if-eqz v2, :cond_e1

    .line 440
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->s()V

    .line 441
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->x(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;)V

    .line 442
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfUserNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfDiamondNum()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->v(IIZ)V

    .line 443
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->p0(ZLjava/util/List;)V

    goto/16 :goto_2e

    .line 444
    :cond_e1
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v2, :cond_e6

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v2

    if-ltz v2, :cond_e6

    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v2

    if-eqz v2, :cond_e6

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    if-eqz v2, :cond_e6

    .line 445
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n()Ljava/util/List;

    move-result-object v2

    .line 446
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_e2

    .line 447
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 448
    :cond_e2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_e4

    iget-object v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    if-eqz v4, :cond_e4

    iget-object v4, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    .line 449
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getRoundId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getRoundId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 450
    :goto_2d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_e5

    .line 451
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getCurrentUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e3

    const/4 v5, 0x0

    :cond_e3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_e4
    const/4 v5, 0x0

    :cond_e5
    if-nez v5, :cond_e6

    .line 452
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->x(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;)V

    .line 453
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfUserNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfDiamondNum()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->v(IIZ)V

    .line 454
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->p0(ZLjava/util/List;)V

    :cond_e6
    :goto_2e
    return-void

    .line 455
    :pswitch_3e
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v2

    if-nez v2, :cond_e7

    return-void

    .line 456
    :cond_e7
    iget-boolean v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-nez v2, :cond_e8

    return-void

    .line 457
    :cond_e8
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v2

    if-nez v2, :cond_eb

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    .line 459
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    if-nez v2, :cond_e9

    return-void

    .line 460
    :cond_e9
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v2, :cond_ea

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_ea

    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->d0()Z

    move-result v2

    if-eqz v2, :cond_ea

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    if-eqz v2, :cond_ea

    .line 461
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->x(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;)V

    .line 462
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfUserNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfDiamondNum()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->v(IIZ)V

    .line 463
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v3

    .line 464
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getRemoveCount()I

    move-result v0

    sub-int/2addr v4, v0

    .line 465
    invoke-virtual {v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->q0(ZLjava/util/List;I)V

    goto :goto_2f

    .line 466
    :cond_ea
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v2, :cond_eb

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v2

    if-nez v2, :cond_eb

    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    if-eqz v2, :cond_eb

    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    .line 467
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getGameInfoId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getGameInfoId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_eb

    .line 468
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfUserNum()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getConfDiamondNum()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->v(IIZ)V

    .line 469
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v3

    .line 470
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getRemoveCount()I

    move-result v0

    sub-int/2addr v4, v0

    .line 471
    invoke-virtual {v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->q0(ZLjava/util/List;I)V

    :cond_eb
    :goto_2f
    return-void

    .line 472
    :pswitch_3f
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v1

    if-nez v1, :cond_ec

    return-void

    .line 473
    :cond_ec
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;->setFlag(I)V

    .line 475
    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-void

    .line 476
    :pswitch_40
    instance-of v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_ed

    .line 477
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    const-string v1, "tokens/live/microphone/anchorMergeStream"

    .line 478
    invoke-virtual {v8, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "liveId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 479
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audienceId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->getStreamId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "streamId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;

    invoke-direct {v2, v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_ed
    return-void

    .line 480
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-nez v1, :cond_ee

    return-void

    .line 481
    :cond_ee
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 482
    :cond_ef
    :goto_30
    :pswitch_42
    invoke-virtual/range {p0 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_f0
    :goto_31
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78ae046e -> :sswitch_4d
        -0x749fc6f6 -> :sswitch_4c
        -0x734c60d6 -> :sswitch_4b
        -0x6ca2be6d -> :sswitch_4a
        -0x66ed7e28 -> :sswitch_49
        -0x650b6f3b -> :sswitch_48
        -0x642bfd54 -> :sswitch_47
        -0x5f0be710 -> :sswitch_46
        -0x5b911bfd -> :sswitch_45
        -0x572ef99c -> :sswitch_44
        -0x4e20c2bb -> :sswitch_43
        -0x4b607056 -> :sswitch_42
        -0x4591d16c -> :sswitch_41
        -0x458cf981 -> :sswitch_40
        -0x457ce6ad -> :sswitch_3f
        -0x3a2ca2df -> :sswitch_3e
        -0x3406e4aa -> :sswitch_3d
        -0x2f28a7f2 -> :sswitch_3c
        -0x2e2b4197 -> :sswitch_3b
        -0x2d85390a -> :sswitch_3a
        -0x2d06b08a -> :sswitch_39
        -0x2d03e3d3 -> :sswitch_38
        -0x2bd39153 -> :sswitch_37
        -0x24f55303 -> :sswitch_36
        -0x209252f3 -> :sswitch_35
        -0x1ef48aba -> :sswitch_34
        -0x1d896a17 -> :sswitch_33
        -0x1ca3fae5 -> :sswitch_32
        -0x1c83e259 -> :sswitch_31
        -0x1c7fdeaf -> :sswitch_30
        -0x1c0494f6 -> :sswitch_2f
        -0x1bdc34bb -> :sswitch_2e
        -0x1bcd7233 -> :sswitch_2d
        -0x1662c8ba -> :sswitch_2c
        -0x11410195 -> :sswitch_2b
        -0x10f2a28b -> :sswitch_2a
        -0xc6211ff -> :sswitch_29
        -0x1c5c811 -> :sswitch_28
        0x117a262 -> :sswitch_27
        0x53d0966 -> :sswitch_26
        0x7401c4c -> :sswitch_25
        0xb9b24e5 -> :sswitch_24
        0xc35e7d3 -> :sswitch_23
        0xdd685e0 -> :sswitch_22
        0xe4221f9 -> :sswitch_21
        0x183c8e59 -> :sswitch_20
        0x193433f4 -> :sswitch_1f
        0x1b22c01a -> :sswitch_1e
        0x1c315329 -> :sswitch_1d
        0x1d5b1999 -> :sswitch_1c
        0x1dc0542d -> :sswitch_1b
        0x1dc0c8a5 -> :sswitch_1a
        0x1ebc6189 -> :sswitch_19
        0x1f5a451e -> :sswitch_18
        0x23cce072 -> :sswitch_17
        0x2e4d755f -> :sswitch_16
        0x35fbcda3 -> :sswitch_15
        0x377a9e9a -> :sswitch_14
        0x38f5d855 -> :sswitch_13
        0x47dcdac6 -> :sswitch_12
        0x4f82dcb3 -> :sswitch_11
        0x53438a14 -> :sswitch_10
        0x5b331e44 -> :sswitch_f
        0x604aa58e -> :sswitch_e
        0x60fb43fd -> :sswitch_d
        0x6572fb4e -> :sswitch_c
        0x663f8506 -> :sswitch_b
        0x6a000764 -> :sswitch_a
        0x6b5852bf -> :sswitch_9
        0x6c9d7557 -> :sswitch_8
        0x6efa9642 -> :sswitch_7
        0x6f41ce96 -> :sswitch_6
        0x73395aaf -> :sswitch_5
        0x73e09ed2 -> :sswitch_4
        0x7806a473 -> :sswitch_3
        0x798c7789 -> :sswitch_2
        0x7ac70723 -> :sswitch_1
        0x7c40dfaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_3f
        :pswitch_34
        :pswitch_3d
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_42
        :pswitch_34
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_3f
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_39
        :pswitch_30
        :pswitch_42
        :pswitch_35
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_3f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_21
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_30
        :pswitch_17
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3406e4aa -> :sswitch_50
        0x53d0966 -> :sswitch_4f
        0x7ac70723 -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method public synthetic D0()Lcom/guochao/player/GCLivePlayer;
    .locals 1

    invoke-static {p0}, Ld9/f;->c(Ld9/g;)Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    return-object v0
.end method

.method protected E2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f0a009b

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public E3(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public F(ZLd9/h;)V
    .locals 3

    const-string v0, "tokens/live/newLive/updateLiveInfo"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videoSwitch"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$g;

    invoke-direct {v1, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Ld9/h;Z)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method protected F3(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->W1(Z)V

    :cond_0
    return-void
.end method

.method protected G2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->clickView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected G3()Z
    .locals 5

    .line 1
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->W()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 3
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e:Landroid/view/ViewGroup;

    const v4, 0x7f0a068d

    if-eqz v3, :cond_5

    .line 4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 7
    :cond_3
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 8
    :cond_5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    return v2
.end method

.method protected I2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setNestedScrollingEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setDefaultGapBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-direct {v0, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-direct {v0, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public I3()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isLaunchFromFloatWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z5:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public J0(Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getLiveId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getLiveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveRoomId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveCoverImg(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getLiveId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setGroupId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    :cond_0
    return-void
.end method

.method public J3()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->U4:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRiskLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v2, "KEY_LIVE_ADS_TIPS"

    invoke-virtual {v0, v2}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->adsLay:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 6
    :cond_4
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-nez v0, :cond_5

    return-void

    .line 7
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H5:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    return-void

    .line 9
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_8

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->k0()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 11
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_9

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 13
    iget v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->p:I

    add-int/2addr v3, v1

    .line 14
    iput v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->p:I

    const/4 v0, 0x3

    if-lt v3, v0, :cond_9

    .line 15
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lja/a;->e(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const v2, 0x7f0a009b

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 21
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    :cond_a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    const v2, 0x7f12003b

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f08005b

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 28
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    .line 29
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 31
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H5:Landroid/widget/PopupWindow;

    .line 32
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$e0;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$e0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    .line 33
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f0;

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 35
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;

    invoke-direct {v4, p0, v1, v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/widget/PopupWindow;FLandroid/widget/TextView;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_0
    return-void
.end method

.method public K(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v1, "TYPE_BAN_TALK_USER"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setAction(Z)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setOperatedUserImg(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p3, "LIVE_BAN_TALK_USER"

    invoke-direct {p1, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz p1, :cond_0

    const/4 p4, -0x1

    .line 11
    invoke-virtual {p1, p4, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->g2(ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic K1()Lz8/b;
    .locals 1

    invoke-static {p0}, Ld9/f;->a(Ld9/g;)Lz8/b;

    move-result-object v0

    return-object v0
.end method

.method public K2()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public K3(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->j2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    return-void
.end method

.method public L(ZLjava/lang/String;Ljava/lang/String;Ld9/h;)V
    .locals 10

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 4
    :goto_0
    new-instance v9, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$e;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;ZLjava/lang/String;Ljava/lang/String;Ld9/h;Z)V

    const/4 p3, 0x3

    const-string p4, "2"

    const-string v0, "1"

    const-string v1, "liveId"

    const-string v2, "voiceStatus"

    if-eqz v8, :cond_3

    const-string p2, "tokens/live/newLive/updateLiveInfo"

    .line 5
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p4, v0

    :goto_1
    invoke-virtual {p2, v2, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, v9}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_3

    :cond_3
    const-string v3, "tokens/live/microphone/updateVoiceStatusOrLiveType"

    .line 6
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v3

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p4, v0

    :goto_2
    invoke-virtual {v3, v2, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string p4, "audienceId"

    .line 7
    invoke-virtual {p1, p4, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p2

    xor-int/2addr p2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "ifUpdateAudience"

    invoke-virtual {p1, p4, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, v9}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_3
    return-void
.end method

.method public L2(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public L3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t2()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;->S1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;

    return-void
.end method

.method public M(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0a045e

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "%s/%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public M0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoardNow(Landroid/widget/EditText;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$j0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$j0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public synthetic M1()V
    .locals 0

    invoke-static {p0}, Ld9/f;->f(Ld9/g;)V

    return-void
.end method

.method protected M3(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getOnlineNum()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getOnlineNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setOnlineNum(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getFullScreenActivityGiftList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc8/b;->w(Ljava/util/List;)V

    .line 4
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p2

    invoke-virtual {p2}, Lc8/b;->m()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->v(J)V

    :cond_2
    return-void
.end method

.method public N2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected N3(Ljava/lang/String;ZI)V
    .locals 4

    const/16 v0, 0xa

    if-ne p3, v0, :cond_0

    const-string v1, "push failed after 30 seconds..."

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    .line 2
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;

    invoke-direct {v3, p0, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;IZ)V

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    if-eq p3, v0, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/e;->j()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p1, 0x7f1204be

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    :cond_2
    const p1, 0x7f120753

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/e;->show()V

    if-ne p3, v0, :cond_3

    const p1, 0x7f1208d4

    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/views/e;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected O3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->showLocationAnimator(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;)V

    :cond_0
    return-void
.end method

.method public P3()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;->R1(Landroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    return-void
.end method

.method public Q3(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->b2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    return-void
.end method

.method public R3()V
    .locals 10

    .line 1
    const-class v0, Ljava/lang/Long;

    const-string v1, "live"

    const-string v2, "ShowFirstRecharge"

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v3

    add-long/2addr v1, v3

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    sub-long/2addr v1, v3

    const/4 v0, 0x1

    const-wide/32 v3, 0x5265c00

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v8

    add-long/2addr v6, v8

    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->getLastLoginTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, v3

    if-gez v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result v3

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;->getShowIcon()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shouldShowFirstRecharge()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V3()V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    goto :goto_4

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 19
    :cond_7
    :goto_4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeClose:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeCloseVoice:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public S3()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x2()V

    :cond_1
    return-void
.end method

.method public T(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;-><init>(Ljava/lang/String;)V

    const-string p1, "LOCAL_GROUP_DISSMISS"

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_0
    return-void
.end method

.method public T3()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G2()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    .line 6
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;

    const-string v2, "0"

    if-eqz v1, :cond_4

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f5:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    .line 8
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->i(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q2()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    goto :goto_0

    .line 16
    :cond_4
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const v3, 0x7f08031f

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->i(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 18
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGiftPicture()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/h;->c()Lcom/bumptech/glide/g;

    move-result-object v2

    const v3, 0x7f0f0136

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/g;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/g;->Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$j;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto :goto_0

    .line 20
    :cond_5
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    if-eqz v1, :cond_7

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->i(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 22
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f5:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    .line 23
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 25
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q2()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 29
    :cond_6
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public U0(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "2"

    goto :goto_0

    :cond_0
    const-string p1, "5"

    :goto_0
    move-object v3, p1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v3}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    instance-of p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/player/GCLivePlayer;->isCompatMode()Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getScreenShotSwitch()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {p1, p2, v1, v3, v0}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public U2(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p5:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p5:Z

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c3(Z)V

    return-void
.end method

.method protected V2()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "tokens/live/treasure/list"

    .line 3
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "scene"

    invoke-virtual {v2, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "liveId"

    invoke-virtual {v2, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$d;

    invoke-direct {v3, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;J)V

    .line 6
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public W3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t5:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t5:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E4:Z

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createAcceptLinkMicModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkBtnVisibility(Z)V

    :cond_0
    return-void
.end method

.method public X2(III)V
    .locals 0

    return-void
.end method

.method public X3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_0

    instance-of v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->C(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setOnBackButtonPressedHandler(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->o2()V

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f3()V

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewFaceCastId:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->v(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    return-void
.end method

.method public Y2(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->giftOnclick(I)V

    :cond_0
    return-void
.end method

.method public Y3()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h5:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Z2(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x42960000    # 75.0f

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public Z3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    const v0, 0x7f0a0142

    if-ne p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->setTouchEnabled(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z1()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1208a2

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$d0;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$d0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->R1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    return-void
.end method

.method public a3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserType()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 4
    invoke-virtual/range {v3 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b3(ZZZZZ)V

    return-void
.end method

.method public addFBNumber(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->addFBNumber(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_0
    return-void
.end method

.method protected b3(ZZZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setKickedOut(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->W2(Landroid/content/Context;ZZZZ)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result p2

    const-string p3, "voice"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "privateVoice"

    .line 6
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public b4(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v5:J

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v5:J

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 6
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMute()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 9
    :goto_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 10
    :goto_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setPosition(I)V

    .line 12
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 13
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getVoiceStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->f2(Ljava/lang/String;)V

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getMatchType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e2(Ljava/lang/String;)V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAnchorForceMatchType=="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isAnchorForceMatchType()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AnchorForceMatchTyp+update"

    invoke-static {v7, v4}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isAnchorForceMatchType()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g2(Z)V

    .line 17
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isAnchorForceVoiceStatus()Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->h2(Z)V

    :cond_7
    move v1, v6

    goto/16 :goto_3

    .line 18
    :cond_8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->getMatchList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v3, :cond_a

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l2()V

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    if-eqz p1, :cond_9

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 22
    :cond_a
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R:Z

    .line 23
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->U2(Z)V

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v1, :cond_b

    .line 25
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->x(Z)V

    .line 26
    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v1, :cond_c

    .line 27
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->x(Z)V

    .line 28
    :cond_c
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V

    .line 29
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-nez v2, :cond_d

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l2()V

    .line 31
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x3()V

    return-void

    .line 32
    :cond_d
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v0, :cond_e

    .line 34
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->C(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V

    .line 35
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v0, :cond_f

    .line 36
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->C(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V

    .line 37
    :cond_f
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v0, :cond_16

    .line 38
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->C(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V

    goto/16 :goto_5

    .line 39
    :cond_10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_12

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 41
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 42
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 43
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getJsUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q5:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D0()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getJsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTXCloudVideoViewAcc:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0, v2}, Lcom/guochao/player/GCLivePlayer;->startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void

    .line 45
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 46
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4

    .line 47
    :cond_13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    if-eqz v1, :cond_14

    return-void

    .line 48
    :cond_14
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getJsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 49
    :cond_15
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    const v1, 0x7f0a0670

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    .line 51
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t3(Z)V

    goto :goto_4

    :cond_16
    :goto_5
    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    const/4 p6, 0x1

    invoke-interface {p2, p6}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkPunishmentTime(Z)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->D(I)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F5:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0xbb8

    cmp-long p6, p2, v0

    if-lez p6, :cond_1

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-static {p1, p4, p5, p7}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkResultMessageModel(ILjava/lang/String;Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F5:J

    :cond_1
    return-void
.end method

.method public c0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkBtnVisibility(Z)V

    :cond_0
    return-void
.end method

.method public c1(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Ld9/k;Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;Z)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld9/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x7f0a068e

    if-eqz p4, :cond_2

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r2()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    const p4, 0x7f0a045d

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d4()Landroid/widget/ImageView;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$x;

    invoke-direct {v0, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$x;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getIcon()Ljava/lang/String;

    move-result-object p1

    const/4 p4, -0x1

    invoke-static {p2, p1, p4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    const p2, 0x7f0a045e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->getCurrentCount()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, v1

    const/4 p4, 0x1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->getTotalCount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, p4

    const-string p3, "%s/%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    return-void
.end method

.method protected c3(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsLivingInMic(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->e2()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->canRequestLinkMic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 7
    instance-of v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setLinkMicing(Z)V

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    .line 9
    instance-of v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setLinkMicing(Z)V

    .line 10
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    if-eqz v0, :cond_a

    if-nez p1, :cond_8

    .line 11
    instance-of p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p1, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setLinkMicing(Z)V

    :cond_a
    return-void

    .line 12
    :cond_b
    :goto_4
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsLivingInMic(Z)V

    return-void
.end method

.method public c4(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->o:J

    return-void
.end method

.method protected cancelLocationAnimator()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w5:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->cancelLocationAnimator()V

    :cond_0
    return-void
.end method

.method public clickLittlePlayer(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n5:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n5:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->o5:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d3(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f4(Ljava/util/List;J)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setPosition(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;-><init>()V

    .line 9
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->setMatchList(Ljava/util/List;)V

    .line 10
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public d4()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f0a0aa2

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v1

    invoke-virtual {v1}, Lc9/a;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f03ec

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0271

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchGCIMMessage(Lo7/a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e3()V
    .locals 0

    return-void
.end method

.method public e4(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n:J

    return-void
.end method

.method public f3()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    instance-of v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I2()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewMaskContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_1
    :goto_0
    instance-of v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I2()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->canRequestLinkMic()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewFaceCastId:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BC ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    instance-of v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g2()V

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i2()V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h2()V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->setTouchEnabled(Z)V

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->setTouchEnabled(Z)V

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->reset()V

    :cond_5
    return-void
.end method

.method public g2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    const v1, 0x7f0a01e4

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->reset()V

    :cond_3
    :goto_0
    return-void
.end method

.method abstract g3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public g4(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m:J

    return-void
.end method

.method public synthetic getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
    .locals 1

    invoke-static {p0}, Ld9/f;->b(Ld9/g;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    :cond_0
    return-object v0
.end method

.method public giftRunwayScrollEnd(Lcom/guochao/faceshow/gift/controller/GiftRunwayScrollEndEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$u0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$u0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k;)V

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->d(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Handler;Ld9/i;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setOperatedUserImg(Ljava/lang/String;)V

    const-string p1, "TYPE_REMOVE_USER"

    .line 5
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p2, "LIVE_REMOVE_USER"

    invoke-direct {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void
.end method

.method public h3(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q2()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;->getRunways()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T3()V

    goto/16 :goto_2

    :cond_3
    :goto_0
    return-void

    .line 9
    :cond_4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/ILuckyRunwayMessage;

    if-eqz v0, :cond_7

    .line 10
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/ILuckyRunwayMessage;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/ILuckyRunwayMessage;->getRunwayMessages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/ILuckyRunwayMessage;->getDiamonds()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;->setDiamonds(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T3()V

    goto :goto_2

    .line 17
    :cond_7
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T3()V

    goto :goto_2

    .line 22
    :cond_9
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    if-eqz v0, :cond_b

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T3()V

    :cond_b
    :goto_2
    return-void
.end method

.method public h4(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q:J

    return-void
.end method

.method public i3(Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage;->getBigGiftBoxes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getPhoneEndTime()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->U3()V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q3()V

    :cond_2
    :goto_1
    return-void
.end method

.method public i4()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x800005

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const v5, 0x3f255555

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 10
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    if-nez v2, :cond_4

    int-to-float v2, v1

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 11
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    invoke-direct {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p2(Landroid/view/ViewGroup$MarginLayoutParams;Z)V

    goto :goto_0

    .line 13
    :cond_4
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    if-eqz v2, :cond_5

    const/high16 v1, 0x42480000    # 50.0f

    .line 14
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p2(Landroid/view/ViewGroup$MarginLayoutParams;Z)V

    goto :goto_0

    :cond_5
    int-to-float v2, v1

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 16
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 17
    invoke-direct {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p2(Landroid/view/ViewGroup$MarginLayoutParams;Z)V

    goto :goto_0

    .line 18
    :cond_6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    int-to-float v2, v1

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 19
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 20
    invoke-direct {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p2(Landroid/view/ViewGroup$MarginLayoutParams;Z)V

    goto :goto_0

    .line 21
    :cond_8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_9

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_a

    :cond_9
    int-to-float v2, v1

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 22
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_a
    :goto_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

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
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H2()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mIDanmakuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/danmu/DanmuView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    .line 7
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    const v1, 0x7f0a0477

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mMaskVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;-><init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    const v0, 0x7f0a020f

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 12
    new-instance v0, Lsa/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a069d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v4}, Lsa/c;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w:Lsa/c;

    .line 13
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$v;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Lsa/c;->z(Ld9/b;)V

    .line 14
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I2()V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G2()V

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewFaceCastId:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0a0674

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v2, 0x7f0a0671

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v2, 0x7f0a01e4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v2, 0x7f0a0478

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v4, 0x7f0a0893

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPeriscopeLayout:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->dishWheelView:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v3, 0x7f0a068e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v3, 0x7f0a0e42

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v3, 0x7f0a068d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->setOnSwipeListener(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewLinkMicUserName:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 35
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z3()V

    .line 36
    :cond_5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->dishWheelView:Landroid/view/ViewStub;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;-><init>(Landroid/view/ViewStub;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    .line 37
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$g0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$g0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->setOnListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;)V

    .line 38
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_6

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->q(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    .line 40
    :cond_6
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc9/a;->b(Ld9/g;)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 42
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Ld9/c;->d0:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->V3:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$TimeoutReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    :cond_7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public j2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->addZanCount()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPeriscopeLayout:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v1

    invoke-virtual {v1}, Lbb/a;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->g(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public j3(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x42960000    # 75.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public k2(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_e

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b5:I

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b5:I

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b5:I

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "etResources().getDisplayMetrics().heightPixels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x3fe38e39

    .line 10
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b5:I

    add-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N2()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPkModeWhenFloatWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v5

    const/high16 v6, 0x42d20000    # 105.0f

    const/4 v7, -0x1

    if-nez v5, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    const/4 v2, -0x1

    const/4 v5, 0x0

    goto :goto_4

    .line 15
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->fillDp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    div-float/2addr v5, v1

    float-to-int v5, v5

    if-eqz v3, :cond_7

    .line 16
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    mul-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    const/high16 v8, 0x41900000    # 18.0f

    div-float/2addr v2, v8

    float-to-int v2, v2

    goto :goto_3

    .line 17
    :cond_7
    iget v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v2, v8

    .line 18
    :goto_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v8

    invoke-static {v8}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v8

    const v9, 0x7f0f0662

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lic/d;->K(Ljava/lang/Integer;)Lic/c;

    move-result-object v8

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Lic/c;->G1(I)Lic/c;

    move-result-object v8

    new-instance v9, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$b;

    invoke-direct {v9, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    .line 19
    :goto_4
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPkInfoAreaView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->fillDp2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v0

    div-float/2addr v6, v1

    float-to-int v0, v6

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 25
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewMaskContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 29
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 31
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 32
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveViewMaskContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 36
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    const v0, 0x7f0a069d

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K4:Landroid/view/ViewGroup$MarginLayoutParams;

    const v0, 0x7f0a01e4

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "LiveRoomLayout"

    if-ne v2, v7, :cond_b

    const-string v3, "\u666e\u901a\u76f4\u64ad\u95f4\u5e03\u5c40"

    .line 41
    invoke-static {v1, v3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v3, 0x43820000    # 260.0f

    invoke-static {v1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->fillDp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    :cond_b
    if-eqz v3, :cond_c

    .line 43
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b5:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {v6, v7}, Lcom/guochao/faceshow/utils/DensityUtil;->fillDp2px(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v3, "PK\u76f4\u64ad\u95f4\u5e03\u5c40"

    .line 44
    invoke-static {v1, v3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 45
    :cond_c
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b5:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Lcom/guochao/faceshow/utils/DensityUtil;->fillDp2px(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v3, "\u591a\u4eba\u76f4\u64ad\u95f4\u5e03\u5c40"

    .line 46
    invoke-static {v1, v3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_5
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J4:I

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a067f

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 50
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t3(Z)V

    .line 51
    :cond_d
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a5:I

    invoke-virtual {p0, p1, v2, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X2(III)V

    :cond_e
    :goto_6
    return-void
.end method

.method public k3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A5:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->b2()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;->T1(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    return-void
.end method

.method public keyboardHeight(Ly7/j;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    iget v0, p1, Ly7/j;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    iget v0, p1, Ly7/j;->b:I

    if-gtz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G3()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 7
    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->l6:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    iget p1, p1, Ly7/j;->b:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public l0(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a068e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 7
    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->m:Z

    .line 8
    :cond_2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v2, "KEY_SWIPE_TO_DISMISS_LIVE_CHAT"

    invoke-virtual {p1, v2}, Lja/a;->e(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v2, "KEY_SWIPE_TO_SHOW_LIVE_CHAT"

    invoke-virtual {p1, v2}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G5:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;

    const-wide/16 v3, 0x7d0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F3(Z)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r2()V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a069d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->l0()V

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    .line 19
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h5:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k5:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public l2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t5:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    :cond_0
    return-void
.end method

.method public l3(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->s(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->s(Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->s(Ljava/lang/String;)V

    .line 8
    :cond_3
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->v(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v2

    if-nez v2, :cond_8

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z3()V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v0, :cond_9

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x3()V

    .line 17
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    .line 18
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R:Z

    .line 19
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c3(Z)V

    .line 20
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p5:Z

    goto :goto_1

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l2()V

    .line 23
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    .line 24
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R:Z

    .line 25
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c3(Z)V

    .line 26
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p5:Z

    .line 27
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 30
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 32
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_c

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setPosition(I)V

    goto :goto_2

    :cond_c
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public m2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l5:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getShowDanmu()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpDanmu:I

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->addDamus(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public m3(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Lsa/a;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L4:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M4:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFaceEffectUrlV2()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFaceMd5V2()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->setGifList(Ljava/util/List;)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    const/16 v1, 0x2712

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h;

    invoke-direct {v2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lsa/a;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/a;->k(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/manager/a$k;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public n2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftSendList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_6

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftSendList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getFcoin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getLuckyGiftResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getRewardForUser(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setFcoin(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftBCoinValue()I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setFcoin(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 14
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getFcoin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 16
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getLuckyGiftResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getRewardForUser(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v0, p1

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setFcoin(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftBCoinValue()I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setFcoin(Ljava/lang/String;)V

    .line 20
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->I(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public n3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 3
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
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->setData(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setUserType(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setRoomId(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getSmallImg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getSmallImg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 15
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserCountryFlag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getCountryFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserCountryFlag(Ljava/lang/String;)V

    .line 17
    :cond_5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserPendant()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserPendant(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x2

    .line 19
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setVersion(I)V

    .line 20
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->getMvpLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setMvpLevel(I)V

    .line 26
    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setMvpUrl(Ljava/lang/String;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 27
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 28
    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getIsNewUser()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setIsNewer(I)V

    .line 29
    invoke-static {}, Lcom/guochao/faceshow/utils/TimeUtil;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setSendTime(J)V

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget p1, p1, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    return-void
.end method

.method protected o2()V
    .locals 0

    return-void
.end method

.method public onApplyPKCountdown(Lcom/guochao/faceshow/aaspring/beans/ApplyPkCountdown;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ApplyPkCountdown;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x64

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m5:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshPkBtn()V

    :cond_1
    return-void
.end method

.method public onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2, p1, p2}, Ld9/e;->onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBack()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v3, v1, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    check-cast v1, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a0142

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z3(I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q3()V

    return v2

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 11
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->mViewPager2:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getAdapter()Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getAdapter()Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$c;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-lt v3, v0, :cond_3

    return v1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 16
    :cond_5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v3, "KEY_SLIDE_TO_SEE_MORE_LIVE"

    invoke-virtual {v0, v3}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0d9d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_6

    return v1

    .line 19
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e:Landroid/view/View;

    const v3, 0x7f0a0af5

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v3

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$y;

    invoke-direct {v5, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$y;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-string v0, "slide_to_see_more"

    .line 23
    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e:Landroid/view/View;

    const v3, 0x7f0a0b47

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f1209b7

    .line 25
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->setTouchEnabled(Z)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$v0;

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$v0;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$v0;->w(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$z;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$z;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v2

    :cond_8
    return v1
.end method

.method public onCancelPkMessage(Lcom/guochao/faceshow/aaspring/beans/CancelPkData;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CancelPkData;->getToUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m5:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPkWaiting(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u5bf9\u65b9\u53d6\u6d88PK \u6062\u590d\u6309\u94ae"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshPkBtn()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Ld9/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Ld9/a;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B3:Ld9/a;

    .line 4
    :cond_0
    instance-of p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    .line 6
    :cond_1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc8/b;->registerChangeListener(Lc8/b$c;)V

    .line 7
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp9/a;->c(Lp9/a$e;)V

    return-void
.end method

.method public synthetic onCrystalsChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lp9/b;->a(Lp9/a$e;I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a4()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w:Lsa/c;

    invoke-virtual {v0}, Lsa/c;->x()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y2(Z)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y2(Z)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/pusher/GCLivePusher;->isPushing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y2(Z)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    .line 8
    :cond_1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/b;->unRegisterChangeListener(Lc8/b$c;)V

    .line 9
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->r(Lp9/a$e;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J5:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onEnterBackground()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsLiveOnHome(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->onEnterBackground()V

    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->onEnterForeground()V

    :cond_0
    return-void
.end method

.method public onEnterRoom(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u:Ljava/lang/String;

    .line 2
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v3(Ld9/m;)V

    return-void
.end method

.method public onGiftMessageRefresh(Lcom/guochao/faceshow/aaspring/beans/GiftMessageRefresh;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i5:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i5:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i5:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onLinkMicStatusChanged(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setRequestLinkMicEnabled(Z)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2, p1}, Ld9/e;->onLinkMicStatusChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLiveFinish(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setStatus(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F:Lcom/guochao/faceshow/views/g;

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld9/e;

    invoke-interface {v3, p1, p2}, Ld9/e;->onLiveFinish(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onLiveFinish()V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mIDanmakuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i()V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v0, :cond_5

    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 17
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    iget v2, v2, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    invoke-virtual {v3, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->s(IZ)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S4:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld9/m;

    if-nez v1, :cond_7

    goto :goto_2

    .line 22
    :cond_7
    invoke-interface {v1, p0, p1, p2}, Ld9/m;->F0(Ld9/g;ILjava/lang/String;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public onNetworkLose(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2, p1}, Ld9/e;->onNetworkLose(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNetworkResume(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2, p1}, Ld9/e;->onNetworkResume(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getConversationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    if-eqz v0, :cond_4

    .line 6
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->getWrappedMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_4
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->U4:Z

    return-void
.end method

.method public synthetic onPlayMusicAnim(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/d;->a(Ld9/e;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onPlaySuccess()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2}, Ld9/e;->onPlaySuccess()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQuitLiveRoom(ZZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l5:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz p1, :cond_0

    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1, p2}, Lz8/c;->w(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$m;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TXIMUtils;->quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankAnimHelper;->checkRelease(Landroid/view/ViewGroup;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->reset()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l5:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r:Z

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->x(ZZ)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w:Lsa/c;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lsa/c;->x()V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    const-string v2, ""

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a4()V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z3()V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a068e

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPeriscopeLayout:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->h()V

    .line 21
    :cond_6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l2()V

    .line 24
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld9/e;

    .line 26
    invoke-interface {v4, v0, v0}, Ld9/e;->onQuitLiveRoom(ZZ)V

    goto :goto_0

    .line 27
    :cond_8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->o3(Z)V

    .line 28
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v1, :cond_9

    .line 29
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->g(Z)V

    .line 30
    :cond_9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v1, :cond_a

    .line 31
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->g(Z)V

    .line 32
    :cond_a
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v1, :cond_b

    .line 33
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->g(Z)V

    .line 34
    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_c

    .line 35
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 36
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    :cond_c
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 38
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F:Lcom/guochao/faceshow/views/g;

    const/4 v4, 0x0

    if-eqz v1, :cond_d

    .line 40
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 41
    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F:Lcom/guochao/faceshow/views/g;

    .line 42
    :cond_d
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 43
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const v1, 0x7f0a0142

    .line 44
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z3(I)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z3(I)V

    const v1, 0x7f0a0e42

    .line 46
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z3(I)V

    .line 47
    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    .line 48
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->q()V

    .line 49
    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    .line 50
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    .line 51
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsLivingInMic(Z)V

    .line 52
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->giftAndAdsView:Landroid/view/View;

    if-eqz v1, :cond_e

    const/4 v2, 0x4

    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_e
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    .line 55
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s:Z

    .line 56
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i()V

    .line 57
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 58
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_f
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r2()V

    .line 60
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mIDanmakuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    if-eqz v0, :cond_10

    .line 61
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i()V

    .line 62
    :cond_10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_11

    .line 63
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->s()V

    .line 64
    :cond_11
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->u()V

    .line 65
    invoke-static {}, Lb9/a;->a()Lb9/a;

    move-result-object v0

    invoke-virtual {v0}, Lb9/a;->d()V

    .line 66
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S4:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld9/m;

    .line 68
    invoke-interface {v1, p0, p1, p2}, Ld9/m;->N0(Ld9/g;ZZ)V

    goto :goto_1

    .line 69
    :cond_12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    if-eqz p1, :cond_13

    .line 70
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const p2, 0x800005

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_13
    return-void
.end method

.method public onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2, p1}, Ld9/e;->onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->r(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->anim(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    :cond_2
    return-void
.end method

.method public onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q4:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2, p1}, Ld9/e;->onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->r(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/GiftAnimator;->anim(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    :cond_3
    return-void
.end method

.method public onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 3
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
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2, p1}, Ld9/e;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIVE_SEND_GIFT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public synthetic onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, La8/b;->a(Lcom/guochao/faceshow/aaspring/manager/im/d$a;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T4:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->T1()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w:Lsa/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lsa/c;->s()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsLiveOnHome(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0674

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->I()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPeriscopeLayout:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->l()V

    :cond_3
    return-void
.end method

.method public onSelfMute(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setMute(Z)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld9/e;

    .line 4
    invoke-interface {v1, p1}, Ld9/e;->onSelfMute(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    :cond_0
    return-void
.end method

.method public onSoundLevel(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->x5:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y5:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    float-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createVolumeModel(D)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->F(Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPeriscopeLayout:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->k()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mInputArea:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z2(I)V

    .line 6
    new-instance v1, Ly7/j;

    invoke-direct {v1}, Ly7/j;-><init>()V

    .line 7
    iput v0, v1, Ly7/j;->b:I

    .line 8
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->keyboardHeight(Ly7/j;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->keyboardHeight(Ly7/j;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoardNow(Landroid/content/Context;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onUserTypeChanged(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setUserType(I)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld9/e;

    invoke-interface {v2, p1}, Ld9/e;->onUserTypeChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public openDanmu(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object v0

    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->dmSwitch:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    const/16 v3, 0x8

    const-string v4, "KEY_LIVE_DANMU"

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    const/4 p1, 0x3

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->P1(ILandroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I5:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    .line 5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    invoke-virtual {p1, v4}, Lja/a;->e(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mGuideDanmu:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "showDanmu"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static {v1, v2, v5}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 11
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_bullet_chat_click:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 12
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_bullet_chat_click:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mGuideDanmu:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    invoke-virtual {p1, v4}, Lja/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createRejectLinkMicModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method public p1(ZLjava/lang/String;Ljava/lang/String;Ld9/h;)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 3
    :goto_0
    new-instance v9, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;ZLjava/lang/String;Ljava/lang/String;Ld9/h;Z)V

    const/4 p3, 0x3

    const-string p4, "2"

    const-string v0, "1"

    const-string v1, "liveId"

    const-string v2, "matchType"

    if-eqz v8, :cond_3

    const-string p2, "tokens/live/newLive/updateLiveInfo"

    .line 4
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p4, v0

    :goto_1
    invoke-virtual {p2, v2, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, v9}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_3

    :cond_3
    const-string v3, "tokens/live/microphone/updateVoiceStatusOrLiveType"

    .line 5
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v3

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p4, v0

    :goto_2
    invoke-virtual {v3, v2, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string p4, "audienceId"

    .line 6
    invoke-virtual {p1, p4, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p2

    xor-int/2addr p2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "ifUpdateAudience"

    invoke-virtual {p1, p4, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, v9}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_3
    return-void
.end method

.method public p3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->e()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPkWaiting(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    :cond_1
    return-void
.end method

.method public q2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q3()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F:Lcom/guochao/faceshow/views/g;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k;

    const-wide/32 v3, 0x7fffffff

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;JJ)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F:Lcom/guochao/faceshow/views/g;

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-lez v0, :cond_3

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getPhoneEndTime()J

    move-result-wide v3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->timeToString(JZ)Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewBigGiftBoxCount:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewCountDownGift:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const v4, 0x7f0a0142

    if-lez v3, :cond_5

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    if-nez v3, :cond_5

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    .line 16
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-nez v1, :cond_4

    .line 17
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    .line 18
    invoke-virtual {p0, v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    :cond_4
    return-void

    :cond_5
    const/16 v3, 0x8

    if-gtz v0, :cond_6

    .line 19
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewBigGiftBoxCount:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 20
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 21
    :cond_6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewBigGiftBoxCount:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 22
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_0
    if-lez v0, :cond_9

    .line 23
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 24
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a01e4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v6, 0x42700000    # 60.0f

    .line 27
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    const/high16 v7, 0x42960000    # 75.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    add-int/2addr v6, v7

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    add-int/2addr v6, v7

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_b

    .line 28
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLayVoice:Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    .line 29
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 30
    :cond_9
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 31
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R3()V

    .line 33
    :cond_b
    :goto_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewBigGiftBoxCount:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    if-lez v0, :cond_14

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    .line 36
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->iconBigBox:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    const v3, 0x7f0f0209

    goto :goto_2

    :cond_d
    const v3, 0x7f0f035a

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getBoxType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getPhoneEndTime()J

    move-result-wide v0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v0, v5

    invoke-static {v5, v6, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->timeToString(JZ)Ljava/lang/String;

    move-result-object v3

    .line 40
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mTextViewCountDownGift:Landroid/widget/TextView;

    if-eqz v5, :cond_e

    .line 41
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v0, v5

    if-gez v3, :cond_f

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q3()V

    return-void

    :cond_f
    const-wide/16 v5, 0x1770

    sub-long v5, v0, v5

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_14

    .line 46
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    .line 47
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 48
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getTreasureId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;->getTreasureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 49
    :cond_10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 50
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void

    .line 51
    :cond_12
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-nez v3, :cond_13

    .line 52
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    .line 53
    invoke-virtual {p0, v4, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    .line 54
    :cond_13
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->W4:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_14

    .line 55
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->W4:J

    .line 56
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q3()V

    :cond_14
    return-void
.end method

.method public r(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)V
    .locals 1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createApplyLinkMicModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method public r0(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a068e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G5:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$w0;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F3(Z)V

    .line 5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v1, "KEY_SWIPE_TO_SHOW_LIVE_CHAT"

    invoke-virtual {p1, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a069d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->m0()V

    :cond_3
    return-void
.end method

.method protected r2()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H5:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H5:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H5:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public synthetic s()V
    .locals 0

    invoke-static {p0}, Ld9/f;->g(Ld9/g;)V

    return-void
.end method

.method public s2(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s2(Landroidx/fragment/app/FragmentManager;)V

    .line 5
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LiveRoom"

    const-string v2, "dismissAllDialog: "

    .line 9
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public s3(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLinkCountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    :cond_1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G:I

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLinkCountTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G:I

    if-gtz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLinkCountTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLinkCountTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public send(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C3(Z)V

    return-void
.end method

.method public sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->buildMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getPriority()I

    move-result p2

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$r;

    invoke-direct {v1, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Ld9/e$a;)V

    const-string p3, ""

    invoke-static {p1, p3, v0, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendOnlineMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "\u5c1a\u672a\u52a0\u5165\u5230\u7fa4\u7ec4"

    invoke-interface {p2, v1, v0, p1}, Ld9/e$a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string p1, "LiveRoom"

    const-string p2, "\u5c1a\u672a\u52a0\u5165\u7fa4\u7ec4"

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->n3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LIVE_FOLLOW_ANCHOR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LIVE_SHARE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    const-string v2, "TYPE_SHARE"

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LIVE_SEND_GIFT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftBCoinValue()I

    move-result v0

    .line 14
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    .line 15
    invoke-interface {p0, v2, v3}, Ld9/g;->y1(J)V

    .line 16
    :cond_4
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H4:Z

    if-nez v0, :cond_5

    return-void

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LIVE_CUSTOM_MSG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 19
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L5:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    .line 20
    :cond_6
    aget-object v4, v2, v1

    aput-object v4, v2, v3

    .line 21
    aput-object v0, v2, v1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->buildMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getPriority()I

    move-result v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;

    invoke-direct {v3, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    const-string p1, ""

    invoke-static {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public sendLiveMessage(Ljava/lang/String;Ld9/e$a;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const-string v1, "LIVE_CUSTOM_MSG"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getBaseModel(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method public sendLiveMessageCmd(Ljava/lang/String;Ld9/e$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getBaseModel(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method public showLinkMic(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f12069f

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 3
    :cond_0
    instance-of p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUserLiveBanned()I

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getReasonMsgLang()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;->getReasonMsg()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->j()V

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFreeLinkMic()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->checkMicroPhoneLevel(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 15
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 16
    :cond_5
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$s0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    .line 17
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->e2()V

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    if-nez p1, :cond_8

    .line 21
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    .line 22
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 23
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "apply"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->onFocusState(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public t2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/InviteThePkDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method protected t3(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v0, 0x428c0000    # 70.0f

    .line 7
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_3
    const v2, 0x3f255555

    int-to-float v3, v0

    mul-float v3, v3, v2

    float-to-int v2, v3

    sub-int/2addr v0, v2

    .line 10
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    .line 13
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_6

    .line 15
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->refreshChatMargin(ZZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic u1(JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/f;->e(Ld9/g;JI)V

    return-void
.end method

.method public u2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public u3(ILandroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0893

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    const p2, 0x7f0a0142

    if-ne p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->setTouchEnabled(Z)V

    :cond_1
    return-void
.end method

.method public v2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public v3(Ld9/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S4:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S4:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->S4:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->k()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->k()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A3(Z)V

    return-void
.end method

.method public w2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B5:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public w3()V
    .locals 0

    return-void
.end method

.method public synthetic x0()Z
    .locals 1

    invoke-static {p0}, Ld9/f;->d(Ld9/g;)Z

    move-result v0

    return v0
.end method

.method protected x2()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SWIPE_TO_DISMISS_LIVE_CHAT"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H4:Z

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a0d9e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->setLiveScrollToClearScreenView(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    .line 10
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$a0;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$a0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->setTouchEnabled(Z)V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    const v4, 0x7f0a0af5

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    .line 13
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v4

    invoke-virtual {v4}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f110038

    goto :goto_1

    :cond_6
    const v4, 0x7f110037

    .line 14
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$b0;

    invoke-direct {v6, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$b0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-string v0, "swipe_to_dismiss"

    invoke-virtual {v5, v4, v0, v6, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    const v2, 0x7f0a0b47

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1209b8

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->f:Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->G4:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F3(Z)V

    return-void
.end method

.method protected x3()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y3(Z)V

    return-void
.end method

.method public y2(Z)Lcom/guochao/pusher/GCLivePusher;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected y3(Z)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->E4:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u5:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->M:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LittleLinkMicInfoFragment;

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z3()V

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l2()V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t3(Z)V

    return-void
.end method

.method public z0(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p2

    invoke-virtual {p2}, Lc8/b;->m()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p2

    invoke-virtual {p2}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p2}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 3
    iget-object p4, p4, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appActivityGiftEntityList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    if-eqz p5, :cond_2

    .line 4
    invoke-virtual {p5}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getGiftId()I

    move-result v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p5}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getSendCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p5, v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->setSendCount(I)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->u()V

    :cond_4
    return-void
.end method

.method public z1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    return v0
.end method

.method public z2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    return-object v0
.end method
