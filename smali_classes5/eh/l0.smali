.class final Leh/l0;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/l0$b;
    }
.end annotation


# instance fields
.field private final c:Leh/q2;

.field private final d:Lio/grpc/n0$d;

.field private final e:Lio/grpc/d1;

.field private final f:Lio/grpc/p0;

.field private g:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "Leh/p2;",
            ">;"
        }
    .end annotation
.end field

.field private h:Leh/p2;

.field private i:Leh/l0$b;

.field private j:Lio/grpc/n0$g;


# direct methods
.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/p0;->b()Lio/grpc/p0;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Leh/l0;-><init>(Lio/grpc/n0$d;Lio/grpc/p0;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;Lio/grpc/p0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    const-string v0, "helper"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$d;

    iput-object v0, p0, Leh/l0;->d:Lio/grpc/n0$d;

    .line 4
    invoke-virtual {p1}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object v0

    const-string v1, "syncContext"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/d1;

    iput-object v0, p0, Leh/l0;->e:Lio/grpc/d1;

    const-string v0, "lbRegistry"

    .line 5
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/p0;

    iput-object p2, p0, Leh/l0;->f:Lio/grpc/p0;

    .line 6
    invoke-virtual {p1}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cds-lb"

    invoke-static {p2, p1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/l0;->c:Leh/q2;

    .line 7
    sget-object p2, Leh/q2$b;->b:Leh/q2$b;

    const-string v0, "Created"

    invoke-virtual {p1, p2, v0}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Leh/l0;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Leh/l0;->d:Lio/grpc/n0$d;

    return-object p0
.end method

.method static synthetic g(Leh/l0;)Lio/grpc/p0;
    .locals 0

    iget-object p0, p0, Leh/l0;->f:Lio/grpc/p0;

    return-object p0
.end method

.method static synthetic h(Leh/l0;)Lio/grpc/n0$g;
    .locals 0

    iget-object p0, p0, Leh/l0;->j:Lio/grpc/n0$g;

    return-object p0
.end method

.method static synthetic i(Leh/l0;)Leh/p2;
    .locals 0

    iget-object p0, p0, Leh/l0;->h:Leh/p2;

    return-object p0
.end method

.method static synthetic j(Leh/l0;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/l0;->e:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic k(Leh/l0;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/l0;->c:Leh/q2;

    return-object p0
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 4

    .line 1
    iget-object v0, p0, Leh/l0;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->c:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Received name resolution error: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/l0;->i:Leh/l0$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Leh/l0$b;->e(Leh/l0$b;)Lio/grpc/n0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Leh/l0;->i:Leh/l0$b;

    invoke-static {v0}, Leh/l0$b;->e(Leh/l0$b;)Lio/grpc/n0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/n0;->b(Lio/grpc/Status;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leh/l0;->d:Lio/grpc/n0$d;

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
    iget-object v0, p0, Leh/l0;->j:Lio/grpc/n0$g;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/l0;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v5, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Leh/l0;->j:Lio/grpc/n0$g;

    .line 4
    invoke-virtual {p1}, Lio/grpc/n0$g;->b()Lio/grpc/a;

    move-result-object v0

    sget-object v1, Leh/o1;->b:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/p1;

    iput-object v0, p0, Leh/l0;->g:Lio/grpc/internal/p1;

    .line 5
    invoke-interface {v0}, Lio/grpc/internal/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/p2;

    iput-object v0, p0, Leh/l0;->h:Leh/p2;

    .line 6
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/m0$a;

    .line 7
    iget-object v0, p0, Leh/l0;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "Config: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    new-instance v0, Leh/l0$b;

    iget-object p1, p1, Leh/m0$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Leh/l0$b;-><init>(Leh/l0;Ljava/lang/String;Leh/l0$a;)V

    iput-object v0, p0, Leh/l0;->i:Leh/l0$b;

    .line 9
    invoke-static {v0}, Leh/l0$b;->a(Leh/l0$b;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/l0;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Leh/l0;->i:Leh/l0$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Leh/l0$b;->f(Leh/l0$b;)V

    .line 4
    :cond_0
    iget-object v0, p0, Leh/l0;->g:Lio/grpc/internal/p1;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Leh/l0;->h:Leh/p2;

    invoke-interface {v0, v1}, Lio/grpc/internal/p1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
