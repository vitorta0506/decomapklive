.class final Leh/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/r1$f;,
        Leh/r1$e;,
        Leh/r1$d;,
        Leh/r1$c;,
        Leh/r1$b;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/g0;

.field private final b:Leh/q2;

.field private final c:Lio/grpc/d;

.field private final d:Lio/grpc/r;

.field private final e:Z

.field private final f:Leh/a1$c;

.field private final g:Lio/grpc/d1;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Lcom/google/common/base/u;

.field private final j:Lio/grpc/internal/k$a;

.field private final k:Leh/s1;

.field private l:Z

.field private m:Lio/grpc/internal/k;

.field private n:Lio/grpc/d1$c;

.field private o:Leh/r1$d;


# direct methods
.method constructor <init>(Leh/s1;Lio/grpc/d;Lio/grpc/r;ZLeh/a1$c;Lio/grpc/d1;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/k$a;Lcom/google/common/base/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/s1;",
            "Lio/grpc/d;",
            "Lio/grpc/r;",
            "Z",
            "Leh/a1$c;",
            "Lio/grpc/d1;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/internal/k$a;",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "loadStatsManager"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/s1;

    iput-object p1, p0, Leh/r1;->k:Leh/s1;

    const-string p1, "xdsChannel"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/d;

    iput-object p1, p0, Leh/r1;->c:Lio/grpc/d;

    const-string p1, "context"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/r;

    iput-object p1, p0, Leh/r1;->d:Lio/grpc/r;

    .line 5
    iput-boolean p4, p0, Leh/r1;->e:Z

    const-string p1, "syncContext"

    .line 6
    invoke-static {p6, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/d1;

    iput-object p1, p0, Leh/r1;->g:Lio/grpc/d1;

    const-string p1, "timeService"

    .line 7
    invoke-static {p7, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Leh/r1;->h:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "backoffPolicyProvider"

    .line 8
    invoke-static {p8, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/k$a;

    iput-object p1, p0, Leh/r1;->j:Lio/grpc/internal/k$a;

    const-string p1, "stopwatchSupplier"

    .line 9
    invoke-static {p9, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/w;

    invoke-interface {p1}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/u;

    iput-object p1, p0, Leh/r1;->i:Lcom/google/common/base/u;

    const-string p1, "node"

    .line 10
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/a1$c;

    invoke-virtual {p1}, Leh/a1$c;->b()Leh/a1$c$a;

    move-result-object p1

    const-string p2, "envoy.lrs.supports_send_all_clusters"

    .line 11
    invoke-virtual {p1, p2}, Leh/a1$c$a;->j(Ljava/lang/String;)Leh/a1$c$a;

    move-result-object p1

    invoke-virtual {p1}, Leh/a1$c$a;->k()Leh/a1$c;

    move-result-object p1

    iput-object p1, p0, Leh/r1;->f:Leh/a1$c;

    const-string p1, "lrs-client"

    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    iput-object p1, p0, Leh/r1;->a:Lio/grpc/g0;

    .line 13
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/r1;->b:Leh/q2;

    .line 14
    sget-object p2, Leh/q2$b;->b:Leh/q2$b;

    const-string p3, "Created"

    invoke-virtual {p1, p2, p3}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Leh/r1;)Lio/grpc/internal/k$a;
    .locals 0

    iget-object p0, p0, Leh/r1;->j:Lio/grpc/internal/k$a;

    return-object p0
.end method

.method static synthetic b(Leh/r1;)Lcom/google/common/base/u;
    .locals 0

    iget-object p0, p0, Leh/r1;->i:Lcom/google/common/base/u;

    return-object p0
.end method

.method static synthetic c(Leh/r1;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    iput-object p1, p0, Leh/r1;->n:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic d(Leh/r1;)Leh/r1$d;
    .locals 0

    iget-object p0, p0, Leh/r1;->o:Leh/r1$d;

    return-object p0
.end method

.method static synthetic e(Leh/r1;Leh/r1$d;)Leh/r1$d;
    .locals 0

    iput-object p1, p0, Leh/r1;->o:Leh/r1$d;

    return-object p1
.end method

.method static synthetic f(Leh/r1;)Lio/grpc/d;
    .locals 0

    iget-object p0, p0, Leh/r1;->c:Lio/grpc/d;

    return-object p0
.end method

.method static synthetic g(Leh/r1;)Leh/a1$c;
    .locals 0

    iget-object p0, p0, Leh/r1;->f:Leh/a1$c;

    return-object p0
.end method

.method static synthetic h(Leh/r1;)V
    .locals 0

    invoke-direct {p0}, Leh/r1;->p()V

    return-void
.end method

.method static synthetic i(Leh/r1;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/r1;->b:Leh/q2;

    return-object p0
.end method

.method static synthetic j(Leh/r1;)Leh/s1;
    .locals 0

    iget-object p0, p0, Leh/r1;->k:Leh/s1;

    return-object p0
.end method

.method static synthetic k(Leh/r1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Leh/r1;->h:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic l(Leh/r1;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/r1;->g:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic m(Leh/r1;)Lio/grpc/internal/k;
    .locals 0

    iget-object p0, p0, Leh/r1;->m:Lio/grpc/internal/k;

    return-object p0
.end method

.method static synthetic n(Leh/r1;Lio/grpc/internal/k;)Lio/grpc/internal/k;
    .locals 0

    iput-object p1, p0, Leh/r1;->m:Lio/grpc/internal/k;

    return-object p1
.end method

.method private p()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Leh/r1;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/r1;->o:Leh/r1$d;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "previous lbStream has not been cleared yet"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Leh/r1;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Leh/r1$f;

    invoke-direct {v0, p0, v1}, Leh/r1$f;-><init>(Leh/r1;Leh/r1$a;)V

    iput-object v0, p0, Leh/r1;->o:Leh/r1$d;

    goto :goto_1

    .line 5
    :cond_2
    new-instance v0, Leh/r1$e;

    invoke-direct {v0, p0, v1}, Leh/r1$e;-><init>(Leh/r1;Leh/r1$a;)V

    iput-object v0, p0, Leh/r1;->o:Leh/r1$d;

    .line 6
    :goto_1
    iget-object v0, p0, Leh/r1;->i:Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->f()Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    .line 7
    iget-object v0, p0, Leh/r1;->d:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v0

    .line 8
    :try_start_0
    iget-object v1, p0, Leh/r1;->o:Leh/r1$d;

    invoke-virtual {v1}, Leh/r1$d;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v1, p0, Leh/r1;->d:Lio/grpc/r;

    invoke-virtual {v1, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Leh/r1;->d:Lio/grpc/r;

    invoke-virtual {v2, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw v1
.end method


# virtual methods
.method o()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/r1;->g:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-boolean v0, p0, Leh/r1;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Leh/r1;->l:Z

    .line 4
    iget-object v0, p0, Leh/r1;->b:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Starting load reporting RPC"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Leh/r1;->p()V

    return-void
.end method

.method q()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/r1;->g:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-boolean v0, p0, Leh/r1;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Leh/r1;->l:Z

    .line 4
    iget-object v0, p0, Leh/r1;->b:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Stopping load reporting RPC"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Leh/r1;->n:Lio/grpc/d1$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Leh/r1;->n:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 7
    :cond_1
    iget-object v0, p0, Leh/r1;->o:Leh/r1$d;

    if-eqz v0, :cond_2

    .line 8
    sget-object v1, Lio/grpc/Status;->g:Lio/grpc/Status;

    const-string v2, "stop load reporting"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object v1

    invoke-static {v0, v1}, Leh/r1$d;->a(Leh/r1$d;Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method
