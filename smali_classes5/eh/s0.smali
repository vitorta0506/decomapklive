.class final Leh/s0;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/s0$b;,
        Leh/s0$c;,
        Leh/s0$d;
    }
.end annotation


# static fields
.field private static final l:Leh/t1;


# instance fields
.field private final c:Leh/q2;

.field private final d:Lio/grpc/d1;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lio/grpc/p0;

.field private final g:Lio/grpc/internal/k$a;

.field private final h:Ldh/d;

.field private i:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "Leh/p2;",
            ">;"
        }
    .end annotation
.end field

.field private j:Leh/p2;

.field private k:Leh/t0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    invoke-static {v0, v0, v0}, Leh/t1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Leh/t1;

    move-result-object v0

    sput-object v0, Leh/s0;->l:Leh/t1;

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/p0;->b()Lio/grpc/p0;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/e0$a;

    invoke-direct {v1}, Lio/grpc/internal/e0$a;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Leh/s0;-><init>(Lio/grpc/n0$d;Lio/grpc/p0;Lio/grpc/internal/k$a;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;Lio/grpc/p0;Lio/grpc/internal/k$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    const-string v0, "lbRegistry"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/p0;

    iput-object p2, p0, Leh/s0;->f:Lio/grpc/p0;

    const-string p2, "backoffPolicyProvider"

    .line 4
    invoke-static {p3, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/internal/k$a;

    iput-object p2, p0, Leh/s0;->g:Lio/grpc/internal/k$a;

    .line 5
    invoke-virtual {p1}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object p2

    const-string p3, "syncContext"

    invoke-static {p2, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/d1;

    iput-object p2, p0, Leh/s0;->d:Lio/grpc/d1;

    .line 6
    invoke-virtual {p1}, Lio/grpc/n0$d;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    const-string p3, "timeService"

    invoke-static {p2, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Leh/s0;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    new-instance p2, Ldh/d;

    invoke-direct {p2, p1}, Ldh/d;-><init>(Lio/grpc/n0$d;)V

    iput-object p2, p0, Leh/s0;->h:Ldh/d;

    .line 8
    invoke-virtual {p1}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cluster-resolver-lb"

    invoke-static {p2, p1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    .line 9
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/s0;->c:Leh/q2;

    .line 10
    sget-object p2, Leh/q2$b;->b:Leh/q2$b;

    const-string p3, "Created"

    invoke-virtual {p1, p2, p3}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Leh/s0;)Leh/p2;
    .locals 0

    iget-object p0, p0, Leh/s0;->j:Leh/p2;

    return-object p0
.end method

.method static synthetic g(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Leh/s0;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Leh/t1;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Leh/s0;->s(Leh/t1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lio/grpc/internal/e2$b;Lio/grpc/p0;Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-static/range {p0 .. p8}, Leh/s0;->r(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lio/grpc/internal/e2$b;Lio/grpc/p0;Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Leh/s0;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/s0;->d:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic k(Leh/s0;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/s0;->c:Leh/q2;

    return-object p0
.end method

.method static synthetic l()Leh/t1;
    .locals 1

    sget-object v0, Leh/s0;->l:Leh/t1;

    return-object v0
.end method

.method static synthetic m(Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lio/grpc/p0;Ljava/util/List;)Leh/w1$a$a;
    .locals 0

    invoke-static/range {p0 .. p5}, Leh/s0;->q(Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lio/grpc/p0;Ljava/util/List;)Leh/w1$a$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Leh/s0;)Lio/grpc/internal/k$a;
    .locals 0

    iget-object p0, p0, Leh/s0;->g:Lio/grpc/internal/k$a;

    return-object p0
.end method

.method static synthetic o(Leh/s0;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Leh/s0;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic p(Leh/s0;)Lio/grpc/p0;
    .locals 0

    iget-object p0, p0, Leh/s0;->f:Lio/grpc/p0;

    return-object p0
.end method

.method private static q(Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lio/grpc/p0;Ljava/util/List;)Leh/w1$a$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Leh/j0$d;",
            "Ljava/lang/Long;",
            "Leh/i1;",
            "Lio/grpc/p0;",
            "Ljava/util/List<",
            "Leh/x0;",
            ">;)",
            "Leh/w1$a$a;"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/grpc/internal/e2$b;

    const-string v0, "pick_first"

    .line 2
    invoke-virtual {p4, v0}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Lio/grpc/internal/e2$b;-><init>(Lio/grpc/o0;Ljava/lang/Object;)V

    .line 3
    new-instance v8, Leh/p0$a;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Leh/p0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Ljava/util/List;Lio/grpc/internal/e2$b;Leh/i1;)V

    const-string p0, "cluster_impl_experimental"

    .line 4
    invoke-virtual {p4, p0}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object p0

    .line 5
    new-instance p1, Lio/grpc/internal/e2$b;

    invoke-direct {p1, p0, v8}, Lio/grpc/internal/e2$b;-><init>(Lio/grpc/o0;Ljava/lang/Object;)V

    .line 6
    new-instance p0, Leh/w1$a$a;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Leh/w1$a$a;-><init>(Lio/grpc/internal/e2$b;Z)V

    return-object p0
.end method

.method private static r(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Lio/grpc/internal/e2$b;Lio/grpc/p0;Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Leh/j0$d;",
            "Ljava/lang/Long;",
            "Leh/i1;",
            "Lio/grpc/internal/e2$b;",
            "Lio/grpc/p0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Leh/t1;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/List<",
            "Leh/x0;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/w1$a$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-virtual/range {p5 .. p5}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "round_robin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    invoke-virtual/range {p5 .. p5}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "least_request_experimental"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v11, p5

    move-object/from16 v18, v11

    move-object/from16 v4, p7

    goto :goto_3

    :cond_1
    :goto_1
    move-object/from16 v4, p7

    .line 5
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leh/t1;

    .line 8
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 9
    new-instance v10, Leh/o2$a;

    move-object/from16 v11, p5

    invoke-direct {v10, v9, v11}, Leh/o2$a;-><init>(ILio/grpc/internal/e2$b;)V

    .line 10
    invoke-static {v8}, Leh/s0;->s(Leh/t1;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object/from16 v11, p5

    const-string v5, "weighted_target_experimental"

    .line 11
    invoke-virtual {v0, v5}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v5

    .line 12
    new-instance v7, Leh/o2$b;

    .line 13
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v7, v6}, Leh/o2$b;-><init>(Ljava/util/Map;)V

    .line 14
    new-instance v6, Lio/grpc/internal/e2$b;

    invoke-direct {v6, v5, v7}, Lio/grpc/internal/e2$b;-><init>(Lio/grpc/o0;Ljava/lang/Object;)V

    move-object/from16 v18, v6

    .line 15
    :goto_3
    new-instance v5, Leh/p0$a;

    move-object v12, v5

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p8

    move-object/from16 v19, p4

    invoke-direct/range {v12 .. v19}, Leh/p0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Ljava/util/List;Lio/grpc/internal/e2$b;Leh/i1;)V

    const-string v6, "cluster_impl_experimental"

    .line 16
    invoke-virtual {v0, v6}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v6

    .line 17
    new-instance v7, Lio/grpc/internal/e2$b;

    invoke-direct {v7, v6, v5}, Lio/grpc/internal/e2$b;-><init>(Lio/grpc/o0;Ljava/lang/Object;)V

    .line 18
    new-instance v5, Leh/w1$a$a;

    const/4 v6, 0x1

    invoke-direct {v5, v7, v6}, Leh/w1$a$a;-><init>(Lio/grpc/internal/e2$b;Z)V

    .line 19
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method private static s(Leh/t1;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static t(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[priority"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 4

    .line 1
    iget-object v0, p0, Leh/s0;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->c:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Received name resolution error: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/s0;->h:Ldh/d;

    invoke-virtual {v0, p1}, Ldh/a;->b(Lio/grpc/Status;)V

    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/s0;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v5, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/s0;->i:Lio/grpc/internal/p1;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/grpc/n0$g;->b()Lio/grpc/a;

    move-result-object v0

    sget-object v3, Leh/o1;->b:Lio/grpc/a$c;

    invoke-virtual {v0, v3}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/p1;

    iput-object v0, p0, Leh/s0;->i:Lio/grpc/internal/p1;

    .line 4
    invoke-interface {v0}, Lio/grpc/internal/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/p2;

    iput-object v0, p0, Leh/s0;->j:Leh/p2;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/t0$a;

    .line 6
    iget-object v3, p0, Leh/s0;->k:Leh/t0$a;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, p0, Leh/s0;->c:Leh/q2;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v4, "Config: {0}"

    invoke-virtual {v3, v1, v4, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Leh/s0;->h:Ldh/d;

    new-instance v2, Leh/s0$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Leh/s0$d;-><init>(Leh/s0;Leh/s0$a;)V

    invoke-virtual {v1, v2}, Ldh/d;->q(Lio/grpc/n0$c;)V

    .line 9
    iput-object v0, p0, Leh/s0;->k:Leh/t0$a;

    .line 10
    iget-object v0, p0, Leh/s0;->h:Ldh/d;

    invoke-virtual {v0, p1}, Ldh/a;->d(Lio/grpc/n0$g;)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/s0;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Leh/s0;->h:Ldh/d;

    invoke-virtual {v0}, Ldh/d;->e()V

    .line 3
    iget-object v0, p0, Leh/s0;->i:Lio/grpc/internal/p1;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Leh/s0;->j:Leh/p2;

    invoke-interface {v0, v1}, Lio/grpc/internal/p1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
