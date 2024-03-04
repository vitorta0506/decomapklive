.class final Ljg/f;
.super Lio/grpc/netty/shaded/io/netty/channel/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljg/f$b;
    }
.end annotation


# static fields
.field private static final t:Lio/grpc/netty/shaded/io/netty/channel/q;


# instance fields
.field private final s:Lio/grpc/netty/shaded/io/netty/channel/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/q;-><init>(Z)V

    sput-object v0, Ljg/f;->t:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/c0;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    iput-object v0, p0, Ljg/f;->s:Lio/grpc/netty/shaded/io/netty/channel/f;

    return-void
.end method


# virtual methods
.method protected A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
    .locals 2

    new-instance v0, Ljg/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljg/f$b;-><init>(Ljg/f;Ljg/f$a;)V

    return-object v0
.end method

.method protected B0()Ljava/net/SocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public R()Lio/grpc/netty/shaded/io/netty/channel/q;
    .locals 1

    sget-object v0, Ljg/f;->t:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-object v0
.end method

.method public b0()Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    iget-object v0, p0, Ljg/f;->s:Lio/grpc/netty/shaded/io/netty/channel/f;

    return-object v0
.end method

.method protected g0()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected h0()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j0()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected p0(Lio/grpc/netty/shaded/io/netty/channel/s;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected u0(Lio/grpc/netty/shaded/io/netty/channel/l0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected v0()Ljava/net/SocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
