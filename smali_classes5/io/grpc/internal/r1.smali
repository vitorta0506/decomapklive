.class final Lio/grpc/internal/r1;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/r1$d;,
        Lio/grpc/internal/r1$c;
    }
.end annotation


# instance fields
.field private final c:Lio/grpc/n0$d;

.field private d:Lio/grpc/n0$h;


# direct methods
.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    const-string v0, "helper"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$d;

    iput-object p1, p0, Lio/grpc/internal/r1;->c:Lio/grpc/n0$d;

    return-void
.end method

.method static synthetic f(Lio/grpc/internal/r1;Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/internal/r1;->h(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method

.method static synthetic g(Lio/grpc/internal/r1;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/r1;->c:Lio/grpc/n0$d;

    return-object p0
.end method

.method private h(Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 2
    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v1, v2, :cond_2

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/r1;->c:Lio/grpc/n0$d;

    invoke-virtual {v1}, Lio/grpc/n0$d;->j()V

    .line 5
    :cond_2
    sget-object v1, Lio/grpc/internal/r1$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 p1, 0x4

    if-ne v1, p1, :cond_3

    .line 6
    new-instance p1, Lio/grpc/internal/r1$c;

    invoke-virtual {p2}, Lio/grpc/q;->d()Lio/grpc/Status;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/n0$e;->f(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/internal/r1$c;-><init>(Lio/grpc/n0$e;)V

    goto :goto_1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported state:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p2, Lio/grpc/internal/r1$c;

    invoke-static {p1}, Lio/grpc/n0$e;->h(Lio/grpc/n0$h;)Lio/grpc/n0$e;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/grpc/internal/r1$c;-><init>(Lio/grpc/n0$e;)V

    goto :goto_0

    .line 9
    :cond_5
    new-instance p1, Lio/grpc/internal/r1$c;

    invoke-static {}, Lio/grpc/n0$e;->g()Lio/grpc/n0$e;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/internal/r1$c;-><init>(Lio/grpc/n0$e;)V

    goto :goto_1

    .line 10
    :cond_6
    new-instance p2, Lio/grpc/internal/r1$d;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/r1$d;-><init>(Lio/grpc/internal/r1;Lio/grpc/n0$h;)V

    :goto_0
    move-object p1, p2

    .line 11
    :goto_1
    iget-object p2, p0, Lio/grpc/internal/r1;->c:Lio/grpc/n0$d;

    invoke-virtual {p2, v0, p1}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/r1;->d:Lio/grpc/n0$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/n0$h;->h()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/grpc/internal/r1;->d:Lio/grpc/n0$h;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/r1;->c:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Lio/grpc/internal/r1$c;

    invoke-static {p1}, Lio/grpc/n0$e;->f(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/grpc/internal/r1$c;-><init>(Lio/grpc/n0$e;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/grpc/internal/r1;->d:Lio/grpc/n0$h;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/internal/r1;->c:Lio/grpc/n0$d;

    .line 4
    invoke-static {}, Lio/grpc/n0$b;->c()Lio/grpc/n0$b$a;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lio/grpc/n0$b$a;->e(Ljava/util/List;)Lio/grpc/n0$b$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/grpc/n0$b$a;->b()Lio/grpc/n0$b;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lio/grpc/n0$d;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object p1

    .line 8
    new-instance v0, Lio/grpc/internal/r1$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/r1$a;-><init>(Lio/grpc/internal/r1;Lio/grpc/n0$h;)V

    invoke-virtual {p1, v0}, Lio/grpc/n0$h;->i(Lio/grpc/n0$j;)V

    .line 9
    iput-object p1, p0, Lio/grpc/internal/r1;->d:Lio/grpc/n0$h;

    .line 10
    iget-object v0, p0, Lio/grpc/internal/r1;->c:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v2, Lio/grpc/internal/r1$c;

    invoke-static {p1}, Lio/grpc/n0$e;->h(Lio/grpc/n0$h;)Lio/grpc/n0$e;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/grpc/internal/r1$c;-><init>(Lio/grpc/n0$e;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 11
    invoke-virtual {p1}, Lio/grpc/n0$h;->g()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lio/grpc/n0$h;->j(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/r1;->d:Lio/grpc/n0$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/n0$h;->h()V

    :cond_0
    return-void
.end method
