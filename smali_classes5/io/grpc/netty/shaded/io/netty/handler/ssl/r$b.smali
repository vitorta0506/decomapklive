.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/r$b;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/r$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j;->b(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;->f(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)Lio/grpc/netty/shaded/io/netty/handler/ssl/k;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;->e(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)Lio/grpc/netty/shaded/io/netty/handler/ssl/k;

    move-result-object p1

    :goto_0
    return-object p1

    .line 4
    :cond_1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e;->b(Ljavax/net/ssl/SSLEngine;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/f;

    invoke-direct {p2, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)V

    return-object p2

    .line 6
    :cond_2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;

    invoke-direct {p2, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)V

    return-object p2

    .line 8
    :cond_3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p4, :cond_4

    .line 9
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;->g(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;->f(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;

    move-result-object p1

    :goto_1
    return-object p1

    .line 11
    :cond_5
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ALPN not supported. Unable to wrap SSLEngine of type \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
