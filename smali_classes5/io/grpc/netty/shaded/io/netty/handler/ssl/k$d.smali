.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/k$d;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final d:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;-><init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Ljava/util/List;Lio/grpc/netty/shaded/io/netty/handler/ssl/k$a;)V

    .line 2
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$d$a;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$d$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k$d;)V

    invoke-static {p1, p2}, Lorg/conscrypt/i;->m(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/m;)V

    .line 3
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;->e()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashSet;

    .line 4
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-interface {p1, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    move-result-object p1

    const-string p2, "protocolSelector"

    .line 6
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$d;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$d;

    return-void
.end method
