.class final Leh/o0;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/o0$c;,
        Leh/o0$b;
    }
.end annotation


# static fields
.field static n:Z

.field static o:Z

.field private static final p:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Leh/s1$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Leh/q2;

.field private final d:Lio/grpc/n0$d;

.field private final e:Leh/j2;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "Leh/p2;",
            ">;"
        }
    .end annotation
.end field

.field private i:Leh/p2;

.field private j:Leh/s2$a;

.field private k:Leh/s1$b;

.field private l:Leh/o0$b;

.field private m:Lio/grpc/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "GRPC_XDS_EXPERIMENTAL_CIRCUIT_BREAKING"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 2
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
    sput-boolean v0, Leh/o0;->n:Z

    const-string v0, "GRPC_XDS_EXPERIMENTAL_SECURITY_SUPPORT"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/v;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    sput-boolean v2, Leh/o0;->o:Z

    const-string v0, "io.grpc.xds.ClusterImplLoadBalancer.clusterLocalityStats"

    .line 5
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o0;->p:Lio/grpc/a$c;

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 1

    .line 1
    sget-object v0, Leh/j2$a;->a:Leh/j2;

    invoke-direct {p0, p1, v0}, Leh/o0;-><init>(Lio/grpc/n0$d;Leh/j2;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;Leh/j2;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    const-string v0, "helper"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$d;

    iput-object v0, p0, Leh/o0;->d:Lio/grpc/n0$d;

    const-string v0, "random"

    .line 4
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leh/j2;

    iput-object p2, p0, Leh/o0;->e:Leh/j2;

    .line 5
    invoke-virtual {p1}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cluster-impl-lb"

    invoke-static {p2, p1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    .line 6
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/o0;->c:Leh/q2;

    .line 7
    sget-object p2, Leh/q2$b;->b:Leh/q2$b;

    const-string v0, "Created"

    invoke-virtual {p1, p2, v0}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Leh/o0;)Leh/j2;
    .locals 0

    iget-object p0, p0, Leh/o0;->e:Leh/j2;

    return-object p0
.end method

.method static synthetic g(Leh/o0;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/o0;->c:Leh/q2;

    return-object p0
.end method

.method static synthetic h(Leh/o0;)Leh/s1$b;
    .locals 0

    iget-object p0, p0, Leh/o0;->k:Leh/s1$b;

    return-object p0
.end method

.method static synthetic i(Leh/o0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/o0;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Leh/o0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/o0;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Leh/o0;)Leh/p2;
    .locals 0

    iget-object p0, p0, Leh/o0;->i:Leh/p2;

    return-object p0
.end method

.method static synthetic l()Lio/grpc/a$c;
    .locals 1

    sget-object v0, Leh/o0;->p:Lio/grpc/a$c;

    return-object v0
.end method

.method static synthetic m(Leh/o0;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Leh/o0;->d:Lio/grpc/n0$d;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lio/grpc/Status;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/o0;->m:Lio/grpc/n0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/n0;->b(Lio/grpc/Status;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Leh/o0;->d:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Leh/t2$b;

    invoke-direct {v2, p1}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :goto_0
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/o0;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lio/grpc/n0$g;->b()Lio/grpc/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Leh/o0;->h:Lio/grpc/internal/p1;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Leh/o1;->b:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/p1;

    iput-object v1, p0, Leh/o0;->h:Lio/grpc/internal/p1;

    .line 5
    invoke-interface {v1}, Lio/grpc/internal/p1;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/p2;

    iput-object v1, p0, Leh/o0;->i:Leh/p2;

    .line 6
    :cond_0
    iget-object v1, p0, Leh/o0;->j:Leh/s2$a;

    if-nez v1, :cond_1

    .line 7
    sget-object v1, Leh/o1;->c:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/s2$a;

    iput-object v1, p0, Leh/o0;->j:Leh/s2$a;

    .line 8
    :cond_1
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/p0$a;

    .line 9
    iget-object v2, p0, Leh/o0;->f:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 10
    iget-object v2, v1, Leh/p0$a;->a:Ljava/lang/String;

    iput-object v2, p0, Leh/o0;->f:Ljava/lang/String;

    .line 11
    iget-object v3, v1, Leh/p0$a;->b:Ljava/lang/String;

    iput-object v3, p0, Leh/o0;->g:Ljava/lang/String;

    .line 12
    new-instance v4, Leh/o0$b;

    iget-object v5, p0, Leh/o0;->j:Leh/s2$a;

    .line 13
    invoke-interface {v5, v2, v3}, Leh/s2$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    iget-object v3, v1, Leh/p0$a;->c:Leh/j0$d;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v3, v5}, Leh/o0$b;-><init>(Leh/o0;Ljava/util/concurrent/atomic/AtomicLong;Leh/j0$d;Leh/o0$a;)V

    iput-object v4, p0, Leh/o0;->l:Leh/o0$b;

    .line 14
    iget-object v2, v1, Leh/p0$a;->g:Lio/grpc/internal/e2$b;

    invoke-virtual {v2}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v2

    iget-object v3, p0, Leh/o0;->l:Leh/o0$b;

    invoke-virtual {v2, v3}, Lio/grpc/n0$c;->a(Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object v2

    iput-object v2, p0, Leh/o0;->m:Lio/grpc/n0;

    .line 15
    iget-object v2, v1, Leh/p0$a;->c:Leh/j0$d;

    if-eqz v2, :cond_2

    .line 16
    iget-object v3, p0, Leh/o0;->i:Leh/p2;

    iget-object v4, p0, Leh/o0;->f:Ljava/lang/String;

    iget-object v5, p0, Leh/o0;->g:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5}, Leh/p2;->h(Leh/j0$d;Ljava/lang/String;Ljava/lang/String;)Leh/s1$b;

    move-result-object v2

    iput-object v2, p0, Leh/o0;->k:Leh/s1$b;

    .line 17
    :cond_2
    iget-object v2, p0, Leh/o0;->l:Leh/o0$b;

    iget-object v3, v1, Leh/p0$a;->f:Ljava/util/List;

    invoke-static {v2, v3}, Leh/o0$b;->n(Leh/o0$b;Ljava/util/List;)V

    .line 18
    iget-object v2, p0, Leh/o0;->l:Leh/o0$b;

    iget-object v3, v1, Leh/p0$a;->d:Ljava/lang/Long;

    invoke-static {v2, v3}, Leh/o0$b;->p(Leh/o0$b;Ljava/lang/Long;)V

    .line 19
    iget-object v2, p0, Leh/o0;->l:Leh/o0$b;

    iget-object v3, v1, Leh/p0$a;->e:Leh/i1;

    invoke-static {v2, v3}, Leh/o0$b;->q(Leh/o0$b;Leh/i1;)V

    .line 20
    iget-object v2, p0, Leh/o0;->m:Lio/grpc/n0;

    .line 21
    invoke-virtual {p1}, Lio/grpc/n0$g;->e()Lio/grpc/n0$g$a;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Lio/grpc/n0$g$a;->c(Lio/grpc/a;)Lio/grpc/n0$g$a;

    move-result-object p1

    iget-object v0, v1, Leh/p0$a;->g:Lio/grpc/internal/e2$b;

    .line 23
    invoke-virtual {v0}, Lio/grpc/internal/e2$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/n0$g$a;->d(Ljava/lang/Object;)Lio/grpc/n0$g$a;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lio/grpc/n0$g$a;->a()Lio/grpc/n0$g;

    move-result-object p1

    .line 25
    invoke-virtual {v2, p1}, Lio/grpc/n0;->d(Lio/grpc/n0$g;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/o0;->k:Leh/s1$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Leh/s1$b;->d()V

    .line 3
    :cond_0
    iget-object v0, p0, Leh/o0;->m:Lio/grpc/n0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    .line 5
    iget-object v0, p0, Leh/o0;->l:Leh/o0$b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Leh/o0$b;->q(Leh/o0$b;Leh/i1;)V

    .line 7
    iput-object v1, p0, Leh/o0;->l:Leh/o0$b;

    .line 8
    :cond_1
    iget-object v0, p0, Leh/o0;->i:Leh/p2;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Leh/o0;->h:Lio/grpc/internal/p1;

    invoke-interface {v1, v0}, Lio/grpc/internal/p1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/p2;

    iput-object v0, p0, Leh/o0;->i:Leh/p2;

    :cond_2
    return-void
.end method
