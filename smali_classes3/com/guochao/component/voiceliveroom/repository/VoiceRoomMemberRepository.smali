.class public Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J7\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0008j\u0008\u0012\u0004\u0012\u00020\u0006`\tH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ7\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0008j\u0008\u0012\u0004\u0012\u00020\u0006`\tH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ1\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u001f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015J\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J/\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u001f\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015J7\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0008j\u0008\u0012\u0004\u0012\u00020\u0006`\tH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;",
        "",
        "()V",
        "adminAdd",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "roomId",
        "",
        "addUserIds",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "(Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "adminRemove",
        "removeUserIds",
        "getVisitorList",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;",
        "page",
        "",
        "size",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getVoiceRoomAdminsList",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getVoiceRoomInviteList",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getVoiceRoomMemberList",
        "joinRoom",
        "",
        "memberRemove",
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URL_VOICE_ROOM_ADMIN_ADD:Ljava/lang/String; = "api/token/live/voice/member/admin/add"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_VOICE_ROOM_ADMIN_LIST:Ljava/lang/String; = "api/token/live/voice/member/manage/list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URL_VOICE_ROOM_ADMIN_REMOVE:Ljava/lang/String; = "api/token/live/voice/member/admin/remove"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URL_VOICE_ROOM_INVITE_ADD:Ljava/lang/String; = "api/token/live/voice/invite/add"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final URL_VOICE_ROOM_INVITE_LIST:Ljava/lang/String; = "api/token/live/voice/invite/list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_VOICE_ROOM_MEMBER_JOIN_ROOM:Ljava/lang/String; = "api/token/live/voice/member/add"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_VOICE_ROOM_MEMBER_LIST:Ljava/lang/String; = "api/token/live/voice/member/list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_VOICE_ROOM_MEMBER_REMOVE:Ljava/lang/String; = "api/token/live/voice/member/remove"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;->Companion:Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getVisitorList$default(Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;Ljava/lang/String;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/16 p3, 0x14

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;->getVisitorList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getVisitorList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final adminAdd(Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
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
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
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

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$adminAdd$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$adminAdd$2;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final adminRemove(Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
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
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
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

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$adminRemove$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$adminRemove$2;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getVisitorList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    new-instance v0, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->loadVisitorList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getVoiceRoomAdminsList(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$getVoiceRoomAdminsList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$getVoiceRoomAdminsList$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getVoiceRoomInviteList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$getVoiceRoomInviteList$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$getVoiceRoomInviteList$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getVoiceRoomMemberList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$getVoiceRoomMemberList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$getVoiceRoomMemberList$2;-><init>(Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final joinRoom(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$joinRoom$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$joinRoom$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final memberRemove(Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
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
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
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

    new-instance v1, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$memberRemove$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$memberRemove$2;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
