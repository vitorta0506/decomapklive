.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljavax/net/ssl/SSLEngine;",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;)V
    .locals 0

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t;->e(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljavax/net/ssl/SSLEngine;

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$a;->a(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/s$c;)V

    return-void
.end method
