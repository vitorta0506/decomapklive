.class final enum Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$c;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZLpg/a$c;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;-><init>(Ljava/lang/String;IZLpg/a$c;Lio/grpc/netty/shaded/io/netty/handler/ssl/t1;)V

    return-void
.end method


# virtual methods
.method a(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lkg/k;II)Lkg/j;
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-interface {p2, p1}, Lkg/k;->b(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method b(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)I
    .locals 0

    return p2
.end method

.method d(Ljavax/net/ssl/SSLEngine;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method e(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lkg/j;ILkg/j;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lkg/j;->K2()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v1

    invoke-static {p2, v1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->j0(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    .line 5
    invoke-virtual {p4}, Lkg/j;->t2()I

    move-result v1

    invoke-static {p4, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->j0(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    invoke-virtual {p1, p2, v1}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p4, v0}, Lkg/j;->L2(I)Lkg/j;

    .line 8
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result p4

    if-nez p4, :cond_0

    .line 9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sub-int/2addr p2, p3

    .line 10
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result p3

    if-eq p2, p3, :cond_0

    .line 11
    new-instance p3, Ljavax/net/ssl/SSLEngineResult;

    .line 12
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p4

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result p1

    invoke-direct {p3, p4, v0, p2, p1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object p3

    :cond_0
    return-object p1
.end method
