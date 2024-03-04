.class Lm5/j;
.super Lio/grpc/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/j$d;,
        Lm5/j$b;,
        Lm5/j$c;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/logging/Logger;

.field private static final i:Lorg/threeten/bp/Duration;


# instance fields
.field private final a:Lm5/k;

.field private final b:Lm5/e;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/lang/Object;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/collect/ImmutableList<",
            "Lm5/j$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lm5/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lm5/j;->h:Ljava/util/logging/Logger;

    const-wide/16 v0, 0x32

    .line 2
    invoke-static {v0, v1}, Lorg/threeten/bp/Duration;->ofMinutes(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    sput-object v0, Lm5/j;->i:Lorg/threeten/bp/Duration;

    return-void
.end method

.method constructor <init>(Lm5/k;Lm5/e;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/q0;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm5/j;->d:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lm5/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    iput-object p1, p0, Lm5/j;->a:Lm5/k;

    .line 6
    iput-object p2, p0, Lm5/j;->b:Lm5/e;

    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lm5/k;->b()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 9
    new-instance v3, Lm5/j$c;

    invoke-interface {p2}, Lm5/e;->a()Lio/grpc/q0;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lm5/j$c;-><init>(Lio/grpc/q0;Lm5/j$a;)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm5/j$c;

    invoke-static {p2}, Lm5/j$c;->a(Lm5/j$c;)Lio/grpc/q0;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/d;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lm5/j;->g:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lm5/j;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    invoke-virtual {p1}, Lm5/k;->h()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    new-instance v1, Lm5/g;

    invoke-direct {v1, p0}, Lm5/g;-><init>(Lm5/j;)V

    sget-object p2, Lm5/k;->a:Ljava/time/Duration;

    .line 15
    invoke-virtual {p2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    .line 16
    invoke-virtual {p2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p3

    .line 17
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    :cond_1
    invoke-virtual {p1}, Lm5/k;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    new-instance v1, Lm5/f;

    invoke-direct {v1, p0}, Lm5/f;-><init>(Lm5/j;)V

    sget-object p1, Lm5/j;->i:Lorg/threeten/bp/Duration;

    .line 20
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v2

    .line 21
    invoke-virtual {p1}, Lorg/threeten/bp/Duration;->getSeconds()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p3

    .line 22
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private B()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lm5/j;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lm5/j;->A()V

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lm5/j;->h:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to resize channel pool"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private C(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "current size is already smaller than the desired"

    .line 3
    invoke-static {v1, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2, p1}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 6
    sget-object v0, Lm5/h;->a:Lm5/h;

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic o(Lm5/j;)V
    .locals 0

    invoke-direct {p0}, Lm5/j;->z()V

    return-void
.end method

.method public static synthetic p(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lm5/j;->x(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(Lm5/j;)V
    .locals 0

    invoke-direct {p0}, Lm5/j;->B()V

    return-void
.end method

.method static synthetic r(Lm5/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm5/j;->g:Ljava/lang/String;

    return-object p0
.end method

.method static s(Lm5/k;Lm5/e;)Lm5/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lm5/j;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lm5/j;-><init>(Lm5/k;Lm5/e;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method private t(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "current size is already bigger than the desired"

    .line 3
    invoke-static {v1, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$b;->h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$b;

    move-result-object v1

    .line 5
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, p1, v3

    if-ge v2, v3, :cond_1

    .line 6
    :try_start_0
    new-instance v3, Lm5/j$c;

    iget-object v4, p0, Lm5/j;->b:Lm5/e;

    invoke-interface {v4}, Lm5/e;->a()Lio/grpc/q0;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lm5/j$c;-><init>(Lio/grpc/q0;Lm5/j$a;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 7
    sget-object v4, Lm5/j;->h:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Failed to add channel"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private v(I)Lm5/j$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm5/j$c;

    return-object p1
.end method

.method private static synthetic x(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lm5/j$c;

    invoke-static {p0}, Lm5/j$c;->b(Lm5/j$c;)V

    return-void
.end method

.method private z()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lm5/j;->y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lm5/j;->h:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to pre-emptively refresh channnels"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method A()V
    .locals 11

    .line 1
    iget-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lm5/i;->a:Lm5/i;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    int-to-double v2, v1

    .line 3
    iget-object v4, p0, Lm5/j;->a:Lm5/k;

    .line 4
    invoke-virtual {v4}, Lm5/k;->d()I

    move-result v4

    int-to-double v4, v4

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 5
    iget-object v5, p0, Lm5/j;->a:Lm5/k;

    invoke-virtual {v5}, Lm5/k;->e()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 6
    iget-object v4, p0, Lm5/j;->a:Lm5/k;

    invoke-virtual {v4}, Lm5/k;->e()I

    move-result v4

    .line 7
    :cond_0
    iget-object v5, p0, Lm5/j;->a:Lm5/k;

    .line 8
    invoke-virtual {v5}, Lm5/k;->f()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 9
    iget-object v3, p0, Lm5/j;->a:Lm5/k;

    invoke-virtual {v3}, Lm5/k;->c()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 10
    iget-object v2, p0, Lm5/j;->a:Lm5/k;

    invoke-virtual {v2}, Lm5/k;->c()I

    move-result v2

    :cond_1
    if-ge v2, v4, :cond_2

    move v2, v4

    :cond_2
    add-int v3, v2, v4

    const/4 v5, 0x2

    .line 11
    div-int/2addr v3, v5

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int v7, v3, v6

    .line 13
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v5, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v7, v7

    .line 14
    invoke-static {v3, v7}, Ljava/lang/Math;->copySign(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v6

    .line 15
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-ge v7, v4, :cond_4

    .line 16
    sget-object v0, Lm5/j;->h:Ljava/util/logging/Logger;

    new-array v2, v10, [Ljava/lang/Object;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "Detected throughput peak of %d, expanding channel pool size: %d -> %d."

    .line 18
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, v3}, Lm5/j;->t(I)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 22
    sget-object v0, Lm5/j;->h:Ljava/util/logging/Logger;

    new-array v2, v10, [Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "Detected throughput drop to %d, shrinking channel pool size: %d -> %d."

    .line 24
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v3}, Lm5/j;->C(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm5/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/c;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lm5/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p0, v0}, Lm5/j;->u(I)Lio/grpc/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    return-object p1
.end method

.method public j(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 2
    iget-object p1, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm5/j$c;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-gtz p3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p2}, Lm5/j$c;->a(Lm5/j$c;)Lio/grpc/q0;

    move-result-object p2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, p3}, Lio/grpc/q0;->j(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object p1, p0, Lm5/j;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 8
    iget-object p1, p0, Lm5/j;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 9
    :cond_2
    invoke-virtual {p0}, Lm5/j;->l()Z

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/j$c;

    .line 3
    invoke-static {v1}, Lm5/j$c;->a(Lm5/j$c;)Lio/grpc/q0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/q0;->k()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lm5/j;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public l()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/j$c;

    .line 3
    invoke-static {v1}, Lm5/j$c;->a(Lm5/j$c;)Lio/grpc/q0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/q0;->l()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lm5/j;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public m()Lio/grpc/q0;
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/j$c;

    .line 3
    invoke-static {v1}, Lm5/j$c;->a(Lm5/j$c;)Lio/grpc/q0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/q0;->m()Lio/grpc/q0;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lm5/j;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-object p0
.end method

.method public n()Lio/grpc/q0;
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/j$c;

    .line 3
    invoke-static {v1}, Lm5/j$c;->a(Lm5/j$c;)Lio/grpc/q0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/q0;->n()Lio/grpc/q0;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lm5/j;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-object p0
.end method

.method u(I)Lio/grpc/d;
    .locals 1

    new-instance v0, Lm5/j$b;

    invoke-direct {v0, p0, p1}, Lm5/j$b;-><init>(Lm5/j;I)V

    return-object v0
.end method

.method w(I)Lm5/j$c;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lm5/j;->v(I)Lm5/j$c;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lm5/j$c;->c(Lm5/j$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Bug: failed to retain a channel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method y()V
    .locals 7

    .line 1
    iget-object v0, p0, Lm5/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_0

    .line 4
    :try_start_1
    new-instance v3, Lm5/j$c;

    iget-object v4, p0, Lm5/j;->b:Lm5/e;

    invoke-interface {v4}, Lm5/e;->a()Lio/grpc/q0;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lm5/j$c;-><init>(Lio/grpc/q0;Lm5/j$a;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 5
    :try_start_2
    sget-object v4, Lm5/j;->h:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Failed to refresh channel, leaving old channel"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lm5/j;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    .line 7
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm5/j$c;

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-static {v3}, Lm5/j$c;->b(Lm5/j$c;)V

    goto :goto_2

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
