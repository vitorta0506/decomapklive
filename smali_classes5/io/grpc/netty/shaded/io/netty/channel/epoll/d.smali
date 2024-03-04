.class public Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
.super Lio/grpc/netty/shaded/io/netty/channel/c0;
.source "SourceFile"


# instance fields
.field private volatile o:J


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    .line 2
    sget-wide v0, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->c:J

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->o:J

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lio/grpc/netty/shaded/io/netty/channel/v0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/v0;)V

    .line 4
    sget-wide p1, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->c:J

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->o:J

    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EpollMode can only be changed before channel is registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public I()Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Y0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;->EDGE_TRIGGERED:Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;->LEVEL_TRIGGERED:Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;

    :goto_0
    return-object v0
.end method

.method final J()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->o:J

    return-wide v0
.end method

.method public K(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public L(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public M(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->v(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public N(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 1

    const-string v0, "mode"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/d$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->H()V

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->P0(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->H()V

    .line 7
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->e1(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method final O(J)V
    .locals 0

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->o:J

    return-void
.end method

.method public P(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->w(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public Q(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public R(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v0;->a()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object v0

    instance-of v0, v0, Lio/grpc/netty/shaded/io/netty/channel/v0$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allocator.newHandle() must return an object of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/v0$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->C(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public T(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->D(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public U(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public V(I)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->F(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object p0
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Llg/b;->E4:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->I()Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->G(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Llg/b;->E4:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 3
    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;

    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->N(Lio/grpc/netty/shaded/io/netty/channel/epoll/EpollMode;)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final n()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->N0()V

    return-void
.end method
