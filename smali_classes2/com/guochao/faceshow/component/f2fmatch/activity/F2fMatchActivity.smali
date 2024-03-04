.class public final Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;
.implements Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;
.implements Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;
.implements Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    name = "1v1\u5339\u914d\u9996\u9875"
    path = "/component_f2f_match/f2f_match"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$Companion;,
        Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;,
        Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        ">;",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;",
        "Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u0091\u00012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007:\u0006\u0091\u0001\u0092\u0001\u0093\u0001B\u0005\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020+H\u0002J\u0008\u0010A\u001a\u00020?H\u0002J\u0008\u0010B\u001a\u00020?H\u0002J\u0008\u0010C\u001a\u00020?H\u0016J\u0008\u0010D\u001a\u00020?H\u0016J\u0008\u0010E\u001a\u00020?H\u0002J\u0008\u0010F\u001a\u00020?H\u0002J\u0008\u0010G\u001a\u00020?H\u0016J\u0010\u0010H\u001a\u00020+2\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010K\u001a\u00020?2\u0006\u0010L\u001a\u00020+H\u0016J\u0008\u0010M\u001a\u00020?H\u0016J\u000e\u0010M\u001a\u00020?2\u0006\u0010N\u001a\u00020+J\u0018\u0010O\u001a\u00020?2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020+H\u0016J\u0008\u0010S\u001a\u00020%H\u0016J\u0010\u0010T\u001a\u00020?2\u0006\u0010U\u001a\u00020VH\u0002J\u0012\u0010W\u001a\u00020?2\u0008\u0010X\u001a\u0004\u0018\u00010YH\u0016J\u0010\u0010Z\u001a\u00020?2\u0006\u0010[\u001a\u00020+H\u0002J\u0008\u0010N\u001a\u00020?H\u0016J\u0010\u0010\\\u001a\u00020?2\u0006\u0010P\u001a\u00020QH\u0016J\"\u0010]\u001a\u00020?2\u0006\u0010^\u001a\u00020 2\u0006\u0010_\u001a\u00020 2\u0008\u0010`\u001a\u0004\u0018\u00010VH\u0014J\u0010\u0010a\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\u0008\u0010d\u001a\u00020?H\u0016J\u0012\u0010e\u001a\u00020?2\u0008\u0010f\u001a\u0004\u0018\u00010YH\u0014J\u0008\u0010g\u001a\u00020?H\u0014J\u0018\u0010h\u001a\u00020?2\u0006\u0010i\u001a\u00020 2\u0006\u0010j\u001a\u00020 H\u0016J\u0010\u0010k\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\u0012\u0010l\u001a\u00020?2\u0008\u0010m\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010n\u001a\u00020?2\u0006\u0010U\u001a\u00020VH\u0014J\u0008\u0010o\u001a\u00020?H\u0014J\u0010\u0010p\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\u0018\u0010q\u001a\u00020?2\u0006\u0010b\u001a\u00020c2\u0006\u0010r\u001a\u00020sH\u0016J\u0018\u0010t\u001a\u00020?2\u0006\u0010b\u001a\u00020c2\u0006\u0010u\u001a\u00020 H\u0016J\u0010\u0010v\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\u0008\u0010w\u001a\u00020?H\u0014J\u0008\u0010x\u001a\u00020?H\u0014J\u0010\u0010y\u001a\u00020?2\u0006\u0010u\u001a\u00020 H\u0016J\u0008\u0010z\u001a\u00020?H\u0014J\u0010\u0010{\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\u0012\u0010*\u001a\u00020?2\u0008\u0008\u0002\u0010N\u001a\u00020+H\u0002J\u0010\u0010|\u001a\u00020?2\u0006\u0010}\u001a\u00020QH\u0016J\u0008\u0010~\u001a\u00020?H\u0002J\u0008\u0010\u007f\u001a\u00020?H\u0016J\u0012\u0010\u0080\u0001\u001a\u00020?2\u0007\u0010\u0081\u0001\u001a\u00020 H\u0016J\t\u0010\u0082\u0001\u001a\u00020+H\u0016J\t\u0010\u0083\u0001\u001a\u00020?H\u0016J\t\u0010\u0084\u0001\u001a\u00020?H\u0016J\t\u0010\u0085\u0001\u001a\u00020?H\u0016J\t\u0010\u0086\u0001\u001a\u00020?H\u0016J\t\u0010\u0087\u0001\u001a\u00020?H\u0002J\t\u0010\u0088\u0001\u001a\u00020?H\u0002J\t\u0010\u0089\u0001\u001a\u00020?H\u0002J$\u0010\u008a\u0001\u001a\u00020+2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u008d\u0001\u001a\u00020J2\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001J\t\u0010\u0090\u0001\u001a\u00020+H\u0016R\u0014\u0010\t\u001a\u0008\u0018\u00010\nR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0018\u00010\u000cR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020 @BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\"\u0010#R\u001b\u0010$\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008&\u0010\'R\u000e\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010.\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010)\u001a\u0004\u00080\u00101R$\u00103\u001a\u0002048\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00085\u0010\u0008\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001b\u0010:\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u0010)\u001a\u0004\u0008;\u0010<\u00a8\u0006\u0094\u0001"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;",
        "Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;",
        "()V",
        "countDownTask",
        "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;",
        "countUpTask",
        "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;",
        "f2fMatchingFragment",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;",
        "f2fPlayerFragment",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;",
        "f2fPrepareFragment",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;",
        "getF2fPrepareFragment",
        "()Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;",
        "setF2fPrepareFragment",
        "(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V",
        "f2fPreviewFragment",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;",
        "f2fVideoChatFragment",
        "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;",
        "keyboardHeightProvider",
        "Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;",
        "lastMatchTime",
        "",
        "value",
        "",
        "matchGender",
        "setMatchGender",
        "(I)V",
        "proxy",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;",
        "getProxy",
        "()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;",
        "proxy$delegate",
        "Lkotlin/Lazy;",
        "release",
        "",
        "slideTouchHelper",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;",
        "viewAnimator",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;",
        "getViewAnimator",
        "()Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;",
        "viewAnimator$delegate",
        "viewBinding",
        "Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "viewModel$delegate",
        "animateToPreparing",
        "",
        "animating",
        "animateToStartMatching",
        "calSmallVideoSize",
        "cancelMatchAndBackToPrepare",
        "cancelMatchAndExit",
        "checkLiveStatus",
        "clickSmallVideoView",
        "detectNoFaceOnScreen",
        "dispatchTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "exitCurrentRoom",
        "rematch",
        "finish",
        "moveToMini",
        "focusSomebody",
        "gcUser",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "showMessage",
        "getF2fProxy",
        "handleIntent",
        "intent",
        "Landroid/content/Intent;",
        "initView",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "makePlayerViewVisible",
        "visible",
        "notifyFocusEachOther",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "onAgreed",
        "f2fHeartBeatModel",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "onDestroy",
        "onKeyboardHeightChanged",
        "height",
        "orientation",
        "onMatchTimeout",
        "onModelUpdate",
        "model",
        "onNewIntent",
        "onPause",
        "onPlayFirstFrame",
        "onReceiveSeiMessage",
        "json",
        "Lorg/json/JSONObject;",
        "onReject",
        "code",
        "onRemoteUserLeave",
        "onResume",
        "onStart",
        "onStartMatchError",
        "onStop",
        "onUserMatched",
        "report",
        "f2fMatchRoomInfo",
        "restVideoView",
        "retryMatch",
        "setGenderSelection",
        "selection",
        "shouldShowLiveFloatWindow",
        "showGenderFilterDialog",
        "showPendantDialog",
        "slideDownConfirmed",
        "slideUpConfirmed",
        "startCountDown",
        "startCountUp",
        "startMatch",
        "under",
        "view",
        "Landroid/view/View;",
        "event",
        "location",
        "",
        "useBlackTextStatusBar",
        "Companion",
        "CountDownTask",
        "CountUpTask",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private countDownTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countUpTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f2fPlayerFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f2fPrepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f2fPreviewFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private keyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastMatchTime:J

.field private matchGender:I

.field private final proxy$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private release:Z

.field private final slideTouchHelper:Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewAnimator$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->Companion:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->slideTouchHelper:Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;

    .line 3
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$viewAnimator$2;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$viewAnimator$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->viewAnimator$delegate:Lkotlin/Lazy;

    .line 4
    sget-object v1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->proxy$delegate:Lkotlin/Lazy;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v1

    const-string v2, "app()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPrepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPreviewFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPlayerFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->matchGender:I

    return-void
.end method

.method public static final synthetic access$startMatch(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->startMatch()V

    return-void
.end method

.method private final animateToPreparing(Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setMatchState(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showMatching(Z)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewAnimator()Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->preview:Landroid/widget/FrameLayout;

    const-string v1, "viewBinding.preview"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->prepare:Landroid/widget/FrameLayout;

    const-string v2, "viewBinding.prepare"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->matching:Landroid/widget/FrameLayout;

    const-string v3, "viewBinding.matching"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->animToPrepare(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private final animateToStartMatching()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewAnimator()Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->preview:Landroid/widget/FrameLayout;

    const-string v2, "viewBinding.preview"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->prepare:Landroid/widget/FrameLayout;

    const-string v3, "viewBinding.prepare"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->matching:Landroid/widget/FrameLayout;

    const-string v4, "viewBinding.matching"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->anim(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showMatching(Z)V

    return-void
.end method

.method private final calSmallVideoSize()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoArea:Landroidx/cardview/widget/CardView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x42ac0000    # 86.0f

    .line 3
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 5
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41400000    # 12.0f

    .line 10
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    .line 11
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final checkLiveStatus()V
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->showForbiddenLiveDialogIfNeed(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V

    return-void
.end method

.method private final clickSmallVideoView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getMatchState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPreviewFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;->previewView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const-string v1, "f2fPreviewFragment.viewBinding.previewView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPlayerFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;->playerView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const-string v2, "f2fPlayerFragment.viewBinding.playerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoArea:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->playerViewMoveToMiniSize(Z)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->playerViewMoveToMiniSize(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->handleIntent$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->initView$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->handleIntent$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    return-void
.end method

.method private final getProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->proxy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    return-object v0
.end method

.method private final getViewAnimator()Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->viewAnimator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final handleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "fromService"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "matched"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->launchMatch(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->launchMatch(Z)V

    .line 5
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getLastMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/activity/c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/c;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getMatchState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/activity/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/b;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static final handleIntent$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->animateToStartMatching()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->onUserMatched(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    return-void
.end method

.method private static final handleIntent$lambda-5(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->animateToStartMatching()V

    return-void
.end method

.method private static final initView$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->start()V

    return-void
.end method

.method private final makePlayerViewVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPlayerFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 3
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final release(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->release:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->release:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    invoke-virtual {p1, p0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnMainThread()V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    invoke-static {p1, v1, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->cancelMatch$default(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->stopLocalPreview()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setF2fMatchCallback(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V

    return-void
.end method

.method static synthetic release$default(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->release(Z)V

    return-void
.end method

.method private final restVideoView()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewAnimator()Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->getAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoArea:Landroidx/cardview/widget/CardView;

    const-string v1, "viewBinding.smallVideoArea"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPlayerFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;->playerViewParent:Landroid/widget/FrameLayout;

    const-string v2, "f2fPlayerFragment.viewBinding.playerViewParent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPreviewFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPreviewBinding;->previewView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const-string v3, "f2fPreviewFragment.viewBinding.previewView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPlayerFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fPlayerBinding;->playerView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const-string v4, "f2fPlayerFragment.viewBinding.playerView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final setMatchGender(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->matchGender:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setMatchGender(I)V

    return-void
.end method

.method private final startCountDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countDownTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->setCancel(Z)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->setExitRoomOnCancel(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countUpTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;->setCancel(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countUpTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->countDownTime:Landroid/widget/TextView;

    const-string v2, "viewBinding.countDownTime"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getLifecycleSupportedScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/widget/TextView;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countDownTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    return-void
.end method

.method private final startCountUp()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->lastMatchTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->lastMatchTime:J

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countDownTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->setCancel(Z)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->setExitRoomOnCancel(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countUpTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;->setCancel(Z)V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countDownTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v3, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->countDownTime:Landroid/widget/TextView;

    const-string v1, "viewBinding.countDownTime"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getLifecycleSupportedScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    iget-wide v5, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->lastMatchTime:J

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/widget/TextView;Lkotlinx/coroutines/CoroutineScope;J)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countUpTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    return-void
.end method

.method private final startMatch()V
    .locals 4

    .line 1
    invoke-static {}, Ln7/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$string;->Network_Error:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 3
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->matchGender:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->diamondsEnoughToFilterGender(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->animateToStartMatching()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->matchGender:I

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$startMatch$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$startMatch$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->markStateStartMatching(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public cancelMatchAndBackToPrepare()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->animateToPreparing(Z)V

    return-void
.end method

.method public cancelMatchAndExit()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->finish()V

    return-void
.end method

.method public detectNoFaceOnScreen()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->detectNoFaceOnScreen()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->slideTouchHelper:Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [I

    .line 7
    iget-object v3, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 8
    iget-object v3, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    const-string v4, "binding.liveBottomInputLy"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->under(Landroid/view/View;Landroid/view/MotionEvent;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomInputLy:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, v2, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->liveBottomEditText:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoardNow(Landroid/content/Context;Landroid/view/View;)V

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    new-array v0, v1, [I

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    const-string v2, "viewBinding.smallVideoContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->under(Landroid/view/View;Landroid/view/MotionEvent;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->clickSmallVideoView()V

    .line 15
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 16
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public exitCurrentRoom(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showMatching(Z)V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countUpTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;->setCancel(Z)V

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countDownTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->setExitRoomOnCancel(Z)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;->setCancel(Z)V

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countDownTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->countUpTask:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->animateToStartMatching()V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 11
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->makePlayerViewVisible(Z)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->removeChat()V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showWaitingMatchRoomInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->restVideoView()V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$exitCurrentRoom$3;

    invoke-direct {v1, p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$exitCurrentRoom$3;-><init>(ZLcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->cancelMatch(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final finish(Z)V
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->release(Z)V

    return-void
.end method

.method public focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V

    return-void
.end method

.method public final getF2fPrepareFragment()Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPrepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    return-object v0
.end method

.method public getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->checkLiveStatus()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/activity/a;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/a;-><init>(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v2}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->keyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setF2fMatchCallback(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->smallVideoContainer:Landroidx/cardview/widget/CardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->calSmallVideoSize()V

    .line 9
    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;->matching:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->slideTouchHelper:Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;->setCallback(Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    if-nez p1, :cond_2

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 14
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->preview:I

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPreviewFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 15
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->prepare:I

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPrepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 16
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->matching:I

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 17
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->player:I

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPlayerFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 18
    sget v0, Lcom/guochao/faceshow/component/f2fmatch/R$id;->video_message_chat:I

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    .line 20
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 22
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 23
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_F2F_GUIDE"

    invoke-virtual {p1, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fGuideFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fGuideFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "guide"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public moveToMini()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getMatchState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    iget v2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->matchGender:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->markStateStartMatching(ILkotlin/jvm/functions/Function1;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->f2fMoveToMini()V

    .line 4
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->finish(Z)V

    return-void
.end method

.method public notifyFocusEachOther(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->startCountUp()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->onActivityResult(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAgreed(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPlayerFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;->startPlay(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getMatchState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->finish(Z)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->moveToMini()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->finish(Z)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/trtc/DeprecatedTRTCCloud;->setSystemVolumeType(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->onEnterF2f()V

    const-string p1, "f2f_match_gender"

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfInt2(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->setMatchGender(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000c

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->releaseMini()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->keyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->close()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/DeprecatedTRTCCloud;->setSystemVolumeType(I)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->release(Z)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->onKeyboardHeightChanged(II)V

    return-void
.end method

.method public synthetic onKeyboardHeightChanged(III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/e;->a(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;III)V

    return-void
.end method

.method public onMatchTimeout(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer$DefaultImpls;->exitCurrentRoom$default(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;ZILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object p1

    invoke-interface {p1, p0, p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->showRetryAlertDialog(Landroid/content/Context;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V

    return-void
.end method

.method public bridge synthetic onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->onModelUpdate(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;)V

    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    instance-of p1, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->makePlayerViewVisible(Z)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->keyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    :cond_0
    return-void
.end method

.method public onPlayFirstFrame(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->lastMatchTime:J

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showMatching(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->makePlayerViewVisible(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAttentionStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-nez v2, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    :goto_1
    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_5

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->startCountDown()V

    goto :goto_7

    :cond_8
    const/4 v1, 0x2

    if-nez v2, :cond_9

    goto :goto_7

    .line 9
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->startCountUp()V

    .line 11
    :cond_a
    :goto_7
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->matchGender:I

    if-eq v1, v3, :cond_b

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->shouldCostFilterDiamonds()V

    .line 13
    :cond_b
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->confirmMatchSuccess(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->setCurrentUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->exit:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method public onReceiveSeiMessage(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "guass"

    .line 1
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->receiveGuass(I)V

    :cond_0
    return-void
.end method

.method public onReject(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;I)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "f2fHeartBeatModel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer$DefaultImpls;->exitCurrentRoom$default(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;ZILjava/lang/Object;)V

    return-void
.end method

.method public onRemoteUserLeave(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer$DefaultImpls;->exitCurrentRoom$default(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;ZILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fVideoChatFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;->exit:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->keyboardHeightProvider:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;->Companion:Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;->stop(Landroid/content/Context;)V

    return-void
.end method

.method public onStartMatchError(I)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0xc351

    if-ne p1, v1, :cond_0

    .line 1
    sget p1, Lcom/guochao/faceshow/component/f2fmatch/R$string;->match_balance:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->exitCurrentRoom(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->cancelMatchAndBackToPrepare()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->finish(Z)V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;->Companion:Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onUserMatched(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPrepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->agreeMatch(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->showWaitingMatchRoomInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

    return-void
.end method

.method public report(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fMatchRoomInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;->report(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V

    return-void
.end method

.method public retryMatch()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->startMatch()V

    return-void
.end method

.method public final setF2fPrepareFragment(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fPrepareFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;

    return-void
.end method

.method public setGenderSelection(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->setMatchGender(I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->setMatchGender(I)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->setMatchGender(I)V

    :goto_0
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->viewBinding:Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;

    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showGenderFilterDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getF2fProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->matchGender:I

    invoke-interface {v0, p0, v1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/FilterSexDialogFinder;->showGenderFilterDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    return-void
.end method

.method public showPendantDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getProxy()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/PendantDialogFinder;->showPendantDialog(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method public slideDownConfirmed()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewAnimator()Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->getAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getMatchState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->moveToMini()V

    return-void
.end method

.method public slideUpConfirmed()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewAnimator()Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;->getAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getMatchState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->f2fMatchingFragment:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;->getViewBinding()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;->matchingArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v0, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer$DefaultImpls;->exitCurrentRoom$default(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_F2F_SLIDE_UP"

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->startMatch()V

    return-void
.end method

.method public final under(Landroid/view/View;Landroid/view/MotionEvent;[I)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 2
    aget p3, p3, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p3

    int-to-float v1, v1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_0

    int-to-float p3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpl-float p3, p3, v1

    if-lez p3, :cond_0

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public useBlackTextStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
