.class Lio/grpc/internal/y0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/y0;->X(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lio/grpc/internal/y0;


# direct methods
.method constructor <init>(Lio/grpc/internal/y0;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    iput-object p2, p0, Lio/grpc/internal/y0$d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->J(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/y0$k;->a()Ljava/net/SocketAddress;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->J(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$k;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/y0$d;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lio/grpc/internal/y0$k;->h(Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    iget-object v2, p0, Lio/grpc/internal/y0$d;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lio/grpc/internal/y0;->K(Lio/grpc/internal/y0;Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->j(Lio/grpc/internal/y0;)Lio/grpc/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->j(Lio/grpc/internal/y0;)Lio/grpc/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v1

    sget-object v4, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne v1, v4, :cond_2

    .line 5
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->J(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/internal/y0$k;->g(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->j(Lio/grpc/internal/y0;)Lio/grpc/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->k(Lio/grpc/internal/y0;)Lio/grpc/internal/k1;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1, v3}, Lio/grpc/internal/y0;->l(Lio/grpc/internal/y0;Lio/grpc/internal/k1;)Lio/grpc/internal/k1;

    .line 9
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->J(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$k;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/y0$k;->f()V

    .line 10
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-static {v1, v2}, Lio/grpc/internal/y0;->F(Lio/grpc/internal/y0;Lio/grpc/ConnectivityState;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->m(Lio/grpc/internal/y0;)Lio/grpc/internal/u;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "InternalSubchannel closed pending transport due to address change"

    .line 12
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lio/grpc/internal/k1;->g(Lio/grpc/Status;)V

    .line 14
    iget-object v0, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v0, v3}, Lio/grpc/internal/y0;->n(Lio/grpc/internal/y0;Lio/grpc/internal/u;)Lio/grpc/internal/u;

    .line 15
    iget-object v0, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->J(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/y0$k;->f()V

    .line 16
    iget-object v0, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->G(Lio/grpc/internal/y0;)V

    :cond_2
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_4

    .line 17
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->o(Lio/grpc/internal/y0;)Lio/grpc/d1$c;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->q(Lio/grpc/internal/y0;)Lio/grpc/internal/k1;

    move-result-object v1

    sget-object v2, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v4, "InternalSubchannel closed transport early due to address change"

    .line 19
    invoke-virtual {v2, v4}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Lio/grpc/internal/k1;->g(Lio/grpc/Status;)V

    .line 21
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->o(Lio/grpc/internal/y0;)Lio/grpc/d1$c;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/d1$c;->a()V

    .line 22
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1, v3}, Lio/grpc/internal/y0;->p(Lio/grpc/internal/y0;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    .line 23
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1, v3}, Lio/grpc/internal/y0;->r(Lio/grpc/internal/y0;Lio/grpc/internal/k1;)Lio/grpc/internal/k1;

    .line 24
    :cond_3
    iget-object v1, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v1, v0}, Lio/grpc/internal/y0;->r(Lio/grpc/internal/y0;Lio/grpc/internal/k1;)Lio/grpc/internal/k1;

    .line 25
    iget-object v0, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->t(Lio/grpc/internal/y0;)Lio/grpc/d1;

    move-result-object v1

    new-instance v2, Lio/grpc/internal/y0$d$a;

    invoke-direct {v2, p0}, Lio/grpc/internal/y0$d$a;-><init>(Lio/grpc/internal/y0$d;)V

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/grpc/internal/y0$d;->b:Lio/grpc/internal/y0;

    .line 26
    invoke-static {v6}, Lio/grpc/internal/y0;->s(Lio/grpc/internal/y0;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 27
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/internal/y0;->p(Lio/grpc/internal/y0;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    :cond_4
    return-void
.end method
