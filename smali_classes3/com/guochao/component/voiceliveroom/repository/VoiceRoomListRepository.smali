.class public final Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;
.super Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;",
        "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;",
        "()V",
        "getMyVoiceRoomList",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
        "page",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getVoiceRoomList",
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_MY_ROOM_LIST:Ljava/lang/String; = "api/token/live/voice/room/getMyRoomList"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_ROOM_LIST:Ljava/lang/String; = "api/token/live/voice/room/getRoomList"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;->Companion:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMyVoiceRoomList(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$getMyVoiceRoomList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$getMyVoiceRoomList$2;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getVoiceRoomList(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$getVoiceRoomList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$getVoiceRoomList$2;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
