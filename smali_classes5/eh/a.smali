.class final Leh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/a$e;,
        Leh/a$d;,
        Leh/a$c;,
        Leh/a$f;,
        Leh/a$g;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/d1;

.field private final b:Lio/grpc/g0;

.field private final c:Leh/q2;

.field private final d:Leh/j0$d;

.field private final e:Lio/grpc/q0;

.field private final f:Leh/p2$n;

.field private final g:Leh/p2$k;

.field private final h:Lio/grpc/r;

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Lio/grpc/internal/k$a;

.field private final k:Lcom/google/common/base/u;

.field private final l:Leh/a1$c;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Leh/a$c;

.field private s:Lio/grpc/internal/k;

.field private t:Lio/grpc/d1$c;


# direct methods
.method constructor <init>(Leh/n0$r;Leh/j0$d;Leh/a1$c;Leh/p2$n;Leh/p2$k;Lio/grpc/r;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/d1;Lio/grpc/internal/k$a;Lcom/google/common/base/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/n0$r;",
            "Leh/j0$d;",
            "Leh/a1$c;",
            "Leh/p2$n;",
            "Leh/p2$k;",
            "Lio/grpc/r;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/d1;",
            "Lio/grpc/internal/k$a;",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Leh/a;->m:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Leh/a;->n:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Leh/a;->o:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Leh/a;->p:Ljava/lang/String;

    const-string v0, "serverInfo"

    .line 6
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/j0$d;

    iput-object v0, p0, Leh/a;->d:Leh/j0$d;

    const-string v0, "xdsChannelFactory"

    .line 7
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/n0$r;

    invoke-virtual {p1, p2}, Leh/n0$r;->a(Leh/j0$d;)Lio/grpc/q0;

    move-result-object p1

    iput-object p1, p0, Leh/a;->e:Lio/grpc/q0;

    const-string p1, "xdsResponseHandler"

    .line 8
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/p2$n;

    iput-object p1, p0, Leh/a;->f:Leh/p2$n;

    const-string p1, "resourcesSubscriber"

    .line 9
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/p2$k;

    iput-object p1, p0, Leh/a;->g:Leh/p2$k;

    const-string p1, "bootstrapNode"

    .line 10
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/a1$c;

    iput-object p1, p0, Leh/a;->l:Leh/a1$c;

    const-string p1, "context"

    .line 11
    invoke-static {p6, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/r;

    iput-object p1, p0, Leh/a;->h:Lio/grpc/r;

    const-string p1, "timeService"

    .line 12
    invoke-static {p7, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Leh/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "syncContext"

    .line 13
    invoke-static {p8, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/d1;

    iput-object p1, p0, Leh/a;->a:Lio/grpc/d1;

    const-string p1, "backoffPolicyProvider"

    .line 14
    invoke-static {p9, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/k$a;

    iput-object p1, p0, Leh/a;->j:Lio/grpc/internal/k$a;

    const-string p1, "stopwatchSupplier"

    .line 15
    invoke-static {p10, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/w;

    invoke-interface {p1}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/u;

    iput-object p1, p0, Leh/a;->k:Lcom/google/common/base/u;

    .line 16
    invoke-virtual {p2}, Leh/j0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "xds-client"

    invoke-static {p2, p1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    iput-object p1, p0, Leh/a;->b:Lio/grpc/g0;

    .line 17
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/a;->c:Leh/q2;

    .line 18
    sget-object p2, Leh/q2$b;->b:Leh/q2$b;

    const-string p3, "Created"

    invoke-virtual {p1, p2, p3}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/a;->r:Leh/a$c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Previous adsStream has not been cleared yet"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/a;->d:Leh/j0$d;

    invoke-virtual {v0}, Leh/j0$d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Leh/a$e;

    invoke-direct {v0, p0, v1}, Leh/a$e;-><init>(Leh/a;Leh/a$a;)V

    iput-object v0, p0, Leh/a;->r:Leh/a$c;

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Leh/a$d;

    invoke-direct {v0, p0, v1}, Leh/a$d;-><init>(Leh/a;Leh/a$a;)V

    iput-object v0, p0, Leh/a;->r:Leh/a$c;

    .line 5
    :goto_1
    iget-object v0, p0, Leh/a;->h:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v0

    .line 6
    :try_start_0
    iget-object v1, p0, Leh/a;->r:Leh/a$c;

    invoke-virtual {v1}, Leh/a$c;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Leh/a;->h:Lio/grpc/r;

    invoke-virtual {v1, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    .line 8
    iget-object v0, p0, Leh/a;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "ADS stream started"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Leh/a;->k:Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->f()Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    return-void

    :catchall_0
    move-exception v1

    .line 10
    iget-object v2, p0, Leh/a;->h:Lio/grpc/r;

    invoke-virtual {v2, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw v1
.end method

.method static synthetic a(Leh/a;)Z
    .locals 0

    iget-boolean p0, p0, Leh/a;->q:Z

    return p0
.end method

.method static synthetic b(Leh/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Leh/a;->q:Z

    return p1
.end method

.method static synthetic c(Leh/a;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/a;->c:Leh/q2;

    return-object p0
.end method

.method static synthetic d(Leh/a;)Leh/p2$k;
    .locals 0

    iget-object p0, p0, Leh/a;->g:Leh/p2$k;

    return-object p0
.end method

.method static synthetic e(Leh/a;)Leh/p2$n;
    .locals 0

    iget-object p0, p0, Leh/a;->f:Leh/p2$n;

    return-object p0
.end method

.method static synthetic f(Leh/a;)Lio/grpc/internal/k;
    .locals 0

    iget-object p0, p0, Leh/a;->s:Lio/grpc/internal/k;

    return-object p0
.end method

.method static synthetic g(Leh/a;Lio/grpc/internal/k;)Lio/grpc/internal/k;
    .locals 0

    iput-object p1, p0, Leh/a;->s:Lio/grpc/internal/k;

    return-object p1
.end method

.method static synthetic h(Leh/a;)Lio/grpc/internal/k$a;
    .locals 0

    iget-object p0, p0, Leh/a;->j:Lio/grpc/internal/k$a;

    return-object p0
.end method

.method static synthetic i(Leh/a;)Lcom/google/common/base/u;
    .locals 0

    iget-object p0, p0, Leh/a;->k:Lcom/google/common/base/u;

    return-object p0
.end method

.method static synthetic j(Leh/a;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Leh/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic k(Leh/a;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/a;->a:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic l(Leh/a;)Leh/a1$c;
    .locals 0

    iget-object p0, p0, Leh/a;->l:Leh/a1$c;

    return-object p0
.end method

.method static synthetic m(Leh/a;)Leh/a$c;
    .locals 0

    iget-object p0, p0, Leh/a;->r:Leh/a$c;

    return-object p0
.end method

.method static synthetic n(Leh/a;Leh/a$c;)Leh/a$c;
    .locals 0

    iput-object p1, p0, Leh/a;->r:Leh/a$c;

    return-object p1
.end method

.method static synthetic o(Leh/a;)Lio/grpc/d1$c;
    .locals 0

    iget-object p0, p0, Leh/a;->t:Lio/grpc/d1$c;

    return-object p0
.end method

.method static synthetic p(Leh/a;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    iput-object p1, p0, Leh/a;->t:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic q(Leh/a;)Lio/grpc/q0;
    .locals 0

    iget-object p0, p0, Leh/a;->e:Lio/grpc/q0;

    return-object p0
.end method

.method static synthetic r(Leh/a;)V
    .locals 0

    invoke-direct {p0}, Leh/a;->A()V

    return-void
.end method

.method static synthetic s(Leh/a;)Leh/j0$d;
    .locals 0

    iget-object p0, p0, Leh/a;->d:Leh/j0$d;

    return-object p0
.end method


# virtual methods
.method t(Leh/a$f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Leh/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 2
    iput-object p2, p0, Leh/a;->p:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown resource type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 4
    :cond_1
    iput-object p2, p0, Leh/a;->o:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    iput-object p2, p0, Leh/a;->n:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_3
    iput-object p2, p0, Leh/a;->m:Ljava/lang/String;

    .line 7
    :goto_0
    iget-object v0, p0, Leh/a;->c:Leh/q2;

    sget-object v4, Leh/q2$b;->b:Leh/q2$b;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    aput-object p3, v1, v3

    aput-object p2, v1, v2

    const-string v2, "Sending ACK for {0} update, nonce: {1}, current version: {2}"

    invoke-virtual {v0, v4, v2, v1}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Leh/a;->g:Leh/p2$k;

    iget-object v1, p0, Leh/a;->d:Leh/j0$d;

    invoke-interface {v0, v1, p1}, Leh/p2$k;->e(Leh/j0$d;Leh/a$f;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_4

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_4
    move-object v4, v0

    .line 10
    iget-object v1, p0, Leh/a;->r:Leh/a$c;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Leh/a$c;->h(Leh/a$f;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/a;->b:Lio/grpc/g0;

    invoke-virtual {v0}, Lio/grpc/g0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u(Leh/a$f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Leh/a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/a;->r:Leh/a$c;

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Leh/a;->A()V

    .line 4
    :cond_1
    iget-object v0, p0, Leh/a;->g:Leh/p2$k;

    iget-object v1, p0, Leh/a;->d:Leh/j0$d;

    invoke-interface {v0, v1, p1}, Leh/p2$k;->e(Leh/j0$d;Leh/a$f;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Leh/a;->r:Leh/a$c;

    invoke-virtual {v1, p1, v0}, Leh/a$c;->i(Leh/a$f;Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method v()Lio/grpc/d;
    .locals 1

    iget-object v0, p0, Leh/a;->e:Lio/grpc/q0;

    return-object v0
.end method

.method w(Leh/a$f;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Leh/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Leh/a;->p:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4
    :cond_1
    iget-object p1, p0, Leh/a;->o:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Leh/a;->n:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Leh/a;->m:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method x()Z
    .locals 1

    iget-object v0, p0, Leh/a;->t:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method y(Leh/a$f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Leh/a;->w(Leh/a$f;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v0, p0, Leh/a;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-string v4, "Sending NACK for {0} update, nonce: {1}, current version: {2}"

    invoke-virtual {v0, v1, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Leh/a;->g:Leh/p2$k;

    iget-object v1, p0, Leh/a;->d:Leh/j0$d;

    invoke-interface {v0, v1, p1}, Leh/p2$k;->e(Leh/j0$d;Leh/a$f;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 5
    iget-object v0, p0, Leh/a;->r:Leh/a$c;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Leh/a$c;->h(Leh/a$f;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method z()V
    .locals 2

    iget-object v0, p0, Leh/a;->a:Lio/grpc/d1;

    new-instance v1, Leh/a$a;

    invoke-direct {v1, p0}, Leh/a$a;-><init>(Leh/a;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
