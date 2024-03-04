.class public Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$f;
.implements Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;
.implements Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$OnPrefetchListener;
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m0;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j0;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l0;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;
    }
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE_PAGE_SIZE:I = 0xf

.field public static final MIN_INDEX_TO_SCROLL_TO_BOTTOM:I = 0x1

.field public static final mChatPools:[Ljava/lang/String;


# instance fields
.field animViewLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private chatTime:J

.field floatTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

.field giftBean:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

.field ivBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivFocus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCallBack:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;

.field mCanScrollDown:Z

.field mCancel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

.field mFirst:Z

.field mFloatingView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFollow:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mImImageAndVideoZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;

.field private mInputtingFooter:Landroid/view/View;

.field mInputtingViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;

.field private mIsLoadingMessageFromSever:Z

.field mKeyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

.field private mLastVisibleChildIndex:I

.field mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field mMainContentView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;"
        }
    .end annotation
.end field

.field mPhotoFile:Ljava/io/File;

.field mReceiptListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mRemoveInputtingRunnable:Ljava/lang/Runnable;

.field protected mRevokeListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l0;

.field private mShowingInputting:Z

.field merge:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field statusBarPlaceHolderViewHeight:I

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toolbarHeight:I

.field private translateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private translatePopupWindow:Lcom/guochao/faceshow/aaspring/views/TranslatePopupWindow;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatPools:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRemoveInputtingRunnable:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCanScrollDown:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLastVisibleChildIndex:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->chatTime:J

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFirst:Z

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCallBack:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;

    return-void
.end method

.method static synthetic access$002(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mShowingInputting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingFooter:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkFriendRelation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkUmChat()V

    return-void
.end method

.method static synthetic access$1200(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendResponse(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendImageFile(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->getBaseDir()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkAndshowTranslatePopup()V

    return-void
.end method

.method static synthetic access$302(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLastVisibleChildIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mIsLoadingMessageFromSever:Z

    return p0
.end method

.method static synthetic access$402(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mIsLoadingMessageFromSever:Z

    return p1
.end method

.method static synthetic access$500(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ILcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->loadMessage(ILcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->toChatDetailActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkIfShouldTrackHelloStar(ILjava/lang/String;)V

    return-void
.end method

.method private addChatNum()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->getChatNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->obtainChatKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->lambda$showTranslatePopupWindow$0(Landroid/view/View;)V

    return-void
.end method

.method private checkAndshowTranslatePopup()V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getTransSwitchEnableFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_IS_TRANSLATE_TAG"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->statusBarPlaceHolderViewHeight:I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->toolbarHeight:I

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->showTranslatePopupWindow()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->hideTranslatePopupWindow()V

    :goto_0
    return-void
.end method

.method private checkChatSourceTrack()V
    .locals 9

    .line 1
    const-class v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 4
    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 5
    const-class v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivityStack()Ljava/util/Stack;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_0
    if-ltz v6, :cond_7

    .line 8
    invoke-virtual {v5, v6}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 12
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 14
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 16
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 18
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4
    instance-of v8, v7, Lcom/guochao/faceshow/activity/MainActivity;

    if-eqz v8, :cond_6

    .line 20
    check-cast v7, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v7}, Lcom/guochao/faceshow/activity/MainActivity;->k1()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 21
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_5
    invoke-virtual {v7}, Lcom/guochao/faceshow/activity/MainActivity;->i1()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 23
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private checkDraft()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->f2()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getDraftText()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getConversationID()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$f;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->setConversationDraft(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setDraft(Z)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgTime(J)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->R0(Z)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez v0, :cond_3

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getConversationID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$g;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->setConversationDraft(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->F0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private checkFriendRelation()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp_friend_relation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v4, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;->getFriends()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;->getFriends()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 6
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_5

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v4, "api/token/social/imchat/add"

    invoke-direct {v1, v4}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    .line 8
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->type:I

    const/16 v5, 0x63

    if-eq v4, v5, :cond_3

    const/16 v5, 0x64

    if-ne v4, v5, :cond_4

    .line 9
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v1, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fromUserId"

    invoke-virtual {v1, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "toUserIds"

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    :cond_5
    return-void
.end method

.method private checkGiftMessagePlayed(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->isAnimationPlayed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mGiftAnimationDispatcher:Lj8/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object v1

    iget v1, v1, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gift_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj8/a;->f(Ljava/lang/Integer;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->setAnimationPlayed()V

    :cond_2
    return-void
.end method

.method private checkIfShouldTrackEveryFirstFirstMsg()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstMessageTime"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    const-string v4, "conversation"

    invoke-static {v4, v0, v3}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToday()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->reply_first_msg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/UserBean;

    iget v4, v4, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->g0()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getGender()I

    move-result v1

    .line 9
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->send_first_msg:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private checkIfShouldTrackFirstMsg()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;->isFirstMsg()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "Reply_imgreet"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkIfShouldTrackHelloStar(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/CloudCustomData;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CloudCustomData;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/CloudCustomData;->getCode()I

    move-result v1

    const/16 v3, -0x65

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/CloudCustomData;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-ne p1, v2, :cond_0

    const-string p1, "desc"

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string p2, "imchat_hellostar_replythank"

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private checkIfShouldTrackOneDay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;

    .line 5
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;->isOneDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->h24_reply_greeted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkIfShouldTrackPlant()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;->isFirstMsg()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 9
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->replay_msg_from_plant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;->isFirstMsg()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 11
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->replay_msg_from_plant_surprise:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkIfShouldTrackSayHi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;

    .line 5
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;->isSayHi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "sayhi_reply"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i:Ljava/lang/String;

    const-string v2, "systemCountry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v2, "Reply_sayhiim"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private checkInputting(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v3, :cond_3

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-nez v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v3

    .line 5
    instance-of v6, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/InputtingMessage;

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_7

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingFooter:Landroid/view/View;

    if-nez p1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {p1, v1, v2}, Li8/a;->d(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingFooter:Landroid/view/View;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingFooter:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_6

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingFooter:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addFooterView(Landroid/view/View;)I

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;->c()V

    .line 13
    :cond_5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingFooter:Landroid/view/View;

    invoke-direct {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;

    .line 14
    invoke-virtual {p1, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->bindViews(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRemoveInputtingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRemoveInputtingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    iput-boolean v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mShowingInputting:Z

    .line 18
    invoke-virtual {p0, v5, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->scrollToEnd(ZZ)V

    goto :goto_3

    .line 19
    :cond_7
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mShowingInputting:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingFooter:Landroid/view/View;

    if-eqz p1, :cond_8

    if-nez v2, :cond_8

    .line 20
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mShowingInputting:Z

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeFooterView(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;->c()V

    :cond_8
    :goto_3
    return-void
.end method

.method private checkPlantSendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->type:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->sent_msg_from_plant:Ljava/lang/String;

    const-string v2, "sp_plant_head_click"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkUpData(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->sent_msg_from_plant_surprise:Ljava/lang/String;

    const-string v2, "sp_plant_random_click"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkUpData(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkUmChat()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "withUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->chatTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->chatTime:J

    :cond_0
    return-void
.end method

.method private checkUpData(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;->getFriends()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;->getFriends()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;

    invoke-direct {v3, p3}, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-virtual {p1, p3}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setCloudCustomData(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {p1, p4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;-><init>()V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;->getFriends()Ljava/util/List;

    move-result-object p3

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private getBaseDir()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "im_files"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getGroupID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Ljava/io/File;

    const-string v3, "c2c"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getConversationID()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/io/File;

    const-string v1, "image"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/io/File;

    const-string v2, "origin"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChatNum()I
    .locals 1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->obtainChatKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getChatTime(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "\u301010s\u4ee5\u5185\u3011"

    return-object p1

    :cond_0
    const-wide/32 v0, 0x2bf20

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "\u30101-3\u5206\u949f\u3011"

    return-object p1

    :cond_1
    const-wide/32 v0, 0x927c0

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    const-string p1, "\u30103-10\u5206\u949f\u3011"

    return-object p1

    :cond_2
    const-wide/32 v0, 0x124f80

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    const-string p1, "\u301010-20\u5206\u949f\u3011"

    return-object p1

    :cond_3
    const-wide/32 v0, 0x1b7740

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    const-string p1, "\u301020-30\u5206\u949f\u3011"

    return-object p1

    :cond_4
    const-wide/32 v0, 0x249f00

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    const-string p1, "\u301030-40\u5206\u949f\u3011"

    return-object p1

    :cond_5
    const-wide/32 v0, 0x36ee80

    cmp-long v2, p1, v0

    if-gez v2, :cond_6

    const-string p1, "\u301040\u5206\u949f-60\u5206\u949f\u3011"

    return-object p1

    :cond_6
    const-string p1, "\u30101\u5c0f\u65f6\u4ee5\u4e0a\u3011"

    return-object p1
.end method

.method private initMessage()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;-><init>()V

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetType(I)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setUserID(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0xf

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setCount(I)V

    .line 6
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j0;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getHistoryMessageList(Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method private interceptMsgBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatPools:[Ljava/lang/String;

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return v4

    .line 5
    :cond_0
    aget-object p1, v2, v4

    aput-object p1, v2, v1

    .line 6
    aput-object v0, v2, v4

    :cond_1
    return v1
.end method

.method private synthetic lambda$showTranslatePopupWindow$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->hideTranslatePopupWindow()V

    return-void
.end method

.method private loadMessage(ILcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCallBack:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getC2CHistoryMessageList(Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method private loadSearchData(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mKeyword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setSearchKeyword(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;

    invoke-direct {v1, p0, p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getC2CHistoryMessageList(Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method public static navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public static navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "userId"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "name"

    .line 5
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "withUM"

    .line 6
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p3

    invoke-interface {p3}, Lb8/d;->c()Lb8/a;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "otherLanguage"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x14000000

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private obtainChatKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_chat_num"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private recoverData(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_e

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "status"

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "otherLanguage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "mIsLoadingMessageFromSever"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "mConversationInfo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const-string v1, "mLastVisibleChildIndex"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "mTIMConversation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "withUM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_8
    const-string v1, "userId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_9
    const-string v1, "photoFile"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_a
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_b
    const-string v1, "search"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_c
    const-string v1, "fromNewMatch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 3
    :pswitch_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 4
    :pswitch_1
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mIsLoadingMessageFromSever:Z

    goto :goto_1

    .line 5
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    goto :goto_1

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 7
    :pswitch_4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    goto :goto_1

    .line 8
    :pswitch_5
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLastVisibleChildIndex:I

    goto :goto_1

    .line 9
    :pswitch_6
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    goto :goto_1

    .line 10
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 11
    :pswitch_8
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    goto :goto_1

    .line 12
    :pswitch_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mPhotoFile:Ljava/io/File;

    goto :goto_1

    .line 13
    :pswitch_a
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    goto :goto_1

    .line 14
    :pswitch_b
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mKeyword:Ljava/lang/String;

    goto :goto_1

    .line 15
    :pswitch_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_e
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f788a31 -> :sswitch_c
        -0x36059a58 -> :sswitch_b
        -0x3532300e -> :sswitch_a
        -0x3291c132 -> :sswitch_9
        -0x31d4d1ba -> :sswitch_8
        -0x2ef15e22 -> :sswitch_7
        -0x1d5506f2 -> :sswitch_6
        -0x108f533b -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x1f40865e -> :sswitch_2
        0x289a3725 -> :sswitch_1
        0x6f576688 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->insertC2CMessageToLocalStorage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->scrollToEnd(ZZ)V

    return-void
.end method

.method private sendImageFile(ZLcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendImageFile(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$u;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$u;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Landroid/net/Uri;)V

    invoke-virtual {p2, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$t;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)V

    .line 4
    invoke-virtual {p2, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method private sendImageFile(ZLjava/lang/String;)V
    .locals 9

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const v2, 0x7f12016e

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 8
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9
    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v4, 0x1c00000

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    const p1, 0x7f12016f

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-direct {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;-><init>(Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkMessageBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private sendMsgToServer(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkIfShouldTrackSayHi()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkIfShouldTrackOneDay()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkIfShouldTrackFirstMsg()V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkIfShouldTrackPlant()V

    .line 6
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkPlantSendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkIfShouldTrackEveryFirstFirstMsg()V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Z()V

    .line 9
    instance-of v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setFriend(Z)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-eqz v1, :cond_3

    .line 12
    invoke-static {}, Lo9/b;->d()Lo9/a;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1}, Lo9/a;->a(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i;

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-static {v1, v0, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    .line 13
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setNewMessage(Z)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 16
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->scrollToEnd(ZZ)V

    :cond_3
    return-void
.end method

.method private sendResponse(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->giftBean:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gname:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->giftBean:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->price:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->giftBean:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    iput p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->counts:I

    .line 5
    iput p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->numbers:I

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getSvgaUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Url()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->svga_url:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->giftBean:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->giftBean:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p1

    iput p1, p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gift_id:I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->giftBean:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result p2

    iput p2, p1, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->typeId:I

    .line 10
    new-instance p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;

    invoke-direct {p1}, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;-><init>()V

    const-string p2, "c2c_gift"

    .line 11
    iput-object p2, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    .line 12
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    .line 13
    check-cast p2, Ljava/util/Map;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    const-string v0, "userId"

    invoke-static {p3, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "senderId"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p2, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    const-string v0, "nickname"

    invoke-static {p3, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "senderName"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p2, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    const-string v0, "recieverName"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p2, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    const-string v0, "recieverId"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->giftBean:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 18
    iget-object p3, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p3, Ljava/util/Map;

    const-string v0, "giftInfo"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    .line 20
    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 21
    invoke-virtual {p2, p1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkMessageBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private sendTips(ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;

    invoke-direct {v0}, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;-><init>()V

    const-string v1, "c2c_fsx1"

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    .line 4
    iput p1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg_type:I

    .line 5
    check-cast v1, Ljava/util/Map;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "senderId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const-string v3, "nickname"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "senderName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    const-string v3, "recieverName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    const-string v3, "recieverId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "msg_text"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg_type"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :try_start_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$h;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    .line 12
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 13
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    .line 15
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 16
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendMsgToServer(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sendVideoMessage(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$o;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readVideoDetail(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$q;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    .line 4
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$p;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method private shouldScrollToEnd()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-gez v0, :cond_2

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLastVisibleChildIndex:I

    goto :goto_0

    .line 5
    :cond_2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLastVisibleChildIndex:I

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    if-lez v0, :cond_5

    if-lt v0, v2, :cond_5

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v2, v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    if-gt v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v1
.end method

.method private toChatDetailActivity()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget v7, v1, v5

    aget v8, v1, v6

    aget v5, v1, v5

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v5, v9

    aget v1, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v4, v7, v8, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$b;

    invoke-direct {v1, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-static {v0, v4, v3, v1, v2}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/utils/Tools;->captureScreen(Landroid/view/Window;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatBitmap:Landroid/graphics/Bitmap;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->startProfile()V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterGetConversation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->e2(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a01e3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 7
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mReceiptListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l0;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRevokeListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l0;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->floatTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mReceiptListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/a;->y(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRevokeListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l0;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->z(Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getDraftText()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->p2(Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez v0, :cond_4

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->initChatControl(Z)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAutoTransFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslate:Z

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getPreferentialLang()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    .line 22
    :cond_5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->m(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->l(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->setOnCheckDataListener(Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter$a;)V

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->k0()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 27
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->loadSearchData(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->initMessage()V

    .line 29
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->x(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public cancel(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const p1, 0x7f0a01e8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->setHeaderSpace()V

    return-void
.end method

.method public checkMessageBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 6

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendMsgToServer(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mHasSendMessage:Z

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setOtherLanguage(Ljava/lang/String;)V

    .line 5
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    if-eqz v1, :cond_1

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkGiftMessagePlayed(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendMsgToServer(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const/16 v2, 0x3ea

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setLocalCustomInt(I)V

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 11
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFirst:Z

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    const-string p1, "\u6d88\u606f\u53d1\u9001\u5931\u8d25\uff1amChatStatusBean == null"

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->showError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->interceptMsgBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendMsgToServer(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    goto/16 :goto_0

    .line 16
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v0, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setLocalCustomInt(I)V

    .line 18
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v1, 0x7f12004a

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->from(ILjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    const-string p1, "\u6d88\u606f\u53d1\u9001\u5931\u8d25\uff1amChatStatusBean.getIsChat() == 1 \u88ab\u62c9\u9ed1"

    .line 20
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->showError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    if-ne v1, v3, :cond_b

    const/4 v1, 0x0

    .line 22
    instance-of v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v2, :cond_6

    .line 23
    move-object v1, p1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->hasUrl(Ljava/lang/String;)Z

    move-result v1

    :cond_6
    const-string v2, ""

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    const/16 v3, 0x3ec

    invoke-virtual {v1, v3}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setLocalCustomInt(I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    const/16 p1, 0x7d1

    .line 27
    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->from(ILjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    goto/16 :goto_0

    .line 28
    :cond_7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->getChatNum()I

    move-result v1

    const-string v3, "accountId"

    const-string v4, "tokens/im/sendMsg/addImCount"

    if-lt v1, v0, :cond_9

    .line 29
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->interceptMsgBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 30
    :cond_8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendMsgToServer(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->isChatLimit(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 32
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->addChatLimitUser(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_0

    .line 34
    :cond_9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    move-result-object v1

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->isChatLimit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 35
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;

    move-result-object v1

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatLimitManager;->addChatLimitUser(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 37
    :cond_a
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendMsgToServer(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 38
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->from(ILjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 39
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->addChatNum()V

    goto :goto_0

    .line 40
    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_c

    .line 41
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setLocalCustomInt(I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    const p1, 0x7f12018b

    .line 43
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    const-string p1, "\u6d88\u606f\u53d1\u9001\u5931\u8d25\uff1amChatStatusBean.getIsChat() == 3 \u5bf9\u65b9\u8bbe\u7f6e\u4e86\u4e0d\u60f3\u63a5\u6536\u964c\u751f\u4eba\u6d88\u606f"

    .line 44
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->showError(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setLocalCustomInt(I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 47
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFirst:Z

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6d88\u606f\u53d1\u9001\u5931\u8d25\uff1amChatStatusBean.getIsChat() == "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isChat\u672a\u5b9a\u4e49\u7684\u503c"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->showError(Ljava/lang/String;)V

    .line 49
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz p1, :cond_e

    .line 50
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getChatNum()I

    move-result p1

    add-int/2addr p1, v0

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->setChatNum(I)V

    .line 52
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz p1, :cond_e

    iget v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->n:I

    if-nez v0, :cond_e

    .line 53
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->W1(Ljava/lang/String;)V

    .line 54
    :cond_e
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz p1, :cond_f

    .line 55
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->Z1(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    :cond_f
    return-void
.end method

.method public checkSendEnable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->Z1(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public filterMessages(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;->filterMessage(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 4
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkGiftMessagePlayed(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->setHasRead(Z)V

    :cond_2
    return-object p1
.end method

.method public finish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isNewConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mHasSendMessage:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mFromNewMatch:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    const-string v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method public follow(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    const v2, 0x7f11000b

    invoke-static {v1, p1, v2}, Lib/a;->a(Landroid/widget/ImageView;Lcom/guochao/faceshow/views/SvgaImageViewV2;I)V

    :cond_0
    const p1, 0x7f0a01e8

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->setHeaderSpace()V

    .line 6
    new-instance p1, Ly7/e;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-direct {p1, v0}, Ly7/e;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ly7/e;->g(Z)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_IS_FOCUS_TAG"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$w;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$w;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-static {p1, v0, p0, v1}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getChatControllerFragment()Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    return-object v0
.end method

.method public getGiftAnimationDispatcher()Lj8/a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mGiftAnimationDispatcher:Lj8/a;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0082

    return v0
.end method

.method public hideTranslatePopupWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translatePopupWindow:Lcom/guochao/faceshow/aaspring/views/TranslatePopupWindow;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->merge:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_IS_TRANSLATE_TAG"

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkChatSourceTrack()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromNewMatch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mFromNewMatch:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->type:I

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->withChat:Z

    .line 6
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 8
    :cond_2
    instance-of v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-nez v0, :cond_3

    .line 9
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 10
    :cond_3
    new-instance v0, Lj8/a;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->animViewLay:Landroid/view/ViewGroup;

    invoke-direct {v0, p0, v3}, Lj8/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mGiftAnimationDispatcher:Lj8/a;

    .line 11
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$c0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$c0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils;->closeAnimator(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->refreshEndIcon()V

    return-void
.end method

.method protected listenKeyboard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "search"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mKeyword:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->g0()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->finish()V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->finish()V

    return-void

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->afterGetConversation()V

    goto :goto_0

    .line 22
    :cond_5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$c;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    .line 23
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2c_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 24
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->N0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    return-void
.end method

.method public notifyData(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 3
    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setTranslate(Z)V

    .line 4
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setOtherLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_0

    .line 4
    invoke-static {p3}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p3

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$a0;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$a0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {p3, v2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p3

    .line 5
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v2

    invoke-virtual {p3, v2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p3

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v2

    invoke-virtual {p3, v2}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p3

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$z;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$z;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {p3, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendImageFile(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    if-ne p2, v1, :cond_2

    const/16 p3, 0x64

    if-ne p1, p3, :cond_2

    .line 8
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mPhotoFile:Ljava/io/File;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mPhotoFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendImageFile(ZLjava/lang/String;)V

    :cond_2
    if-ne p2, v1, :cond_3

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_3

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-class p2, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz p1, :cond_3

    .line 11
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "withUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->chatTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-string v3, "0"

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->chatTime:J

    sub-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->getChatTime(J)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "Chat_Time"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public onCameraClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f12069f

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendPhoto()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->o2(Z)V

    :cond_1
    return-void
.end method

.method public onChatInputModeChanged(I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "fromNewMatch"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "type"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "status"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->loadData(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "otherLanguage"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->listenKeyboard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mKeyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$v;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->listenKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mKeyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->close()V

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->onDestroy()V

    return-void
.end method

.method public onEventBus(Landroid/content/Intent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOLLOW_CANCLE"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "FOLLOW_ADD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BLACK_NAME_ADD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BLACK_NAME_CANCLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "userId"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    :cond_2
    const-string p1, "profile_black_succ"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    const v1, 0x7f1200a1

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->from(ILjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    :cond_3
    const-string p1, "black_name_cancle_other"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    :cond_4
    return-void
.end method

.method public onFaceItemClick(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->from(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkMessageBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->W1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onGalleryClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$s;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public onInputting(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/InputtingMessage;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/InputtingMessage;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$x;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$x;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendOnLineC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 3

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyboardHeightChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ChatActivity"

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-lez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMainContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->d2()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMainContentView:Landroid/view/View;

    invoke-virtual {v0, p2, p2, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCanScrollDown:Z

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->scrollToEnd(ZZ)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMainContentView:Landroid/view/View;

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 8
    invoke-virtual {p0, p2, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->scrollToEnd(ZZ)V

    :cond_2
    return-void
.end method

.method public synthetic onKeyboardHeightChanged(III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/e;->a(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;III)V

    return-void
.end method

.method public onMediaMessageClick(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;ILcom/guochao/faceshow/aaspring/modulars/chat/models/a;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 4
    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    if-eqz v3, :cond_1

    .line 5
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ne p3, v2, :cond_2

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mImImageAndVideoZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;

    if-nez p1, :cond_4

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;

    invoke-direct {p1, p0, p0}, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$OnPrefetchListener;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mImImageAndVideoZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;

    .line 9
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->registerOnPrefetchMessageListener(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$c;)V

    .line 10
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->O0(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mImImageAndVideoZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, p4, v1, p3}, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->start(Ljava/util/List;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a2()V

    :cond_5
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->release()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->p2(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mMessageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->loadData(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    return-void
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mHasSendMessage:Z

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkInputting(Ljava/util/List;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->filterMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->setTranslateTag(Ljava/util/List;Z)V

    .line 8
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslateLanguage:Z

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translateList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translateList:Ljava/util/List;

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 13
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 15
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translateList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translateList:Ljava/util/List;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$y;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$y;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->f(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkUmChat()V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->g(Ljava/util/List;)V

    .line 21
    invoke-virtual {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->scrollToEnd(ZZ)V

    goto :goto_2

    .line 22
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkUmChat()V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->g(Ljava/util/List;)V

    .line 25
    invoke-virtual {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->scrollToEnd(ZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->listenKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mKeyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    :cond_0
    return-void
.end method

.method public onRecordEnd(Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;->from(JLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkMessageBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFloatingView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0603ce

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public onRecordStart(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFloatingView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "#66000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x6

    .line 6
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setStatus(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "withUM"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "photoFile"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "startCamera"

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "recycle"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "mIsLoadingMessageFromSever"

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "mLastVisibleChildIndex"

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "mTIMConversation"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->recoverData(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->listenKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mKeyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    const-string v1, "otherLanguage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "withUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromNewMatch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mKeyword:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->type:I

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const-string v1, "mConversationInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photoFile"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mIsLoadingMessageFromSever:Z

    const-string v1, "mIsLoadingMessageFromSever"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLastVisibleChildIndex:I

    const-string v1, "mLastVisibleChildIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    const-string v1, "mTIMConversation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendImageFile(ZLcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 5
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->sendVideoMessage(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    goto :goto_0

    :cond_2
    const-string p2, "ChatActivity"

    const-string v0, "onSelect:  \u9009\u4e2d\u4e86\u5c1a\u672a\u652f\u6301\u7684\u6587\u4ef6\u7c7b\u578b"

    .line 6
    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZIILcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;IZII",
            "Lcom/guochao/faceshow/gift/SendGiftCallBack;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move/from16 v6, p4

    move/from16 v0, p7

    .line 2
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 3
    :cond_0
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result v2

    invoke-direct {v7, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;-><init>(Ljava/lang/String;Z)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, v8, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, p6

    .line 6
    invoke-virtual {v7, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendType(I)V

    .line 7
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setToUserIds(Ljava/util/List;)V

    .line 8
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setBusinessId(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const-string v1, "1"

    .line 9
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "0"

    .line 10
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSinglePrice(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v7, v6}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendNumber(I)V

    if-lez v0, :cond_2

    .line 13
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setBreakType(I)V

    :cond_2
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v0, v0, v6

    move v9, v0

    goto :goto_1

    :catch_0
    const/4 v9, 0x0

    .line 15
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result v10

    new-instance v11, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object v3, p2

    move/from16 v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/gift/SendGiftCallBack;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    new-instance v12, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;

    move-object v0, v12

    move-object v2, p2

    move/from16 v3, p4

    move-object v4, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v10

    move-object v2, v7

    move-object v3, v11

    move-object v4, v12

    move v6, v9

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->checkSendGiftType(Landroidx/lifecycle/LifecycleOwner;ILcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Lcom/guochao/faceshow/aaspring/base/http/callback/c;ZIZ)V

    :cond_3
    return-void
.end method

.method public onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;IZ",
            "Lcom/guochao/faceshow/gift/SendGiftCallBack;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZIILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    return-void
.end method

.method public onSendNormalCallMessage(Lcom/guochao/faceshow/aaspring/modulars/trtc/message/a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public onShouldPrefetch(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->loadMessage(ILcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method protected onStop()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onStop()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkDraft()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "withUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->chatTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-string v3, "0"

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->chatTime:J

    sub-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->getChatTime(J)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "Chat_Time"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected refreshEndIcon()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getOnlineCode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v3

    const v4, 0x7f0f05f0

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    const/high16 v4, 0x41200000    # 10.0f

    .line 4
    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v5

    invoke-static {v4}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v4

    invoke-virtual {v3, v2, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    invoke-direct {v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->append(Landroid/text/SpannableStringBuilder;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    .line 6
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->floatTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0f01c7

    const v3, 0x7f0f0230

    .line 8
    invoke-virtual {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(II)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAppointState()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz v0, :cond_3

    .line 10
    instance-of v1, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-nez v1, :cond_2

    .line 11
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->ivVideo:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->ivVideo:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 14
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->ivVideo:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focusSVGA:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/4 v1, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v4

    if-gt v4, v1, :cond_6

    goto :goto_1

    :cond_6
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$f0;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$f0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    sget v3, Lib/b;->a:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->floatTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v2

    if-gt v2, v1, :cond_8

    goto :goto_3

    :cond_8
    const/high16 v1, 0x42700000    # 60.0f

    .line 24
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 25
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkAndshowTranslatePopup()V

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->floatTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$g0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$g0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivMore:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$h0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$h0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->release()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->G(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRevokeListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l0;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->I(Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mGiftAnimationDispatcher:Lj8/a;

    invoke-virtual {v0}, Lj8/a;->g()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRevokeListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$l0;

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mReceiptListener:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k0;

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-void
.end method

.method public scrollToEnd(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->shouldScrollToEnd()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    if-lez p2, :cond_5

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public sendPhoto()V
    .locals 2

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$r;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public sendText(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_1

    const p1, 0x7f1200a0

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    const p1, 0x7f120036

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz v0, :cond_3

    const-string v1, ""

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->p2(Ljava/lang/String;)V

    .line 9
    :cond_3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/FirstMessage;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setCloudCustomData(Ljava/lang/String;)V

    .line 12
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->hasKeyword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x13881

    .line 13
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setErrorCode(I)V

    .line 14
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setLocalCustomInt(I)V

    .line 15
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->saveMessageToLocal(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->scrollToEnd()V

    return-void

    .line 17
    :cond_5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkMessageBeforeSend(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void
.end method

.method public setTranslateTag(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setNewMessage(Z)V

    .line 4
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslate:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->isTranslateLanguage:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setTranslate(Z)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->otherLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setOtherLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showFocusPopupWindow()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_IS_FOCUS_TAG"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->checkAndshowTranslatePopup()V

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->ivFocus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$b0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$b0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->focuspopupWindow:Lcom/guochao/faceshow/aaspring/views/ImFocusPopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    nop

    :cond_5
    :goto_0
    return-void
.end method

.method public showTranslatePopupWindow()V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translatePopupWindow:Lcom/guochao/faceshow/aaspring/views/TranslatePopupWindow;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/TranslatePopupWindow;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TranslatePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translatePopupWindow:Lcom/guochao/faceshow/aaspring/views/TranslatePopupWindow;

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800035

    .line 6
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x41600000    # 14.0f

    .line 7
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 8
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->merge:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translatePopupWindow:Lcom/guochao/faceshow/aaspring/views/TranslatePopupWindow;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->merge:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0597

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    :goto_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->statusBarPlaceHolderViewHeight:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->toolbarHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->translatePopupWindow:Lcom/guochao/faceshow/aaspring/views/TranslatePopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method startProfile()V
    .locals 4

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_IS_TRANSLATE_TAG"

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    const/16 v3, 0x3e9

    invoke-static {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->B0(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Ljava/lang/String;I)V

    return-void
.end method
