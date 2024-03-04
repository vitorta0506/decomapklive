.class public abstract Lpg/k;
.super Lpg/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "C::",
        "Lkg/l;",
        "O::",
        "Lkg/l;",
        ">",
        "Lpg/l<",
        "TI;>;"
    }
.end annotation


# instance fields
.field private final c:I

.field private d:Lkg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:Lio/grpc/netty/shaded/io/netty/channel/m;

.field private h:Lio/grpc/netty/shaded/io/netty/channel/j;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpg/l;-><init>()V

    const/16 v0, 0x400

    .line 2
    iput v0, p0, Lpg/k;->f:I

    .line 3
    invoke-static {p1}, Lpg/k;->P(I)V

    .line 4
    iput p1, p0, Lpg/k;->c:I

    return-void
.end method

.method private B(Lkg/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lpg/k;->i:Z

    .line 2
    invoke-virtual {p0, p1}, Lpg/k;->z(Lkg/l;)V

    return-void
.end method

.method private H(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lpg/k;->e:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpg/k;->d:Lkg/l;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lpg/k;->F(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 5
    throw p1
.end method

.method private O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpg/k;->d:Lkg/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lpg/k;->d:Lkg/l;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lpg/k;->e:Z

    .line 5
    iput-boolean v0, p0, Lpg/k;->i:Z

    :cond_0
    return-void
.end method

.method private static P(I)V
    .locals 1

    const-string v0, "maxContentLength"

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    return-void
.end method

.method private static w(Lkg/o;Lkg/j;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkg/j;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lkg/j;->T1()Lkg/j;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkg/o;->I3(ZLkg/j;)Lkg/o;

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lpg/k;->g:Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public E(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/l;->E(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-direct {p0}, Lpg/k;->O()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lpg/k;->O()V

    .line 3
    throw p1
.end method

.method protected abstract F(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract G(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract I(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract J(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract K(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract L(Lkg/l;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract M(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract N(Ljava/lang/Object;ILio/grpc/netty/shaded/io/netty/channel/w;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I",
            "Lio/grpc/netty/shaded/io/netty/channel/w;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public Z(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/k;->d:Lkg/l;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 3
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public s(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lpg/l;->s(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lpg/k;->I(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lpg/k;->M(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    iput-boolean v2, p0, Lpg/k;->i:Z

    return v2

    .line 5
    :cond_2
    iget-boolean v0, p0, Lpg/k;->i:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lpg/k;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/p;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-direct {p0}, Lpg/k;->O()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lpg/k;->O()V

    .line 3
    throw p1
.end method

.method protected u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "TI;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lpg/k;->M(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lpg/k;->e:Z

    .line 3
    iget-object v0, p0, Lpg/k;->d:Lkg/l;

    if-nez v0, :cond_7

    .line 4
    iget v0, p0, Lpg/k;->c:I

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lpg/k;->N(Ljava/lang/Object;ILio/grpc/netty/shaded/io/netty/channel/w;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lpg/k;->h:Lio/grpc/netty/shaded/io/netty/channel/j;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lpg/k$a;

    invoke-direct {v1, p0, p1}, Lpg/k$a;-><init>(Lpg/k;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    iput-object v1, p0, Lpg/k;->h:Lio/grpc/netty/shaded/io/netty/channel/j;

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lpg/k;->y(Ljava/lang/Object;)Z

    move-result v2

    .line 8
    invoke-virtual {p0, v0}, Lpg/k;->G(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lpg/k;->e:Z

    .line 9
    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    if-eqz v2, :cond_1

    .line 10
    sget-object p1, Lio/grpc/netty/shaded/io/netty/channel/j;->h3:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void

    .line 11
    :cond_1
    iget-boolean v0, p0, Lpg/k;->e:Z

    if-eqz v0, :cond_3

    return-void

    .line 12
    :cond_2
    iget v0, p0, Lpg/k;->c:I

    invoke-virtual {p0, p2, v0}, Lpg/k;->J(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-direct {p0, p1, p2}, Lpg/k;->H(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_3
    instance-of v0, p2, Lpg/f;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lpg/f;

    invoke-interface {v0}, Lpg/f;->a()Lpg/e;

    move-result-object v0

    invoke-virtual {v0}, Lpg/e;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    instance-of p1, p2, Lkg/l;

    if-eqz p1, :cond_4

    .line 16
    move-object p1, p2

    check-cast p1, Lkg/l;

    invoke-interface {p1}, Lkg/l;->content()Lkg/j;

    move-result-object p1

    invoke-virtual {p1}, Lkg/j;->T1()Lkg/j;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lpg/k;->x(Ljava/lang/Object;Lkg/j;)Lkg/l;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_4
    sget-object p1, Lkg/s0;->d:Lkg/j;

    invoke-virtual {p0, p2, p1}, Lpg/k;->x(Ljava/lang/Object;Lkg/j;)Lkg/l;

    move-result-object p1

    .line 18
    :goto_0
    invoke-direct {p0, p1}, Lpg/k;->B(Lkg/l;)V

    .line 19
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 20
    :cond_5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p1

    iget p3, p0, Lpg/k;->f:I

    invoke-interface {p1, p3}, Lkg/k;->m(I)Lkg/o;

    move-result-object p1

    .line 21
    instance-of p3, p2, Lkg/l;

    if-eqz p3, :cond_6

    .line 22
    move-object p3, p2

    check-cast p3, Lkg/l;

    invoke-interface {p3}, Lkg/l;->content()Lkg/j;

    move-result-object p3

    invoke-static {p1, p3}, Lpg/k;->w(Lkg/o;Lkg/j;)V

    .line 23
    :cond_6
    invoke-virtual {p0, p2, p1}, Lpg/k;->x(Ljava/lang/Object;Lkg/j;)Lkg/l;

    move-result-object p1

    iput-object p1, p0, Lpg/k;->d:Lkg/l;

    goto/16 :goto_2

    .line 24
    :cond_7
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 25
    iput-object v1, p0, Lpg/k;->d:Lkg/l;

    .line 26
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/MessageAggregationException;

    invoke-direct {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/MessageAggregationException;-><init>()V

    throw p1

    .line 27
    :cond_8
    invoke-virtual {p0, p2}, Lpg/k;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 28
    iget-object v0, p0, Lpg/k;->d:Lkg/l;

    if-nez v0, :cond_9

    return-void

    .line 29
    :cond_9
    invoke-interface {v0}, Lkg/l;->content()Lkg/j;

    move-result-object v0

    check-cast v0, Lkg/o;

    .line 30
    check-cast p2, Lkg/l;

    .line 31
    invoke-virtual {v0}, Lkg/a;->P1()I

    move-result v2

    iget v3, p0, Lpg/k;->c:I

    invoke-interface {p2}, Lkg/l;->content()Lkg/j;

    move-result-object v4

    invoke-virtual {v4}, Lkg/j;->P1()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_a

    .line 32
    iget-object p2, p0, Lpg/k;->d:Lkg/l;

    .line 33
    invoke-direct {p0, p1, p2}, Lpg/k;->H(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_a
    invoke-interface {p2}, Lkg/l;->content()Lkg/j;

    move-result-object p1

    invoke-static {v0, p1}, Lpg/k;->w(Lkg/o;Lkg/j;)V

    .line 35
    iget-object p1, p0, Lpg/k;->d:Lkg/l;

    invoke-virtual {p0, p1, p2}, Lpg/k;->v(Lkg/l;Lkg/l;)V

    .line 36
    instance-of p1, p2, Lpg/f;

    if-eqz p1, :cond_d

    .line 37
    move-object p1, p2

    check-cast p1, Lpg/f;

    invoke-interface {p1}, Lpg/f;->a()Lpg/e;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lpg/e;->e()Z

    move-result v0

    if-nez v0, :cond_c

    .line 39
    iget-object p2, p0, Lpg/k;->d:Lkg/l;

    instance-of v0, p2, Lpg/f;

    if-eqz v0, :cond_b

    .line 40
    check-cast p2, Lpg/f;

    .line 41
    invoke-virtual {p1}, Lpg/e;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lpg/e;->b(Ljava/lang/Throwable;)Lpg/e;

    move-result-object p1

    .line 42
    invoke-interface {p2, p1}, Lpg/f;->e(Lpg/e;)V

    :cond_b
    const/4 p1, 0x1

    goto :goto_1

    .line 43
    :cond_c
    invoke-virtual {p0, p2}, Lpg/k;->L(Lkg/l;)Z

    move-result p1

    goto :goto_1

    .line 44
    :cond_d
    invoke-virtual {p0, p2}, Lpg/k;->L(Lkg/l;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_e

    .line 45
    iget-object p1, p0, Lpg/k;->d:Lkg/l;

    invoke-direct {p0, p1}, Lpg/k;->B(Lkg/l;)V

    .line 46
    iget-object p1, p0, Lpg/k;->d:Lkg/l;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iput-object v1, p0, Lpg/k;->d:Lkg/l;

    :cond_e
    :goto_2
    return-void

    .line 48
    :cond_f
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/MessageAggregationException;

    invoke-direct {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/MessageAggregationException;-><init>()V

    throw p1
.end method

.method protected abstract v(Lkg/l;Lkg/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract x(Ljava/lang/Object;Lkg/j;)Lkg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lkg/j;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract y(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract z(Lkg/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
