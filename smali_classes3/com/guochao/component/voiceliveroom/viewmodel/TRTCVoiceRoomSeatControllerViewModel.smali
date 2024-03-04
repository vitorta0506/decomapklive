.class public abstract Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;
.super Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u000eH\u0016J\u0008\u00101\u001a\u00020/H\u0004J*\u00102\u001a\u00020/2\u0006\u00103\u001a\u00020\u00142\u0008\u00104\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020\t2\u0006\u00100\u001a\u00020\u000eH\u0016J\u0010\u00107\u001a\u00020/2\u0006\u00103\u001a\u00020\u0014H\u0016J\u0010\u00108\u001a\u00020/2\u0006\u00100\u001a\u00020\u000eH\u0016J\u0008\u00109\u001a\u00020/H\u0014J\u0008\u0010:\u001a\u00020/H\u0002J\u0008\u0010;\u001a\u00020/H\u0004J\u0008\u0010<\u001a\u00020/H\u0004J\u0018\u0010=\u001a\u00020\u000e2\u0006\u00103\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u000eH\u0016R(\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012R\u000e\u0010\u001c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001eX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010!\u001a\u00020\"8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008#\u0010$R\u001a\u0010\'\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0010\"\u0004\u0008)\u0010\u0012R+\u0010*\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00070+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-\u00a8\u0006>"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;",
        "Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;",
        "()V",
        "_voiceVolume",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ljava/util/ArrayList;",
        "Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;",
        "Lkotlin/collections/ArrayList;",
        "isInTRTCRoom",
        "",
        "()Z",
        "setInTRTCRoom",
        "(Z)V",
        "lastRoleType",
        "",
        "getLastRoleType",
        "()I",
        "setLastRoleType",
        "(I)V",
        "lastRoomId",
        "",
        "getLastRoomId",
        "()Ljava/lang/String;",
        "setLastRoomId",
        "(Ljava/lang/String;)V",
        "lastSeatIndex",
        "getLastSeatIndex",
        "setLastSeatIndex",
        "reported",
        "repository",
        "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;",
        "getRepository",
        "()Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;",
        "trtcCloud",
        "Lcom/tencent/trtc/TRTCCloud;",
        "getTrtcCloud",
        "()Lcom/tencent/trtc/TRTCCloud;",
        "trtcCloud$delegate",
        "Lkotlin/Lazy;",
        "voiceId",
        "getVoiceId",
        "setVoiceId",
        "voiceVolume",
        "Landroidx/lifecycle/LiveData;",
        "getVoiceVolume",
        "()Landroidx/lifecycle/LiveData;",
        "addSelfToSeat",
        "",
        "seatIndex",
        "clearData",
        "enterTRTCRoom",
        "roomId",
        "voiceRoomSeatModel",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
        "linkMic",
        "exitRoom",
        "leaveSeat",
        "onCleared",
        "reportOnSeat",
        "startAudio",
        "stopAudio",
        "takeSeat",
        "component_liveroom_release"
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
.field private final _voiceVolume:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isInTRTCRoom:Z

.field private lastRoleType:I

.field private lastRoomId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastSeatIndex:I

.field private reported:Z

.field private final repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trtcCloud$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private voiceId:I

.field private final voiceVolume:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    .line 3
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$trtcCloud$2;->INSTANCE:Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$trtcCloud$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->trtcCloud$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastRoomId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastSeatIndex:I

    const/16 v1, 0x1e

    .line 6
    iput v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastRoleType:I

    .line 7
    iput v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->voiceId:I

    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->_voiceVolume:Landroidx/lifecycle/MutableLiveData;

    .line 9
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->voiceVolume:Landroidx/lifecycle/LiveData;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    const/16 v1, 0x12c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/trtc/TRTCCloud;->enableAudioVolumeEvaluation(IZ)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;)V

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setListener(Lcom/tencent/trtc/TRTCCloudListener;)V

    return-void
.end method

.method public static final synthetic access$getReported$p(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->reported:Z

    return p0
.end method

.method public static final synthetic access$get_voiceVolume$p(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->_voiceVolume:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$reportOnSeat(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->reportOnSeat()V

    return-void
.end method

.method public static final synthetic access$setReported$p(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->reported:Z

    return-void
.end method

.method private final reportOnSeat()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastSeatIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public addSelfToSeat(I)V
    .locals 0

    return-void
.end method

.method protected final clearData()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->voiceId:I

    .line 2
    iput v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastSeatIndex:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->reported:Z

    return-void
.end method

.method public enterTRTCRoom(Ljava/lang/String;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;ZI)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->isInTRTCRoom:Z

    const/16 v1, 0x14

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->reported:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    new-instance v3, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;

    invoke-direct {v3}, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->getSdkAppId()I

    move-result v4

    iput v4, v3, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->sdkAppId:I

    .line 5
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->getUserSig()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userSig:Ljava/lang/String;

    .line 6
    iput-object p1, v3, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->strRoomId:Ljava/lang/String;

    .line 7
    sget-object p2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {p2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, v3, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->userId:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x15

    .line 8
    :goto_1
    iput v1, v3, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->role:I

    const/4 p2, 0x3

    .line 9
    invoke-virtual {v0, v3, p2}, Lcom/tencent/trtc/TRTCCloud;->enterRoom(Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;I)V

    .line 10
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastRoomId:Ljava/lang/String;

    .line 11
    iput p4, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastSeatIndex:I

    .line 12
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->reportOnSeat()V

    goto :goto_3

    .line 13
    :cond_3
    iput-boolean v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->reported:Z

    .line 14
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p2

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x15

    :goto_2
    invoke-virtual {p2, v1}, Lcom/tencent/trtc/TRTCCloud;->switchRole(I)V

    .line 15
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastRoomId:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastSeatIndex:I

    const/4 p1, -0x1

    if-eq p4, p1, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->reportOnSeat()V

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    .line 18
    invoke-virtual {p0, p4}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->addSelfToSeat(I)V

    .line 19
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->startAudio()V

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->stopAudio()V

    :goto_4
    return-void
.end method

.method public exitRoom(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/trtc/TRTCCloud;->exitRoom()V

    return-void
.end method

.method protected final getLastRoleType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastRoleType:I

    return v0
.end method

.method protected final getLastRoomId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastRoomId:Ljava/lang/String;

    return-object v0
.end method

.method protected final getLastSeatIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastSeatIndex:I

    return v0
.end method

.method protected final getRepository()Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->repository:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    return-object v0
.end method

.method protected final getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->trtcCloud$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-trtcCloud>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tencent/trtc/TRTCCloud;

    return-object v0
.end method

.method public final getVoiceId()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->voiceId:I

    return v0
.end method

.method public final getVoiceVolume()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->voiceVolume:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected final isInTRTCRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->isInTRTCRoom:Z

    return v0
.end method

.method public leaveSeat(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/tencent/trtc/TRTCCloud;->switchRole(I)V

    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->onCleared()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->stopLocalAudio()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->exitRoom()V

    return-void
.end method

.method protected final setInTRTCRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->isInTRTCRoom:Z

    return-void
.end method

.method protected final setLastRoleType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastRoleType:I

    return-void
.end method

.method protected final setLastRoomId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastRoomId:Ljava/lang/String;

    return-void
.end method

.method protected final setLastSeatIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->lastSeatIndex:I

    return-void
.end method

.method public final setVoiceId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->voiceId:I

    return-void
.end method

.method protected final startAudio()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->startLocalAudio(I)V

    return-void
.end method

.method protected final stopAudio()V
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->stopLocalAudio()V

    return-void
.end method

.method public takeSeat(Ljava/lang/String;I)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "roomId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p1, p2}, Lcom/tencent/trtc/TRTCCloud;->switchRole(I)V

    const/4 p1, 0x1

    return p1
.end method
