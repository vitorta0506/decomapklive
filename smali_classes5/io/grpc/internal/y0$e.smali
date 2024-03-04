.class Lio/grpc/internal/y0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/y0;->g(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lio/grpc/internal/y0;


# direct methods
.method constructor <init>(Lio/grpc/internal/y0;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    iput-object p2, p0, Lio/grpc/internal/y0$e;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->j(Lio/grpc/internal/y0;)Lio/grpc/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    iget-object v2, p0, Lio/grpc/internal/y0$e;->a:Lio/grpc/Status;

    invoke-static {v0, v2}, Lio/grpc/internal/y0;->v(Lio/grpc/internal/y0;Lio/grpc/Status;)Lio/grpc/Status;

    .line 3
    iget-object v0, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v0}, Lio/grpc/internal/y0;->k(Lio/grpc/internal/y0;)Lio/grpc/internal/k1;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v2}, Lio/grpc/internal/y0;->m(Lio/grpc/internal/y0;)Lio/grpc/internal/u;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/grpc/internal/y0;->l(Lio/grpc/internal/y0;Lio/grpc/internal/k1;)Lio/grpc/internal/k1;

    .line 6
    iget-object v3, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v3, v4}, Lio/grpc/internal/y0;->n(Lio/grpc/internal/y0;Lio/grpc/internal/u;)Lio/grpc/internal/u;

    .line 7
    iget-object v3, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v3, v1}, Lio/grpc/internal/y0;->F(Lio/grpc/internal/y0;Lio/grpc/ConnectivityState;)V

    .line 8
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->J(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$k;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/y0$k;->f()V

    .line 9
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->w(Lio/grpc/internal/y0;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->x(Lio/grpc/internal/y0;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->I(Lio/grpc/internal/y0;)V

    .line 12
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->o(Lio/grpc/internal/y0;)Lio/grpc/d1$c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->o(Lio/grpc/internal/y0;)Lio/grpc/d1$c;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/d1$c;->a()V

    .line 14
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1}, Lio/grpc/internal/y0;->q(Lio/grpc/internal/y0;)Lio/grpc/internal/k1;

    move-result-object v1

    iget-object v3, p0, Lio/grpc/internal/y0$e;->a:Lio/grpc/Status;

    invoke-interface {v1, v3}, Lio/grpc/internal/k1;->g(Lio/grpc/Status;)V

    .line 15
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1, v4}, Lio/grpc/internal/y0;->p(Lio/grpc/internal/y0;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    .line 16
    iget-object v1, p0, Lio/grpc/internal/y0$e;->b:Lio/grpc/internal/y0;

    invoke-static {v1, v4}, Lio/grpc/internal/y0;->r(Lio/grpc/internal/y0;Lio/grpc/internal/k1;)Lio/grpc/internal/k1;

    :cond_2
    if-eqz v0, :cond_3

    .line 17
    iget-object v1, p0, Lio/grpc/internal/y0$e;->a:Lio/grpc/Status;

    invoke-interface {v0, v1}, Lio/grpc/internal/k1;->g(Lio/grpc/Status;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 18
    iget-object v0, p0, Lio/grpc/internal/y0$e;->a:Lio/grpc/Status;

    invoke-interface {v2, v0}, Lio/grpc/internal/k1;->g(Lio/grpc/Status;)V

    :cond_4
    return-void
.end method
