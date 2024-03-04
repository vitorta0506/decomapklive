.class public final Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0007J\u0010\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J+\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00042\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020!H\u0007\u00a2\u0006\u0002\u0010#R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;",
        "",
        "()V",
        "CLICK_ATTENTION",
        "",
        "CLICK_FIND",
        "CLICK_FRIENDRING",
        "CLICK_IM",
        "CLICK_LIVE",
        "CLICK_MINE",
        "CLICK_NEARBY",
        "CLICK_PARTY",
        "CLICK_PUSH_FRIENDRING",
        "CLICK_PUSH_VIDEO",
        "CLICK_RANKING",
        "CLICK_VIDEO",
        "NEW_USER_EFFECTIVE",
        "OPEN_VIP",
        "STAY_IN_LIVE",
        "USER_LOGIN",
        "VIEW_LIVE",
        "eventIO",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "flushEvents",
        "",
        "init",
        "saveEvent",
        "event",
        "Lcom/guochao/faceshow/aaspring/beans/GCEventModel;",
        "track",
        "targetUserId",
        "",
        "num",
        "(Ljava/lang/String;Ljava/lang/Integer;I)V",
        "app_GooglePlayRelease"
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
.field public static final CLICK_ATTENTION:Ljava/lang/String; = "CLICK_ATTENTION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_FIND:Ljava/lang/String; = "CLICK_FIND"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_FRIENDRING:Ljava/lang/String; = "CLICK_FRIENDRING"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_IM:Ljava/lang/String; = "CLICK_IM"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_LIVE:Ljava/lang/String; = "CLICK_LIVE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_MINE:Ljava/lang/String; = "CLICK_MINE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_NEARBY:Ljava/lang/String; = "CLICK_NEARBY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_PARTY:Ljava/lang/String; = "CLICK_PARTY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_PUSH_FRIENDRING:Ljava/lang/String; = "CLICK_PUSH_FRIENDRING"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_PUSH_VIDEO:Ljava/lang/String; = "CLICK_PUSH_VIDEO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_RANKING:Ljava/lang/String; = "CLICK_RANKING"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLICK_VIDEO:Ljava/lang/String; = "CLICK_VIDEO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NEW_USER_EFFECTIVE:Ljava/lang/String; = "NEW_USER_EFFECTIVE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OPEN_VIP:Ljava/lang/String; = "OPEN_VIP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STAY_IN_LIVE:Ljava/lang/String; = "STAY_IN_LIVE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_LOGIN:Ljava/lang/String; = "USER_LOGIN"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIEW_LIVE:Ljava/lang/String; = "VIEW_LIVE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final eventIO:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final scope:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils$eventIO$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils$eventIO$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->eventIO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$flushEvents(Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->flushEvents()V

    return-void
.end method

.method private final flushEvents()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;->Companion:Lcom/guochao/faceshow/aaspring/db/GCEventDatabase$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase$Companion;->getEventDb()Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;->eventDao()Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;->totalList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v3, "api/token/social/buryingPoint/addBuryingPointLog"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    const-string v3, "details"

    invoke-virtual {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    sget-object v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->buildRequestParams()Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->execute(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/reflect/Type;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    sget-object v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->setError(Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 8
    :goto_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;->eventDao()Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public static final init()V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils$init$1;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils$init$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final saveEvent(Lcom/guochao/faceshow/aaspring/beans/GCEventModel;)V
    .locals 6

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils$saveEvent$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils$saveEvent$1;-><init>(Lcom/guochao/faceshow/aaspring/beans/GCEventModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final track(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track$default(Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)V

    return-void
.end method

.method public static final track(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track$default(Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)V

    return-void
.end method

.method public static final track(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;

    new-instance v11, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    move-object v1, v11

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/guochao/faceshow/aaspring/beans/GCEventModel;-><init>(JLjava/lang/String;JLjava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v11}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->saveEvent(Lcom/guochao/faceshow/aaspring/beans/GCEventModel;)V

    return-void
.end method

.method public static synthetic track$default(Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method
