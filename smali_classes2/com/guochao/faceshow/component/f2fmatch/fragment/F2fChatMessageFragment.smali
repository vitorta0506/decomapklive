.class public final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$a;
.implements Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;
.implements Lu8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00cd\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0006*\u0001i\u0018\u0000 m2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001mB\u0007\u00a2\u0006\u0004\u0008l\u0010MJ#\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\tH\u0002J#\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0007H\u0002J*\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\tH\u0002J\u0008\u0010\u001f\u001a\u00020\tH\u0002J\u0012\u0010\"\u001a\u00020\t2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020#2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0014J\u0008\u0010&\u001a\u00020\tH\u0016J\u0010\u0010)\u001a\u00020\t2\u0006\u0010(\u001a\u00020\'H\u0007J\u0010\u0010+\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020*H\u0016J\u0010\u0010-\u001a\u00020\t2\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0018\u00101\u001a\u00020\t2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u0007H\u0016J\u0010\u00103\u001a\u00020\t2\u0006\u00102\u001a\u00020.H\u0016J\u0010\u00105\u001a\u00020\t2\u0006\u00104\u001a\u00020\u0007H\u0016J\u0010\u00108\u001a\u00020\t2\u0006\u00107\u001a\u000206H\u0016J\u0008\u00109\u001a\u00020\tH\u0016JF\u0010@\u001a\u00020\t2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020;\u0018\u00010:2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010=\u001a\u00020\u00072\u0008\u0010?\u001a\u0004\u0018\u00010>H\u0016J\u0008\u0010A\u001a\u00020\tH\u0016J\u0008\u0010B\u001a\u00020\tH\u0016J\u0006\u0010C\u001a\u00020\tJ\u0006\u0010D\u001a\u00020\tR(\u0010F\u001a\u00020E8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008F\u0010G\u0012\u0004\u0008L\u0010M\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008/\u0010N\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0018\u0010W\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0016\u0010Y\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0016\u0010[\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010ZR\u0016\u0010\\\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010ZR\u0016\u0010]\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010ZR\u0016\u0010^\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010ZR\u0014\u0010`\u001a\u00020_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0018\u0010c\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\u0016\u0010f\u001a\u00020e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0016\u0010h\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010ZR\u0014\u0010j\u001a\u00020i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010k\u00a8\u0006n"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "Lcom/guochao/faceshow/aaspring/manager/im/d$a;",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;",
        "Lu8/b;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;",
        "giftMessage",
        "",
        "isSelf",
        "",
        "playGift",
        "(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;Ljava/lang/Boolean;)V",
        "notifyFocusEachOther",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;",
        "msg",
        "addMessage",
        "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;)V",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "message",
        "forceOnline",
        "sendMessageToIM",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        "itemBean",
        "",
        "count",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
        "categoryItem",
        "",
        "userId",
        "sendGiftResponse",
        "removeSpeech",
        "scrollToBottom",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/View;",
        "root",
        "initView",
        "onDestroyView",
        "Ly7/e;",
        "focusEvent",
        "onFocusEvent",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "onNewMessage",
        "text",
        "sendText",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "gcUser",
        "showFoucusMessage",
        "focusSomebody",
        "f2fMatchRoomInfo",
        "removeCurrentGuass",
        "textOrSpeech",
        "enterInput",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;",
        "f2fSpeechToTextResultModel",
        "sendSpeechToTextResult",
        "showGiftDialog",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
        "users",
        "isToken",
        "Lcom/guochao/faceshow/gift/SendGiftCallBack;",
        "sendGiftCallBack",
        "onSelectGift",
        "awakenChatRecyclerView",
        "detectNoFaceOnScreen",
        "cancelRecord",
        "setConversationRead",
        "Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "getGcUser",
        "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "setGcUser",
        "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;",
        "f2fGiftAnimator",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;",
        "Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;",
        "adapter",
        "Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;",
        "shouldTranslate",
        "Z",
        "useOnlineMessage",
        "speeching",
        "textTranslationTipsShowed",
        "speechTranslationTipsShowed",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "giftFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "Ljava/lang/Runnable;",
        "hideRecyclerViewRunnable",
        "Ljava/lang/Runnable;",
        "noFaceTip",
        "com/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1",
        "callBack",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1;",
        "<init>",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callBack:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f2fGiftAnimator:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

.field private giftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hideRecyclerViewRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mGiftAnimationDispatcher:Lj8/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private noFaceTip:Z

.field private shouldTranslate:Z

.field private speechTranslationTipsShowed:Z

.field private speeching:Z

.field private textTranslationTipsShowed:Z

.field private useOnlineMessage:Z

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->Companion:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->useOnlineMessage:Z

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->handler:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/c;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->hideRecyclerViewRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->callBack:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->hideRecyclerViewRunnable$lambda-21(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->sendSpeechToTextResult$lambda-17(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->initView$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->enterInput$lambda-12(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->onNewMessage$lambda-8$lambda-7(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$sendGiftResponse(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->sendGiftResponse(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Ljava/lang/String;)V

    return-void
.end method

.method private final addMessage(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->speeching:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;->getMsgList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    .line 6
    invoke-virtual {v6}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getMessageType()I

    move-result v6

    const/16 v7, 0x3ed

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    :goto_2
    if-ltz v5, :cond_4

    .line 7
    invoke-virtual {v0, p1, v5}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;->add(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;I)V

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {v0, p1, v4, v3, v2}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;->add$default(Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;IILjava/lang/Object;)V

    goto :goto_3

    .line 9
    :cond_5
    invoke-static {v0, p1, v4, v3, v2}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;->add$default(Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;IILjava/lang/Object;)V

    .line 10
    :goto_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getImMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getImMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;Ljava/lang/Boolean;)V

    .line 12
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->scrollToBottom()V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->awakenChatRecyclerView()V

    return-void
.end method

.method static synthetic addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final enterInput$lambda-12(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->scrollToBottom()V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final hideRecyclerViewRunnable$lambda-21(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;->recyclerView:Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static final initView$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->awakenChatRecyclerView()V

    const/4 p0, 0x0

    return p0
.end method

.method public static final newInstance(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;
    .locals 1
    .param p0    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->Companion:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$Companion;->newInstance(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    move-result-object p0

    return-object p0
.end method

.method private final notifyFocusEachOther()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->notifyFocusEachOther(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->useOnlineMessage:Z

    return-void
.end method

.method private static final onNewMessage$lambda-8$lambda-7(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/util/List;)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x17

    const/4 v9, 0x0

    move-object v2, p1

    .line 3
    invoke-static/range {v2 .. v9}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->copy$default(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILjava/lang/Object;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    move-result-object p1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, v1, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->mGiftAnimationDispatcher:Lj8/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object v1

    iget v1, v1, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gift_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj8/a;->f(Ljava/lang/Integer;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p2

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getMatchUserIsInSmallPosition()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->f2fGiftAnimator:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getMatchUserIsInSmallPosition()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->f2fGiftAnimator:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic playGift$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final removeSpeech()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;->getMsgList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    .line 5
    invoke-virtual {v4}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getMessageType()I

    move-result v4

    const/16 v5, 0x3ed

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_4

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;->getMsgList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private final scrollToBottom()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;->recyclerView:Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;->recyclerView:Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;->recyclerView:Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, -0x80000000

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private final sendGiftResponse(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gname:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemBean.price"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->price:I

    .line 4
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

    .line 7
    :goto_0
    iput-object p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->svga_url:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p2

    iput p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gift_id:I

    .line 10
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result p2

    iput p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->typeId:I

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getSizeType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->giftTypeId:Ljava/lang/String;

    const-string p1, ""

    const/4 p2, 0x2

    .line 12
    invoke-static {v0, p1, p4, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->from(Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;Ljava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    move-result-object v4

    .line 13
    iget-object p1, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const-string p3, "giftMessage.message"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-static {p0, p1, p3, p2, p4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->sendMessageToIM$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/tencent/imsdk/v2/V2TIMMessage;ZILjava/lang/Object;)V

    .line 14
    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1a

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage(Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final sendMessageToIM(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->useOnlineMessage:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendOnLineC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    :goto_1
    return-void
.end method

.method static synthetic sendMessageToIM$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/tencent/imsdk/v2/V2TIMMessage;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->sendMessageToIM(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)V

    return-void
.end method

.method private static final sendSpeechToTextResult$lambda-17(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->scrollToBottom()V

    return-void
.end method


# virtual methods
.method public awakenChatRecyclerView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;->recyclerView:Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->hideRecyclerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->speeching:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->hideRecyclerViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final cancelRecord()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->stopAudioRecord(Z)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->removeSpeech()V

    return-void
.end method

.method public detectNoFaceOnScreen()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->noFaceTip:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->noFaceTip:Z

    .line 4
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/4 v2, 0x1

    const v1, 0x7f12029b

    .line 5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v0, v2, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public enterInput(Z)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    xor-int/lit8 v2, v1, 0x1

    .line 1
    iput-boolean v2, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->speeching:Z

    .line 2
    iget-object v2, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/fragment/e;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/e;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    iget-boolean v2, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->shouldTranslate:Z

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v2, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->textTranslationTipsShowed:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-boolean v2, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->speechTranslationTipsShowed:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 6
    iput-boolean v3, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->textTranslationTipsShowed:Z

    .line 7
    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/16 v6, 0x3e8

    .line 8
    sget-object v5, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;

    invoke-virtual {v5, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->buildSpeechTranslateTip(Z)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v5, v3

    .line 9
    invoke-direct/range {v5 .. v12}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    invoke-static {v0, v3, v4, v2, v4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_3
    iput-boolean v3, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->speechTranslationTipsShowed:Z

    .line 12
    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/16 v14, 0x3e9

    .line 13
    sget-object v5, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;

    invoke-virtual {v5, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->buildSpeechTranslateTip(Z)Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1c

    const/16 v20, 0x0

    move-object v13, v3

    .line 14
    invoke-direct/range {v13 .. v20}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    invoke-static {v0, v3, v4, v2, v4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V
    .locals 12
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "gcUser"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;->setFocused(Z)V

    .line 3
    :goto_0
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;->Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;

    const-string v1, "c2c_follow"

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;->newMessage(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;

    move-result-object v5

    .line 4
    iget-object p2, v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const-string v1, "it.message"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->sendMessageToIM(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result p2

    const/4 v1, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne p2, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->setAttentionStatus(I)V

    .line 7
    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/16 v3, 0x9

    .line 8
    sget-object v1, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;

    invoke-virtual {v1, p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->followUserTip(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v2, p2

    .line 9
    invoke-direct/range {v2 .. v9}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    invoke-static {p0, p2, v11, v10, v11}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result p2

    if-nez p2, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->setAttentionStatus(I)V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->notifyFocusEachOther()V

    .line 14
    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/16 v1, 0x9

    .line 15
    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->followEachOtherTip(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    invoke-static {p0, p2, v11, v10, v11}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "gcUser"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    move-result-object p2

    .line 3
    iget-object v0, p2, Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;->recyclerView:Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;->recyclerView:Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "layoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;->recyclerView:Lcom/guochao/faceshow/aaspring/views/TopFadeInRecyclerView;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v2

    .line 10
    invoke-direct {v0, v1, v2, p0}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/model/GCUser;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V

    .line 11
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;

    .line 12
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->x(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->mGiftAnimationDispatcher:Lj8/a;

    if-nez p2, :cond_1

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    new-instance v0, Lj8/a;

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "gift_anim"

    .line 18
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v2, 0x3

    .line 19
    invoke-direct {v0, v1, p2, v2}, Lj8/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->mGiftAnimationDispatcher:Lj8/a;

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->awakenChatRecyclerView()V

    .line 21
    new-instance p2, Lcom/guochao/faceshow/component/f2fmatch/fragment/a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/a;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/utils/ActivityExtendsKt;->safeRegisterEventBus(Landroidx/lifecycle/LifecycleOwner;)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->f2fGiftAnimator:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "data"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->setGcUser(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/utils/TranslateUtils;->shouldTranslate(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->shouldTranslate:Z

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result p1

    if-eq p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->useOnlineMessage:Z

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->G(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->mGiftAnimationDispatcher:Lj8/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj8/a;->g()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->giftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->f2fGiftAnimator:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->reset()V

    :cond_2
    return-void
.end method

.method public final onFocusEvent(Ly7/e;)V
    .locals 3
    .param p1    # Ly7/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "focusEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Ly7/e;->c()Z

    move-result p1

    const-string v0, "focus"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 20
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const-string v1, "message"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getConversationType()I

    move-result v2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->setConversationRead()V

    .line 5
    instance-of v1, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    .line 6
    new-instance v12, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/4 v2, 0x7

    .line 7
    move-object v1, v4

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v12

    move-object/from16 v4, p1

    .line 8
    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v1, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    if-eqz v1, :cond_3

    .line 10
    new-instance v12, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v12

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 11
    :cond_3
    instance-of v1, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;

    if-eqz v1, :cond_5

    .line 12
    move-object v1, v4

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;->getF2f_cmd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "c2c_follow"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    new-instance v12, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/16 v2, 0x9

    .line 14
    sget-object v1, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v3

    invoke-virtual {v1, v3, v10}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->followUserTip(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v12

    move-object/from16 v4, p1

    .line 15
    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;->getF2f_cmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "c2c_rmGuass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->removeGuass(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    :cond_5
    move-object v12, v11

    :goto_0
    if-eqz v12, :cond_a

    .line 19
    invoke-virtual {v12}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getImMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    const/4 v2, 0x2

    if-eqz v1, :cond_7

    .line 20
    iget-boolean v1, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->shouldTranslate:Z

    if-eqz v1, :cond_6

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v1

    .line 22
    invoke-virtual {v12}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getMsg()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 23
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v3

    invoke-virtual {v3}, Lq7/a;->g()Ljava/lang/String;

    move-result-object v3

    .line 24
    new-instance v4, Lcom/guochao/faceshow/component/f2fmatch/fragment/b;

    invoke-direct {v4, v0, v12}, Lcom/guochao/faceshow/component/f2fmatch/fragment/b;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->g(Ljava/util/List;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    goto/16 :goto_1

    .line 25
    :cond_6
    invoke-static {v0, v12, v11, v2, v11}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 26
    :cond_7
    invoke-virtual {v12}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getImMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    if-eqz v1, :cond_8

    .line 27
    invoke-static {v0, v12, v11, v2, v11}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 28
    :cond_8
    invoke-virtual {v12}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getImMessage()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;

    if-eqz v1, :cond_a

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_9

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->setAttentionStatus(I)V

    .line 31
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/16 v13, 0x8

    const v3, 0x7f120290

    new-array v4, v9, [Ljava/lang/Object;

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 33
    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1c

    const/16 v19, 0x0

    move-object v12, v1

    .line 34
    invoke-direct/range {v12 .. v19}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    invoke-static {v0, v1, v11, v2, v11}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 36
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1, v11, v2, v11}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result v1

    if-ne v1, v9, :cond_a

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->setAttentionStatus(I)V

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->notifyFocusEachOther()V

    .line 40
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/16 v4, 0x9

    .line 41
    sget-object v3, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fSpanTipsUtils;->followEachOtherTip(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v3, v1

    .line 42
    invoke-direct/range {v3 .. v10}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    invoke-static {v0, v1, v11, v2, v11}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public bridge synthetic onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, La8/b;->a(Lcom/guochao/faceshow/aaspring/manager/im/d$a;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSelectGift(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p5}, Lu8/a;->a(Lu8/b;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 17
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/gift/SendGiftCallBack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;-><init>(Ljava/lang/String;Z)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendType(I)V

    .line 6
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setToUserIds(Ljava/util/List;)V

    .line 7
    invoke-virtual {v7, v5}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setBusinessId(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const-string v0, "1"

    .line 8
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 9
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemBean.price"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSinglePrice(Ljava/lang/String;)V

    move/from16 v3, p4

    .line 11
    invoke-virtual {v7, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendNumber(I)V

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result v15

    new-instance v16, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$onSelectGift$1;

    move-object/from16 v8, v16

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p4

    move-object/from16 v12, p1

    move-object v13, v5

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$onSelectGift$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Ljava/lang/String;Lcom/guochao/faceshow/gift/SendGiftCallBack;)V

    .line 13
    new-instance v8, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$onSelectGift$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$onSelectGift$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v7

    move-object/from16 v3, v16

    move-object v4, v8

    move v7, v9

    move v8, v10

    move-object v9, v11

    .line 14
    invoke-static/range {v0 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->checkSendGiftType$default(Landroidx/lifecycle/LifecycleOwner;ILcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Lcom/guochao/faceshow/aaspring/base/http/callback/c;ZIZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lu8/a;->c(Lu8/b;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    return-void
.end method

.method public removeCurrentGuass(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fMatchRoomInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;->Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;

    const-string v0, "c2c_rmGuass"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage$Companion;->newMessage(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const-string v0, "F2fCmdMessage.newMessage\u2026F2F_REMOVE_GUASS).message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->sendMessageToIM(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)V

    :cond_0
    return-void
.end method

.method public sendSpeechToTextResult(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V
    .locals 13
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fSpeechToTextResultModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->getCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->removeSpeech()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;->getMsgList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    .line 4
    invoke-virtual {v5}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->getMessageType()I

    move-result v5

    const/16 v6, 0x3ed

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 5
    :goto_1
    check-cast v4, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {v4, p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;->setF2fSpeechToTextResultModel(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->adapter:Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 8
    :cond_4
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/16 v5, 0x3ed

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V

    .line 9
    invoke-static {p0, v0, v3, v1, v3}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 10
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->getFinalResult()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    iput-boolean v2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->speeching:Z

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    move-result-object v0

    .line 13
    new-instance v12, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/4 v5, 0x7

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->getResult()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v4, v12

    move-object v7, v0

    .line 15
    invoke-direct/range {v4 .. v11}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    invoke-static {p0, v12, v3, v1, v3}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 17
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const-string v1, "from(f2fSpeechToTextResu\u2026 it.message\n            }"

    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->sendMessageToIM(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)V

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;->getFinalResult()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->removeSpeech()V

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/d;-><init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->awakenChatRecyclerView()V

    return-void
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    move-result-object v4

    .line 2
    iget-object v0, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {p0, v0, v1, v9, v10}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->sendMessageToIM$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/tencent/imsdk/v2/V2TIMMessage;ZILjava/lang/Object;)V

    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    const/4 v2, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;-><init>(ILjava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Ljava/lang/String;Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    invoke-static {p0, v0, v10, v9, v10}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->addMessage$default(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public final setConversationRead()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->getGcUser()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->callBack:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment$callBack$1;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    :cond_0
    return-void
.end method

.method public final setGcUser(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->gcUser:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentF2fChatMessageBinding;

    return-void
.end method

.method public showGiftDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f13000b

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getInstance(IIZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "gift_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    move-object v3, v0

    .line 4
    :cond_1
    iput-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->giftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    :cond_2
    :goto_0
    return-void
.end method
