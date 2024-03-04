.class final Log/d$b;
.super Lng/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private volatile q:I

.field final synthetic r:Log/d;


# direct methods
.method private constructor <init>(Log/d;Log/d;Ljava/net/Socket;)V
    .locals 0

    .line 2
    iput-object p1, p0, Log/d$b;->r:Log/d;

    .line 3
    invoke-direct {p0, p2, p3}, Lng/e;-><init>(Lng/i;Ljava/net/Socket;)V

    const p1, 0x7fffffff

    .line 4
    iput p1, p0, Log/d$b;->q:I

    .line 5
    invoke-direct {p0}, Log/d$b;->g0()V

    return-void
.end method

.method synthetic constructor <init>(Log/d;Log/d;Ljava/net/Socket;Log/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Log/d$b;-><init>(Log/d;Log/d;Ljava/net/Socket;)V

    return-void
.end method

.method private g0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lng/e;->I()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Log/d$b;->j0(I)V

    :cond_0
    return-void
.end method

.method private i0()Ljava/nio/channels/SocketChannel;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Log/d;

    invoke-virtual {v0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic Y(I)Lng/j;
    .locals 0

    invoke-virtual {p0, p1}, Log/d$b;->k0(I)Log/d$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;
    .locals 2
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
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Log/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Log/d$b;->i0()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    check-cast p1, Log/a;

    invoke-static {v0, p1}, Log/a;->g(Ljava/nio/channels/Channel;Log/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lng/e;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()I
    .locals 1

    iget v0, p0, Log/d$b;->q:I

    return v0
.end method

.method j0(I)V
    .locals 0

    iput p1, p0, Log/d$b;->q:I

    return-void
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z
    .locals 2
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
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Log/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Log/d$b;->i0()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    check-cast p1, Log/a;

    invoke-static {v0, p1, p2}, Log/a;->h(Ljava/nio/channels/Channel;Log/a;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lng/e;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k0(I)Log/d$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lng/e;->Y(I)Lng/j;

    .line 2
    invoke-direct {p0}, Log/d$b;->g0()V

    return-object p0
.end method

.method protected n()V
    .locals 1

    iget-object v0, p0, Log/d$b;->r:Log/d;

    invoke-static {v0}, Log/d;->m1(Log/d;)V

    return-void
.end method
