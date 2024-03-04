.class public final Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/repository/BaseRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 72\u00020\u0001:\u00017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000c\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J7\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u001f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00042\u0006\u0010\u0016\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ\u0019\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0019\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u001f\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\'\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J1\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00072\u0008\u0008\u0002\u0010%\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&J1\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020(0\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00072\u0008\u0008\u0002\u0010%\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&J\'\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J7\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J/\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/J7\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000e\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00103J\'\u00104\u001a\u0008\u0012\u0004\u0012\u0002050\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J\'\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00068"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/repository/BaseRepository;",
        "()V",
        "changeMicMode",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "",
        "microType",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "changeRoomFee",
        "fee",
        "changeRoomPrivateMode",
        "mode",
        "closeMicro",
        "id",
        "roomId",
        "",
        "index",
        "userId",
        "(ILjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "enterVoiceRoom",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "voiceRoomId",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getRoomFeeConf",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "joinIMGroup",
        "groupId",
        "leaveIMGroup",
        "leaveRoom",
        "leaveSeat",
        "seatPosition",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadViewerList",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;",
        "page",
        "size",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadVisitorList",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;",
        "lockSeat",
        "openMicro",
        "reportOnSeat",
        "seatIndex",
        "success",
        "",
        "(Ljava/lang/String;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "switchSeat",
        "from",
        "to",
        "(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "takeSeat",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
        "unLockSeat",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_CHANGE_MIC_MODE:Ljava/lang/String; = "api/token/live/voice/room/changeRoomMicroType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_CHANGE_PRIVATE_MODE:Ljava/lang/String; = "api/token/live/voice/room/changeRoomNature"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_CHANGE_ROOM_FEE:Ljava/lang/String; = "api/token/live/voice/room/changeRoomFee"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_CLOSE_MICRO:Ljava/lang/String; = "api/token/live/voice/micro/closedWheat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_ENTER_ROOM:Ljava/lang/String; = "api/token/live/voice/room/enterRoom"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_GET_VOICE_ROOM_CONF:Ljava/lang/String; = "api/token/live/voice/room/getVoiceRoomFeeConf"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_LEAVE_ROOM:Ljava/lang/String; = "api/token/live/voice/room/leaveRoom"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_LEAVE_SEAT:Ljava/lang/String; = "api/token/live/voice/micro/leave"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_LOAD_VIEWER_LIST:Ljava/lang/String; = "api/token/live/voice/room/getViewList"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_LOAD_VISITOR_LIST:Ljava/lang/String; = "api/token/live/voice/room/getVisitorList"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_LOCK_SEAT:Ljava/lang/String; = "api/token/live/voice/micro/lockMicro"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_OPEN_MICRO:Ljava/lang/String; = "api/token/live/voice/micro/unClosedWheat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_REPORT_ON_SEAT:Ljava/lang/String; = "api/token/live/voice/micro/enter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_SWITCH_SEAT:Ljava/lang/String; = "api/token/live/voice/micro/changeIndex"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_TAKE_SEAT:Ljava/lang/String; = "api/token/live/voice/micro/preEnter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_UNLOCK_SEAT:Ljava/lang/String; = "api/token/live/voice/micro/unlockMicro"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->Companion:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/repository/BaseRepository;-><init>()V

    return-void
.end method

.method public static synthetic loadViewerList$default(Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;Ljava/lang/String;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/16 p3, 0x14

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->loadViewerList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadVisitorList$default(Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;Ljava/lang/String;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/16 p3, 0x28

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->loadVisitorList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final changeMicMode(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$changeMicMode$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$changeMicMode$2;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final changeRoomFee(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$changeRoomFee$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$changeRoomFee$2;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final changeRoomPrivateMode(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$changeRoomPrivateMode$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$changeRoomPrivateMode$2;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final closeMicro(ILjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v7, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$closeMicro$2;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$closeMicro$2;-><init>(ILjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final enterVoiceRoom(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$enterVoiceRoom$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$enterVoiceRoom$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRoomFeeConf(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$getRoomFeeConf$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$getRoomFeeConf$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final joinIMGroup(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$joinIMGroup$2$1;

    invoke-direct {v2, p1, v0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$joinIMGroup$2$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const-string v3, ""

    invoke-virtual {v1, p1, v3, v2}, Lcom/tencent/imsdk/v2/V2TIMManager;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 3
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method public final leaveIMGroup(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$leaveIMGroup$2$1;

    invoke-direct {v2, p1, v0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$leaveIMGroup$2$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, p1, v2}, Lcom/tencent/imsdk/v2/V2TIMManager;->quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 3
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method public final leaveRoom(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$leaveRoom$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$leaveRoom$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final leaveSeat(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$leaveSeat$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$leaveSeat$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final loadViewerList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$loadViewerList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$loadViewerList$2;-><init>(Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final loadVisitorList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$loadVisitorList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$loadVisitorList$2;-><init>(Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final lockSeat(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$lockSeat$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$lockSeat$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final openMicro(ILjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v7, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$openMicro$2;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$openMicro$2;-><init>(ILjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reportOnSeat(Ljava/lang/String;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$reportOnSeat$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$reportOnSeat$2;-><init>(Ljava/lang/String;IZLkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final switchSeat(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v7, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$switchSeat$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$switchSeat$2;-><init>(Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final takeSeat(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$takeSeat$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$takeSeat$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final unLockSeat(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$unLockSeat$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$unLockSeat$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
