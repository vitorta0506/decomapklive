.class public final Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012J\u0006\u0010\u0014\u001a\u00020\u000eR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "_voiceRoomInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "repository",
        "Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;",
        "voiceRoomInfo",
        "Landroidx/lifecycle/LiveData;",
        "getVoiceRoomInfo",
        "()Landroidx/lifecycle/LiveData;",
        "createRoom",
        "",
        "voiceRoomCreateRoomModel",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;",
        "gcValueCallback",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;",
        "",
        "loadVoiceRoomInfo",
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
.field private final _voiceRoomInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository:Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final voiceRoomInfo:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->repository:Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->_voiceRoomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 4
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->voiceRoomInfo:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;)Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->repository:Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;

    return-object p0
.end method

.method public static final synthetic access$get_voiceRoomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->_voiceRoomInfo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final createRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 7
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "voiceRoomCreateRoomModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gcValueCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$createRoom$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$createRoom$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getVoiceRoomInfo()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->voiceRoomInfo:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final loadVoiceRoomInfo()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
