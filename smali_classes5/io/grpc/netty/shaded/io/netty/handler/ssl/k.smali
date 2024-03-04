.class abstract Lio/grpc/netty/shaded/io/netty/handler/ssl/k;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/k$b;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/k$d;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/k$c;
    }
.end annotation


# static fields
.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.grpc.netty.shaded.io.netty.handler.ssl.conscrypt.useBufferAllocator"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;->c:Z

    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Lkg/k;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;-><init>(Ljavax/net/ssl/SSLEngine;)V

    .line 3
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;->c:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$b;

    invoke-direct {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$b;-><init>(Lkg/k;)V

    invoke-static {p1, v0}, Lorg/conscrypt/i;->l(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/c;)V

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 5
    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/conscrypt/i;->j(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Ljava/util/List;Lio/grpc/netty/shaded/io/netty/handler/ssl/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;-><init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Ljava/util/List;)V

    return-void
.end method

.method static e(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)Lio/grpc/netty/shaded/io/netty/handler/ssl/k;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$c;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$c;-><init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)V

    return-object v0
.end method

.method static f(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)Lio/grpc/netty/shaded/io/netty/handler/ssl/k;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$d;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$d;-><init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)V

    return-object v0
.end method


# virtual methods
.method final d(II)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/i;->h(Ljavax/net/ssl/SSLEngine;)I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p2

    mul-long v0, v0, v2

    int-to-long p1, p1

    add-long/2addr p1, v0

    const-wide/32 v0, 0x7fffffff

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method final g([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;->b()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/conscrypt/i;->s(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method
