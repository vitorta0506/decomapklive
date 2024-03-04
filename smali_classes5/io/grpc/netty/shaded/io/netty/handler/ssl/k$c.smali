.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/k$c;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final d:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;-><init>(Ljavax/net/ssl/SSLEngine;Lkg/k;Ljava/util/List;Lio/grpc/netty/shaded/io/netty/handler/ssl/k$a;)V

    .line 2
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$c$a;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$c$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k$c;)V

    invoke-static {p1, p2}, Lorg/conscrypt/i;->m(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/m;)V

    .line 3
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;

    move-result-object p1

    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    move-result-object p1

    const-string p2, "protocolListener"

    .line 4
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k$c;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;

    return-void
.end method
