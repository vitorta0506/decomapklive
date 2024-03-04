.class public final Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003JG\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052!\u00104\u001a\u001d\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(7\u0012\u0004\u0012\u00020\u00060\u0015J\u0006\u00108\u001a\u00020\u0006J\u0006\u00109\u001a\u00020\u0006J\u000e\u0010:\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u0018J\u0010\u0010<\u001a\u00020\u00062\u0008\u0010=\u001a\u0004\u0018\u00010\u0016J\u0008\u0010>\u001a\u00020\u0006H\u0002J\u0010\u0010?\u001a\u00020\u00062\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u001c\u0010B\u001a\u00020\u00062\u0014\u00103\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0015J\u0006\u0010D\u001a\u00020\u0006J\u0010\u0010E\u001a\u00020\u00062\u0008\u0008\u0002\u0010F\u001a\u00020\u0018R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0018@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008*\u0010+\u00a8\u0006G"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "enterRoomCallback",
        "Lkotlin/Function0;",
        "",
        "value",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;",
        "f2fMatchCallback",
        "getF2fMatchCallback",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;",
        "setF2fMatchCallback",
        "(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V",
        "",
        "matchingState",
        "getMatchingState",
        "()I",
        "setMatchingState",
        "(I)V",
        "onUserVideoAvailable",
        "Lkotlin/Function1;",
        "",
        "preparing",
        "",
        "getPreparing",
        "()Z",
        "setPreparing",
        "(Z)V",
        "removeGuass",
        "getRemoveGuass",
        "setRemoveGuass",
        "speechToTextUtils",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;",
        "trtcBeautyProcessor",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;",
        "trtcCloud",
        "Lcom/tencent/trtc/TRTCCloud;",
        "getTrtcCloud",
        "()Lcom/tencent/trtc/TRTCCloud;",
        "viewModel",
        "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "getViewModel",
        "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "enterRoom",
        "f2fHeartBeatModel",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
        "model1",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;",
        "callback",
        "videoAvailableCallback",
        "Lkotlin/ParameterName;",
        "name",
        "userId",
        "exitRoom",
        "launchMatch",
        "muteLocalPreview",
        "mute",
        "setGoogleToken",
        "googleToken",
        "setTrtcDontCloseCameraAfterExitRoom",
        "startLocalPreview",
        "txCloudVideoView",
        "Lcom/tencent/rtmp/ui/TXCloudVideoView;",
        "startRecord",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;",
        "stopLocalPreview",
        "stopRecord",
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
.field private enterRoomCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private matchingState:I

.field private onUserVideoAvailable:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private preparing:Z

.field private removeGuass:Z

.field private final speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private trtcBeautyProcessor:Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trtcCloud:Lcom/tencent/trtc/TRTCCloud;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->viewModel$delegate:Lkotlin/Lazy;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/trtc/TRTCCloud;->sharedInstance(Landroid/content/Context;)Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setGSensorMode(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, v1}, Lcom/tencent/trtc/TRTCCloud;->setDefaultStreamRecvMode(ZZ)V

    const-string v2, "sharedInstance(GCApplica\u2026ecvMode(true, true)\n    }"

    .line 8
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    .line 10
    iput v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->matchingState:I

    return-void
.end method

.method public static final synthetic access$getEnterRoomCallback$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->enterRoomCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getOnUserVideoAvailable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->onUserVideoAvailable:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getSpeechToTextUtils$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setEnterRoomCallback$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->enterRoomCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$setOnUserVideoAvailable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->onUserVideoAvailable:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    return-object v0
.end method

.method private final setTrtcDontCloseCameraAfterExitRoom()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "api"

    const-string v2, "keepCapturingAfterExiting"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "keepVideoCapturing"

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "keepAudioCapturing"

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "params"

    .line 6
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/trtc/TRTCCloud;->callExperimentalAPI(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic stopRecord$default(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->stopRecord(Z)V

    return-void
.end method


# virtual methods
.method public final enterRoom(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "f2fHeartBeatModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAvailableCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->enterRoomCallback:Lkotlin/jvm/functions/Function0;

    .line 2
    iput-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->onUserVideoAvailable:Lkotlin/jvm/functions/Function1;

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    new-instance p4, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;

    invoke-direct {p4}, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;->getAppId()I

    move-result v0

    iput v0, p4, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->sdkAppId:I

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;->getSignature()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userSig:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getRoomId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->strRoomId:Ljava/lang/String;

    .line 7
    sget-object p1, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p4, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p3, p4, p1}, Lcom/tencent/trtc/TRTCCloud;->enterRoom(Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;I)V

    return-void
.end method

.method public final exitRoom()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->setTrtcDontCloseCameraAfterExitRoom()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->exitRoom()V

    return-void
.end method

.method public final getF2fMatchCallback()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    return-object v0
.end method

.method public final getMatchingState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->matchingState:I

    return v0
.end method

.method public final getPreparing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->preparing:Z

    return v0
.end method

.method public final getRemoveGuass()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->removeGuass:Z

    return v0
.end method

.method public final getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    return-object v0
.end method

.method public final launchMatch()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "leave_bj01.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    .line 3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x2

    .line 4
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x5

    .line 7
    invoke-virtual {v1, v2, v4}, Lcom/tencent/trtc/TRTCCloud;->setVideoMuteImage(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)V

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setAudioFrameListener(Lcom/tencent/trtc/TRTCCloudListener$TRTCAudioFrameListener;)V

    .line 11
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)V

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setListener(Lcom/tencent/trtc/TRTCCloudListener;)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final muteLocalPreview(Z)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/tencent/trtc/TRTCCloud;->muteLocalVideo(IZ)V

    return-void
.end method

.method public final setF2fMatchCallback(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->f2fMatchCallback:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/trtc/TRTCCloud;->setListener(Lcom/tencent/trtc/TRTCCloudListener;)V

    :cond_0
    return-void
.end method

.method public final setGoogleToken(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->setGoogleToken(Ljava/lang/String;)V

    return-void
.end method

.method public final setMatchingState(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->matchingState:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcBeautyProcessor:Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->setChatting(Z)V

    :cond_1
    return-void
.end method

.method public final setPreparing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->preparing:Z

    return-void
.end method

.method public final setRemoveGuass(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->removeGuass:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcBeautyProcessor:Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;->setRemoveGuass(Z)V

    :goto_0
    return-void
.end method

.method public final startLocalPreview(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 4
    .param p1    # Lcom/tencent/rtmp/ui/TXCloudVideoView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->getViewModel()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;-><init>(Lcom/tencent/trtc/TRTCCloud;Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V

    iput-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcBeautyProcessor:Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x2

    const/4 v3, 0x3

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/trtc/TRTCCloud;->setLocalVideoProcessListener(IILcom/tencent/trtc/TRTCCloudListener$TRTCVideoFrameListener;)I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/trtc/TRTCCloud;->startLocalPreview(ZLcom/tencent/rtmp/ui/TXCloudVideoView;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->muteLocalPreview(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->startLocalAudio(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-virtual {v0, p1}, Lcom/tencent/trtc/TRTCCloud;->muteLocalAudio(Z)V

    .line 8
    new-instance v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;

    invoke-direct {v0}, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;-><init>()V

    const/16 v2, 0x6c

    .line 9
    iput v2, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->videoResolution:I

    const/16 v2, 0xf

    .line 10
    iput v2, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->videoFps:I

    const/16 v2, 0x4b0

    .line 11
    iput v2, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->videoBitrate:I

    const/16 v2, 0x258

    .line 12
    iput v2, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->minVideoBitrate:I

    .line 13
    iput v1, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->videoResolutionMode:I

    .line 14
    iput-boolean p1, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->enableAdjustRes:Z

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-virtual {v2, v0}, Lcom/tencent/trtc/TRTCCloud;->setVideoEncoderParam(Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    new-instance v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCNetworkQosParam;

    invoke-direct {v2}, Lcom/tencent/trtc/TRTCCloudDef$TRTCNetworkQosParam;-><init>()V

    .line 17
    iput v1, v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCNetworkQosParam;->preference:I

    .line 18
    iput v1, v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCNetworkQosParam;->controlMode:I

    .line 19
    invoke-virtual {v0, v2}, Lcom/tencent/trtc/TRTCCloud;->setNetworkQosParam(Lcom/tencent/trtc/TRTCCloudDef$TRTCNetworkQosParam;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-virtual {v0, p1}, Lcom/tencent/trtc/TRTCCloud;->setAudioRoute(I)V

    return-void
.end method

.method public final startRecord(Lkotlin/jvm/functions/Function1;)V
    .locals 2
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

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$startRecord$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$startRecord$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->setCallback(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->start()V

    return-void
.end method

.method public final stopLocalPreview()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->stopLocalPreview()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->trtcCloud:Lcom/tencent/trtc/TRTCCloud;

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->stopLocalAudio()V

    return-void
.end method

.method public final stopRecord(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->setCallback(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v1, v0, v2, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->stop$default(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->speechToTextUtils:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->setCallback(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;)V

    return-void
.end method
