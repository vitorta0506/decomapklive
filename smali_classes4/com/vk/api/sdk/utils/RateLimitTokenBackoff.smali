.class public final Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;,
        Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenPrefStore;,
        Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenMemStore;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0003\u0018\u0019\u001aB9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0016\u001a\u00020\u0005H\u0002J\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;",
        "",
        "store",
        "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;",
        "minBackoffTime",
        "",
        "maxBackoffTime",
        "factor",
        "",
        "timeProvider",
        "Lkotlin/Function0;",
        "(Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;JJFLkotlin/jvm/functions/Function0;)V",
        "backoff",
        "",
        "operationKey",
        "",
        "calculate",
        "retry",
        "",
        "reset",
        "shouldWait",
        "",
        "time",
        "waitTime",
        "TokenMemStore",
        "TokenPrefStore",
        "TokenStore",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final factor:F

.field private final maxBackoffTime:J

.field private final minBackoffTime:J

.field private final store:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final timeProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;JJFLkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;",
            "JJF",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->store:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;

    .line 3
    iput-wide p2, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->minBackoffTime:J

    .line 4
    iput-wide p4, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->maxBackoffTime:J

    .line 5
    iput p6, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->factor:F

    .line 6
    iput-object p7, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->timeProvider:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;JJFLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    move-wide v5, p2

    goto :goto_0

    :cond_0
    move-wide v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3fc00000    # 1.5f

    goto :goto_1

    :cond_1
    move v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$1;->INSTANCE:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$1;

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 8
    invoke-direct/range {v1 .. v8}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;-><init>(Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;JJFLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final calculate(I)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->minBackoffTime:J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    long-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->factor:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->maxBackoffTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final time()J
    .locals 2

    iget-object v0, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->timeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final backoff(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "operationKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->store:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;

    invoke-direct {p0}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->time()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;->store(Ljava/lang/String;J)V

    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "operationKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->store:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;

    invoke-interface {v0, p1}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->store:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;

    invoke-interface {v0, p1}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;->reset(Ljava/lang/String;)V

    return-void
.end method

.method public final shouldWait(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "operationKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->waitTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final waitTime(Ljava/lang/String;)J
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "operationKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->store:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;

    invoke-interface {v0, p1}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;->has(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->store:Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v0, p1, v3, v4}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff$TokenStore;->restore(Ljava/lang/String;J)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    invoke-direct {p0}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->time()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 4
    invoke-direct {p0, p1}, Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;->calculate(I)J

    move-result-wide v3

    cmp-long p1, v5, v1

    if-gez p1, :cond_1

    return-wide v1

    :cond_1
    cmp-long p1, v5, v3

    if-ltz p1, :cond_2

    return-wide v1

    :cond_2
    sub-long/2addr v3, v5

    return-wide v3
.end method
