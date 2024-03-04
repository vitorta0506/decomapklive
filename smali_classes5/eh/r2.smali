.class final Leh/r2;
.super Lio/grpc/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/r2$b;,
        Leh/r2$e;,
        Leh/r2$d;,
        Leh/r2$c;
    }
.end annotation


# static fields
.field static final u:Lio/grpc/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/c$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final v:Lio/grpc/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/c$a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static w:Z


# instance fields
.field private final a:Lio/grpc/g0;

.field private final b:Leh/q2;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lio/grpc/t0$h;

.field private final f:Lio/grpc/d1;

.field private final g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Leh/s2$b;

.field private final i:Leh/j2;

.field private final j:Leh/m1;

.field private final k:Leh/u2;

.field private final l:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Leh/r2$b;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Leh/r2$c;

.field private volatile n:Leh/r2$e;

.field private o:Lio/grpc/t0$e;

.field private p:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "Leh/p2;",
            ">;"
        }
    .end annotation
.end field

.field private q:Leh/p2;

.field private r:Leh/s2$a;

.field private s:Leh/r2$d;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.grpc.xds.CLUSTER_SELECTION_KEY"

    .line 1
    invoke-static {v0}, Lio/grpc/c$a;->b(Ljava/lang/String;)Lio/grpc/c$a;

    move-result-object v0

    sput-object v0, Leh/r2;->u:Lio/grpc/c$a;

    const-string v0, "io.grpc.xds.RPC_HASH_KEY"

    .line 2
    invoke-static {v0}, Lio/grpc/c$a;->b(Ljava/lang/String;)Lio/grpc/c$a;

    move-result-object v0

    sput-object v0, Leh/r2;->v:Lio/grpc/c$a;

    const-string v0, "GRPC_XDS_EXPERIMENTAL_ENABLE_TIMEOUT"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Leh/r2;->w:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/t0$h;Lio/grpc/d1;Ljava/util/concurrent/ScheduledExecutorService;Leh/s2$b;Leh/j2;Leh/m1;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/t0$h;",
            "Lio/grpc/d1;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Leh/s2$b;",
            "Leh/j2;",
            "Leh/m1;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lio/grpc/t0;-><init>()V

    .line 5
    sget-object v0, Leh/u2;->c:Leh/u2;

    iput-object v0, p0, Leh/r2;->k:Leh/u2;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leh/r2;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    new-instance v0, Leh/r2$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leh/r2$c;-><init>(Leh/r2;Leh/r2$a;)V

    iput-object v0, p0, Leh/r2;->m:Leh/r2$c;

    .line 8
    invoke-static {}, Leh/r2$e;->a()Leh/r2$e;

    move-result-object v0

    iput-object v0, p0, Leh/r2;->n:Leh/r2$e;

    .line 9
    iput-object p1, p0, Leh/r2;->c:Ljava/lang/String;

    const-string p1, "name"

    .line 10
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leh/r2;->d:Ljava/lang/String;

    const-string p1, "serviceConfigParser"

    .line 11
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/t0$h;

    iput-object p1, p0, Leh/r2;->e:Lio/grpc/t0$h;

    const-string p1, "syncContext"

    .line 12
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/d1;

    iput-object p1, p0, Leh/r2;->f:Lio/grpc/d1;

    const-string p1, "scheduler"

    .line 13
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Leh/r2;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p9, :cond_0

    const-string p1, "xdsClientPoolFactory"

    .line 14
    invoke-static {p6, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/s2$b;

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Leh/f2;

    invoke-direct {p1}, Leh/f2;-><init>()V

    :goto_0
    iput-object p1, p0, Leh/r2;->h:Leh/s2$b;

    .line 16
    invoke-interface {p1, p9}, Leh/s2$b;->a(Ljava/util/Map;)V

    const-string p1, "random"

    .line 17
    invoke-static {p7, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/j2;

    iput-object p1, p0, Leh/r2;->i:Leh/j2;

    const-string p1, "filterRegistry"

    .line 18
    invoke-static {p8, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/m1;

    iput-object p1, p0, Leh/r2;->j:Leh/m1;

    const-string p1, "xds-resolver"

    .line 19
    invoke-static {p1, p2}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    iput-object p1, p0, Leh/r2;->a:Lio/grpc/g0;

    .line 20
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/r2;->b:Leh/q2;

    .line 21
    sget-object p3, Leh/q2$b;->b:Leh/q2$b;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const-string p2, "Created resolver for {0}"

    invoke-virtual {p1, p3, p2, p4}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/t0$h;Lio/grpc/d1;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/t0$h;",
            "Lio/grpc/d1;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Leh/f2;->c()Leh/f2;

    move-result-object v6

    sget-object v7, Leh/j2$a;->a:Leh/j2;

    .line 2
    invoke-static {}, Leh/m1;->b()Leh/m1;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v9, p6

    .line 3
    invoke-direct/range {v0 .. v9}, Leh/r2;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/t0$h;Lio/grpc/d1;Ljava/util/concurrent/ScheduledExecutorService;Leh/s2$b;Leh/j2;Leh/m1;Ljava/util/Map;)V

    return-void
.end method

.method private static A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "%s"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static B(Ljava/util/List;Ljava/lang/String;)Leh/l2;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/l2;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Leh/l2;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh/l2;

    .line 2
    invoke-virtual {v4}, Leh/l2;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3
    invoke-static {p1, v6}, Leh/r2;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "*"

    .line 4
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v2, v4

    const/4 v3, 0x1

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v1, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    move-object v2, v4

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v3, :cond_0

    :cond_6
    return-object v2
.end method

.method static C(Ljava/lang/Long;Leh/l2$a$a$c;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Leh/l2$a$a$c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Leh/l2$a$a$c;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "name"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Leh/l2$a$a$c;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Leh/l2$a$a$c;->c()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "maxAttempts"

    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 9
    invoke-virtual {p1}, Leh/l2$a$a$c;->b()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v2}, Lv6/a;->i(Lcom/google/protobuf/Duration;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "initialBackoff"

    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 10
    invoke-virtual {p1}, Leh/l2$a$a$c;->d()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v2}, Lv6/a;->i(Lcom/google/protobuf/Duration;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "maxBackoff"

    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "backoffMultiplier"

    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Leh/l2$a$a$c;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual {p1}, Leh/l2$a$a$c;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/Status$Code;

    .line 14
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string v3, "retryableStatusCodes"

    .line 16
    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 17
    invoke-virtual {p1}, Leh/l2$a$a$c;->e()Lcom/google/protobuf/Duration;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p1}, Leh/l2$a$a$c;->e()Lcom/google/protobuf/Duration;

    move-result-object p1

    invoke-static {p1}, Lv6/a;->i(Lcom/google/protobuf/Duration;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "perAttemptRecvTimeout"

    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 20
    :cond_3
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    const-string v1, "retryPolicy"

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    :cond_4
    if-eqz p0, :cond_5

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "timeout"

    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 23
    :cond_5
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "methodConfig"

    .line 24
    invoke-static {p1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static D(Lio/grpc/s0;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "-bin"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "content-type"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "application/grpc"

    return-object p0

    .line 3
    :cond_1
    :try_start_0
    sget-object v0, Lio/grpc/s0;->e:Lio/grpc/s0$d;

    invoke-static {p1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/s0;->l(Lio/grpc/s0$i;)Ljava/lang/Iterable;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ","

    .line 5
    invoke-static {p1}, Lcom/google/common/base/i;->h(Ljava/lang/String;)Lcom/google/common/base/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :catch_0
    :goto_0
    return-object v1
.end method

.method static E(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "."

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Invalid host name"

    invoke-static {v0, v4}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Invalid pattern/domain name"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "*"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_3

    return v3

    :cond_3
    const/16 v0, 0x2a

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 9
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-eq v1, v0, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    return v2

    :cond_6
    if-nez v1, :cond_7

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    .line 13
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v1, v0, :cond_8

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method private static F(Leh/l2$a$b$a;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Leh/l2$a$b$a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Leh/l2$a$b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Leh/l2$a$b$a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Leh/l2$a$b$a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Leh/l2$a$b$a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Leh/l2$a$b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Leh/l2$a$b$a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Leh/l2$a$b$a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    :goto_1
    return p0

    .line 9
    :cond_3
    invoke-virtual {p0}, Leh/l2$a$b$a;->h()Lcom/google/re2j/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/re2j/Pattern;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static G(Leh/l2$a$b;Ljava/lang/String;Lio/grpc/s0;Leh/j2;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Leh/l2$a$b;->d()Leh/l2$a$b$a;

    move-result-object v0

    invoke-static {v0, p1}, Leh/r2;->F(Leh/l2$a$b$a;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Leh/l2$a$b;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfh/i;

    .line 3
    invoke-virtual {v1}, Lfh/i;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Leh/r2;->D(Lio/grpc/s0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfh/i;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Leh/l2$a$b;->b()Lfh/h;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Lfh/h;->b()I

    move-result p1

    invoke-interface {p3, p1}, Leh/j2;->b(I)I

    move-result p1

    invoke-virtual {p0}, Lfh/h;->c()I

    move-result p0

    if-ge p1, p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cluster:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static I(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cluster_specifier_plugin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private J()V
    .locals 7

    .line 1
    iget-object v0, p0, Leh/r2;->f:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    new-instance v0, Lcom/google/common/collect/ImmutableMap$b;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    .line 3
    iget-object v1, p0, Leh/r2;->l:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Leh/r2;->l:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/r2$b;

    invoke-static {v3}, Leh/r2$b;->a(Leh/r2$b;)Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    const-string v4, "lbPolicy"

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const-string v1, "childPolicy"

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const-string v1, "cluster_manager_experimental"

    .line 7
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "loadBalancingConfig"

    .line 8
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 9
    iget-object v1, p0, Leh/r2;->b:Leh/q2;

    sget-object v2, Leh/q2$b;->b:Leh/q2$b;

    invoke-virtual {v1, v2}, Leh/q2;->a(Leh/q2$b;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Leh/r2;->b:Leh/q2;

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 11
    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Generated service config:\n{0}"

    .line 12
    invoke-virtual {v1, v2, v5, v4}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_1
    iget-object v1, p0, Leh/r2;->e:Lio/grpc/t0$h;

    invoke-virtual {v1, v0}, Lio/grpc/t0$h;->a(Ljava/util/Map;)Lio/grpc/t0$c;

    move-result-object v0

    .line 14
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v1

    sget-object v2, Leh/o1;->b:Lio/grpc/a$c;

    iget-object v4, p0, Leh/r2;->p:Lio/grpc/internal/p1;

    .line 15
    invoke-virtual {v1, v2, v4}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v1

    sget-object v2, Leh/o1;->c:Lio/grpc/a$c;

    iget-object v4, p0, Leh/r2;->r:Leh/s2$a;

    .line 16
    invoke-virtual {v1, v2, v4}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v1

    sget-object v2, Lio/grpc/d0;->a:Lio/grpc/a$c;

    iget-object v4, p0, Leh/r2;->m:Leh/r2$c;

    .line 17
    invoke-virtual {v1, v2, v4}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v1

    .line 19
    invoke-static {}, Lio/grpc/t0$g;->d()Lio/grpc/t0$g$a;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Lio/grpc/t0$g$a;->c(Lio/grpc/a;)Lio/grpc/t0$g$a;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lio/grpc/t0$g$a;->d(Lio/grpc/t0$c;)Lio/grpc/t0$g$a;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lio/grpc/t0$g$a;->a()Lio/grpc/t0$g;

    move-result-object v0

    .line 23
    iget-object v1, p0, Leh/r2;->o:Lio/grpc/t0$e;

    invoke-virtual {v1, v0}, Lio/grpc/t0$e;->c(Lio/grpc/t0$g;)V

    .line 24
    iput-boolean v3, p0, Leh/r2;->t:Z

    return-void
.end method

.method static synthetic f(Leh/r2;)Lio/grpc/t0$h;
    .locals 0

    iget-object p0, p0, Leh/r2;->e:Lio/grpc/t0$h;

    return-object p0
.end method

.method static synthetic g(Leh/r2;)Leh/m1;
    .locals 0

    iget-object p0, p0, Leh/r2;->j:Leh/m1;

    return-object p0
.end method

.method static synthetic h(Leh/r2;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Leh/r2;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic i(Ljava/util/List;)Lio/grpc/h;
    .locals 0

    invoke-static {p0}, Leh/r2;->z(Ljava/util/List;)Lio/grpc/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    iget-object p0, p0, Leh/r2;->l:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static synthetic k(Leh/r2;)V
    .locals 0

    invoke-direct {p0}, Leh/r2;->J()V

    return-void
.end method

.method static synthetic l(Leh/r2;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/r2;->f:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic m(Lio/grpc/s0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Leh/r2;->D(Lio/grpc/s0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Leh/r2;)Leh/u2;
    .locals 0

    iget-object p0, p0, Leh/r2;->k:Leh/u2;

    return-object p0
.end method

.method static synthetic o(Leh/r2;)Lio/grpc/g0;
    .locals 0

    iget-object p0, p0, Leh/r2;->a:Lio/grpc/g0;

    return-object p0
.end method

.method static synthetic p(Leh/r2;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/r2;->b:Leh/q2;

    return-object p0
.end method

.method static synthetic q(Leh/r2;)Leh/p2;
    .locals 0

    iget-object p0, p0, Leh/r2;->q:Leh/p2;

    return-object p0
.end method

.method static synthetic r(Leh/r2;)Z
    .locals 0

    iget-boolean p0, p0, Leh/r2;->t:Z

    return p0
.end method

.method static synthetic s(Leh/r2;Z)Z
    .locals 0

    iput-boolean p1, p0, Leh/r2;->t:Z

    return p1
.end method

.method static synthetic t(Leh/r2;)Lio/grpc/t0$e;
    .locals 0

    iget-object p0, p0, Leh/r2;->o:Lio/grpc/t0$e;

    return-object p0
.end method

.method static synthetic u(Leh/r2;)Leh/r2$e;
    .locals 0

    iget-object p0, p0, Leh/r2;->n:Leh/r2$e;

    return-object p0
.end method

.method static synthetic v(Leh/r2;Leh/r2$e;)Leh/r2$e;
    .locals 0

    iput-object p1, p0, Leh/r2;->n:Leh/r2$e;

    return-object p1
.end method

.method static synthetic w(Leh/r2;)Leh/j2;
    .locals 0

    iget-object p0, p0, Leh/r2;->i:Leh/j2;

    return-object p0
.end method

.method static synthetic x(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Leh/r2;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Leh/r2;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static z(Ljava/util/List;)Lio/grpc/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/h;",
            ">;)",
            "Lio/grpc/h;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "empty interceptors"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/h;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Leh/r2$a;

    invoke-direct {v0, p0}, Leh/r2$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/r2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/r2;->b:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Leh/r2;->s:Leh/r2$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Leh/r2$d;->n(Leh/r2$d;)V

    .line 4
    :cond_0
    iget-object v0, p0, Leh/r2;->q:Leh/p2;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Leh/r2;->p:Lio/grpc/internal/p1;

    invoke-interface {v1, v0}, Lio/grpc/internal/p1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/p2;

    iput-object v0, p0, Leh/r2;->q:Leh/p2;

    :cond_1
    return-void
.end method

.method public d(Lio/grpc/t0$e;)V
    .locals 3

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/t0$e;

    iput-object v0, p0, Leh/r2;->o:Lio/grpc/t0$e;

    .line 2
    :try_start_0
    iget-object v0, p0, Leh/r2;->h:Leh/s2$b;

    invoke-interface {v0}, Leh/s2$b;->b()Lio/grpc/internal/p1;

    move-result-object v0

    iput-object v0, p0, Leh/r2;->p:Lio/grpc/internal/p1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-interface {v0}, Lio/grpc/internal/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/p2;

    iput-object v0, p0, Leh/r2;->q:Leh/p2;

    .line 4
    invoke-virtual {v0}, Leh/p2;->o()Leh/j0$b;

    move-result-object v0

    .line 5
    iget-object v1, p0, Leh/r2;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Leh/j0$b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Leh/j0$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iget-object v1, p0, Leh/r2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/j0$a;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lio/grpc/Status;->i:Lio/grpc/Status;

    const-string v1, "invalid target URI: target authority not found in the bootstrap"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/t0$e;->a(Lio/grpc/Status;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0}, Leh/j0$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_0
    iget-object v1, p0, Leh/r2;->d:Ljava/lang/String;

    const-string v2, "xdstp:"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-static {v1}, Leh/p2;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_2
    invoke-static {v0, v1}, Leh/r2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v1, Leh/a$f;->b:Leh/a$f;

    invoke-virtual {v1}, Leh/a$f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Leh/p2;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    invoke-virtual {v1}, Leh/a$f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leh/p2;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 16
    sget-object v0, Lio/grpc/Status;->i:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid listener resource URI for service authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Leh/r2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/t0$e;->a(Lio/grpc/Status;)V

    return-void

    .line 17
    :cond_3
    invoke-static {v0}, Leh/p2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {}, Leh/e2;->c()Leh/e2;

    move-result-object v0

    iput-object v0, p0, Leh/r2;->r:Leh/s2$a;

    .line 19
    new-instance v0, Leh/r2$d;

    invoke-direct {v0, p0, p1}, Leh/r2$d;-><init>(Leh/r2;Ljava/lang/String;)V

    iput-object v0, p0, Leh/r2;->s:Leh/r2$d;

    .line 20
    invoke-static {v0}, Leh/r2$d;->g(Leh/r2$d;)V

    return-void

    :catch_0
    move-exception v0

    .line 21
    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "Failed to initialize xDS"

    .line 22
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lio/grpc/t0$e;->a(Lio/grpc/Status;)V

    return-void
.end method
