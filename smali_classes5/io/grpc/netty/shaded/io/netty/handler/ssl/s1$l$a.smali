.class final enum Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$a;
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

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    .line 2
    invoke-virtual {p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->y(II)I

    move-result p1

    .line 3
    invoke-interface {p2, p1}, Lkg/k;->h(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method b(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)I
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->n0()I

    move-result p1

    if-lez p1, :cond_0

    move p2, p1

    :cond_0
    return p2
.end method

.method d(Ljavax/net/ssl/SSLEngine;)Z
    .locals 0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    iget-boolean p1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t:Z

    return p1
.end method

.method e(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lkg/j;ILkg/j;)Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->s1()I

    move-result v0

    .line 2
    invoke-virtual {p4}, Lkg/j;->K2()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p4}, Lkg/j;->t2()I

    move-result v5

    invoke-static {p4, v1, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->j0(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 5
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {p2, v4, p3}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u0([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object v2, p1, v3

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object v2, p1, v3

    .line 7
    throw p2

    .line 8
    :cond_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v0

    invoke-static {p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->j0(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 9
    invoke-virtual {p4}, Lkg/j;->t2()I

    move-result p3

    invoke-static {p4, v1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->j0(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 10
    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2

    .line 11
    :goto_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p4, v1}, Lkg/j;->L2(I)Lkg/j;

    return-object p2
.end method
