.class final Log/b$b;
.super Lng/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic q:Log/b;


# direct methods
.method private constructor <init>(Log/b;Log/b;Ljava/net/ServerSocket;)V
    .locals 0

    .line 2
    iput-object p1, p0, Log/b$b;->q:Log/b;

    .line 3
    invoke-direct {p0, p2, p3}, Lng/d;-><init>(Lng/g;Ljava/net/ServerSocket;)V

    return-void
.end method

.method synthetic constructor <init>(Log/b;Log/b;Ljava/net/ServerSocket;Log/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Log/b$b;-><init>(Log/b;Log/b;Ljava/net/ServerSocket;)V

    return-void
.end method

.method private X()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    check-cast v0, Log/b;

    invoke-virtual {v0}, Log/b;->e1()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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
    invoke-direct {p0}, Log/b$b;->X()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    check-cast p1, Log/a;

    invoke-static {v0, p1}, Log/a;->g(Ljava/nio/channels/Channel;Log/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lng/d;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    invoke-direct {p0}, Log/b$b;->X()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    check-cast p1, Log/a;

    invoke-static {v0, p1, p2}, Log/a;->h(Ljava/nio/channels/Channel;Log/a;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lng/d;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected n()V
    .locals 1

    iget-object v0, p0, Log/b$b;->q:Log/b;

    invoke-static {v0}, Log/b;->c1(Log/b;)V

    return-void
.end method
