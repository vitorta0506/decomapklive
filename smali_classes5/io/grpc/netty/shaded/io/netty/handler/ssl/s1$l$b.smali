.class final enum Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$b;
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

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;

    invoke-virtual {p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;->d(II)I

    move-result p1

    .line 2
    invoke-interface {p2, p1}, Lkg/k;->h(I)Lkg/j;

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
    .locals 5
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

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p4}, Lkg/j;->t2()I

    move-result v4

    invoke-static {p4, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->j0(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;

    .line 5
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {p2, v4, p3}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 7
    invoke-virtual {v3, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;->g([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object v0, p1, v2

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->b0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object v0, p1, v2

    .line 9
    throw p2

    .line 10
    :cond_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v0

    invoke-static {p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->j0(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 11
    invoke-virtual {p4}, Lkg/j;->t2()I

    move-result p3

    invoke-static {p4, v1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->j0(Lkg/j;II)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 12
    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2

    .line 13
    :goto_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p4, v1}, Lkg/j;->L2(I)Lkg/j;

    return-object p2
.end method
