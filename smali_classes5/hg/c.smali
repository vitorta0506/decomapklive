.class final Lhg/c;
.super Lio/grpc/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg/c$c;,
        Lhg/c$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lhg/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lhg/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lhg/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lhg/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/internal/m2;

.field private volatile b:J

.field private volatile c:J

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lhg/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:J

.field private volatile f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lhg/c;

    const-string v1, "b"

    .line 2
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lhg/c;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "c"

    .line 3
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lhg/c;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "e"

    .line 4
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lhg/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "f"

    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lhg/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/m2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/k$a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lhg/c;->d:Ljava/util/Map;

    const-string v0, "time provider"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/m2;

    iput-object p1, p0, Lhg/c;->a:Lio/grpc/internal/m2;

    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lhg/c;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lhg/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lhg/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;
    .locals 0

    .line 1
    sget-object p1, Lhg/c;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 2
    new-instance p1, Lhg/c$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lhg/c$c;-><init>(Lhg/c;Lhg/c$a;)V

    return-object p1
.end method

.method e()Lio/grpc/lb/v1/ClientStats;
    .locals 6

    .line 1
    invoke-static {}, Lio/grpc/lb/v1/ClientStats;->newBuilder()Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    iget-object v1, p0, Lhg/c;->a:Lio/grpc/internal/m2;

    .line 2
    invoke-interface {v1}, Lio/grpc/internal/m2;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lv6/d;->e(J)Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/lb/v1/ClientStats$b;->s0(Lcom/google/protobuf/Timestamp;)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    sget-object v1, Lhg/c;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/grpc/lb/v1/ClientStats$b;->r0(J)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    sget-object v1, Lhg/c;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/grpc/lb/v1/ClientStats$b;->n0(J)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    sget-object v1, Lhg/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 5
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/grpc/lb/v1/ClientStats$b;->q0(J)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    sget-object v1, Lhg/c;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/grpc/lb/v1/ClientStats$b;->o0(J)Lio/grpc/lb/v1/ClientStats$b;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v2, p0, Lhg/c;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    iget-object v1, p0, Lhg/c;->d:Ljava/util/Map;

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lhg/c;->d:Ljava/util/Map;

    .line 12
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 14
    invoke-static {}, Lio/grpc/lb/v1/ClientStatsPerToken;->newBuilder()Lio/grpc/lb/v1/ClientStatsPerToken$b;

    move-result-object v3

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lio/grpc/lb/v1/ClientStatsPerToken$b;->j0(Ljava/lang/String;)Lio/grpc/lb/v1/ClientStatsPerToken$b;

    move-result-object v3

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhg/c$b;

    iget-wide v4, v2, Lhg/c$b;->a:J

    invoke-virtual {v3, v4, v5}, Lio/grpc/lb/v1/ClientStatsPerToken$b;->k0(J)Lio/grpc/lb/v1/ClientStatsPerToken$b;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lio/grpc/lb/v1/ClientStatsPerToken$b;->X()Lio/grpc/lb/v1/ClientStatsPerToken;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lio/grpc/lb/v1/ClientStats$b;->W(Lio/grpc/lb/v1/ClientStatsPerToken;)Lio/grpc/lb/v1/ClientStats$b;

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lio/grpc/lb/v1/ClientStats$b;->Y()Lio/grpc/lb/v1/ClientStats;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method f(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lhg/c;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 2
    sget-object v0, Lhg/c;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lhg/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg/c$b;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lhg/c;->d:Ljava/util/Map;

    new-instance v1, Lhg/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lhg/c$b;-><init>(Lhg/c$a;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 6
    :cond_0
    iget-wide v1, v0, Lhg/c$b;->a:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lhg/c$b;->a:J

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
