.class public final Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0014J\u0018\u00106\u001a\u0002042\u0010\u0008\u0002\u00107\u001a\n\u0012\u0004\u0012\u000204\u0018\u000108J\u0011\u00109\u001a\u00020:H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010;J\u000e\u0010<\u001a\u0002042\u0006\u00105\u001a\u00020\u0014J\u0008\u0010=\u001a\u000204H\u0002J\u0012\u0010>\u001a\u0002042\u0008\u0010?\u001a\u0004\u0018\u00010\u0014H\u0002J\u0010\u0010@\u001a\u0002042\u0008\u0008\u0002\u0010A\u001a\u00020:J\u000e\u0010B\u001a\u0002042\u0006\u0010C\u001a\u00020DJ\u0006\u0010E\u001a\u000204J&\u0010F\u001a\u0002042\u0006\u0010G\u001a\u00020\u00192\u0016\u0008\u0002\u0010H\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u000204\u0018\u00010IJ\u001c\u0010J\u001a\u0002042\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u000204\u0018\u00010IJ(\u0010L\u001a\u0002042\u0006\u0010G\u001a\u00020\u00192\u0016\u0008\u0002\u0010H\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u000204\u0018\u00010IH\u0002J\u0016\u0010M\u001a\u0002042\u0006\u00105\u001a\u00020\u00142\u0006\u0010N\u001a\u00020OJ\u0010\u0010P\u001a\u0002042\u0008\u0008\u0002\u0010Q\u001a\u00020:R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0019@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR \u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00190 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R$\u0010%\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0019@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001c\"\u0004\u0008\'\u0010\u001eR\u001b\u0010(\u001a\u00020)8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008*\u0010+R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u000102X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006R"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        "()V",
        "autoCancelRunnable",
        "Ljava/lang/Runnable;",
        "cancellationSignal",
        "Landroid/os/CancellationSignal;",
        "f2fDataSource",
        "Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;",
        "value",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;",
        "f2fMatchCallback",
        "getF2fMatchCallback",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;",
        "setF2fMatchCallback",
        "(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V",
        "heartBeatJob",
        "Lkotlinx/coroutines/Job;",
        "lastMatchUserInfo",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
        "getLastMatchUserInfo",
        "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
        "setLastMatchUserInfo",
        "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V",
        "",
        "matchGender",
        "getMatchGender",
        "()I",
        "setMatchGender",
        "(I)V",
        "matchGenderLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getMatchGenderLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setMatchGenderLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "matchState",
        "getMatchState",
        "setMatchState",
        "pusherModel",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;",
        "getPusherModel",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;",
        "pusherModel$delegate",
        "Lkotlin/Lazy;",
        "startMatchResult",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;",
        "startMatchRunnable",
        "trtcSignatureModel",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;",
        "agreeMatch",
        "",
        "f2fHeartBeatModel",
        "cancelMatch",
        "callback",
        "Lkotlin/Function0;",
        "checkGoogleCloudAvailable",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "confirmMatchSuccess",
        "getGoogleAccessToken",
        "handleHeartBeatResult",
        "result",
        "launchMatch",
        "previewOnly",
        "markRemoteUserLeaveRoom",
        "userId",
        "",
        "markStatePrepare",
        "markStateStartMatching",
        "gender",
        "retry",
        "Lkotlin/Function1;",
        "startAudioRecord",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;",
        "startMatch",
        "startPlay",
        "playerView",
        "Lcom/tencent/rtmp/ui/TXCloudVideoView;",
        "stopAudioRecord",
        "cancel",
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


# instance fields
.field private final autoCancelRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancellationSignal:Landroid/os/CancellationSignal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f2fDataSource:Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private heartBeatJob:Lkotlinx/coroutines/Job;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastMatchUserInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private matchGender:I

.field private matchGenderLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private matchState:I

.field private final pusherModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startMatchResult:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startMatchRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trtcSignatureModel:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/a;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$special$$inlined$lazyGlobalViewModel$default$1;

    invoke-direct {v3, v0, v2, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->pusherModel$delegate:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fDataSource:Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;

    const/4 v0, -0x2

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchGender:I

    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchGenderLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchState:I

    .line 10
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/b;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->autoCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/session/model/UserSessionModel;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setMatchGender(I)V

    return-void
.end method

.method public static final synthetic access$getAutoCancelRunnable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->autoCancelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getF2fDataSource$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fDataSource:Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;

    return-object p0
.end method

.method public static final synthetic access$getGoogleAccessToken(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getGoogleAccessToken()V

    return-void
.end method

.method public static final synthetic access$getStartMatchRunnable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$handleHeartBeatResult(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->handleHeartBeatResult(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    return-void
.end method

.method public static final synthetic access$setStartMatchResult$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatchResult:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;

    return-void
.end method

.method public static final synthetic access$setStartMatchRunnable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setTrtcSignatureModel$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->trtcSignatureModel:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;

    return-void
.end method

.method public static final synthetic access$startMatch(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatch(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final autoCancelRunnable$lambda-2(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->lastMatchUserInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onRemoteUserLeave(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatch$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic cancelMatch$default(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->cancelMatch(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/session/model/UserSessionModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->_init_$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/session/model/UserSessionModel;)V

    return-void
.end method

.method public static synthetic f(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->autoCancelRunnable$lambda-2(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V

    return-void
.end method

.method private final getGoogleAccessToken()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$getGoogleAccessToken$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$getGoogleAccessToken$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleHeartBeatResult(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onMatchTimeout(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    goto :goto_6

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onReject(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;I)V

    goto :goto_6

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_6

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onReject(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;I)V

    goto :goto_6

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    goto :goto_4

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_a

    :goto_4
    const/4 p1, 0x2

    if-nez v0, :cond_8

    goto :goto_5

    .line 9
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_a

    :goto_5
    if-nez v0, :cond_9

    goto :goto_6

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :cond_a
    :goto_6
    return-void
.end method

.method public static synthetic launchMatch$default(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->launchMatch(Z)V

    return-void
.end method

.method public static synthetic markStateStartMatching$default(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->markStateStartMatching(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final startMatch(ILkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->trtcSignatureModel:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/c;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatchRunnable:Ljava/lang/Runnable;

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->autoCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    new-instance v5, Landroid/os/CancellationSignal;

    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v5, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 5
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    const/4 v8, 0x0

    new-instance v9, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILandroid/os/CancellationSignal;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method static synthetic startMatch$default(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatch(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final startMatch$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatch(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic stopAudioRecord$default(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->stopAudioRecord(Z)V

    return-void
.end method


# virtual methods
.method public final agreeMatch(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$agreeMatch$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$agreeMatch$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->trtcSignatureModel:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$agreeMatch$2$1;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$agreeMatch$2$1;

    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$agreeMatch$2$2;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$agreeMatch$2$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->enterRoom(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final cancelMatch(Lkotlin/jvm/functions/Function0;)V
    .locals 14
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatchRunnable:Ljava/lang/Runnable;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->heartBeatJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->heartBeatJob:Lkotlinx/coroutines/Job;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->exitRoom()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 7
    iget v7, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchState:I

    .line 8
    iget-object v5, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatchResult:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;

    if-eqz v5, :cond_2

    .line 9
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;Lkotlin/jvm/functions/Function0;ILkotlin/coroutines/Continuation;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 10
    :cond_2
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setMatchState(I)V

    .line 11
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatchResult:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;

    return-void
.end method

.method public final checkGoogleCloudAvailable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$checkGoogleCloudAvailable$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$checkGoogleCloudAvailable$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final confirmMatchSuccess(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$confirmMatchSuccess$1$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$confirmMatchSuccess$1$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/tencent/trtc/TRTCCloud;->muteRemoteAudio(Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->autoCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getF2fMatchCallback()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    return-object v0
.end method

.method public final getLastMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->lastMatchUserInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    return-object v0
.end method

.method public final getMatchGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchGender:I

    return v0
.end method

.method public final getMatchGenderLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchGenderLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getMatchState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchState:I

    return v0
.end method

.method public final getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->pusherModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    return-object v0
.end method

.method public final launchMatch(Z)V
    .locals 6

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->launchMatch()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getGoogleAccessToken()V

    return-void
.end method

.method public final markRemoteUserLeaveRoom(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->lastMatchUserInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onRemoteUserLeave(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    :cond_0
    return-void
.end method

.method public final markStatePrepare()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setMatchState(I)V

    return-void
.end method

.method public final markStateStartMatching(ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setMatchState(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setMatchGender(I)V

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchGender:I

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatch(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setF2fMatchCallback(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->setF2fMatchCallback(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V

    return-void
.end method

.method public final setLastMatchUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->lastMatchUserInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    return-void
.end method

.method public final setMatchGender(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchGender:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchGenderLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const-string v0, "f2f_match_gender"

    .line 3
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfInt2(Ljava/lang/String;I)V

    return-void
.end method

.method public final setMatchGenderLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchGenderLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setMatchState(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchState:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->matchState:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->setMatchingState(I)V

    return-void
.end method

.method public final startAudioRecord(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->startRecord(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final startPlay(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/rtmp/ui/TXCloudVideoView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1, p2}, Lcom/tencent/trtc/TRTCCloud;->startRemoteView(Ljava/lang/String;ILcom/tencent/rtmp/ui/TXCloudVideoView;)V

    return-void
.end method

.method public final stopAudioRecord(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getPusherModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->stopRecord(Z)V

    return-void
.end method
