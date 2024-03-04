.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s$b;
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
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/t;->d(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljavax/net/ssl/SSLEngine;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s$b;->a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)V

    return-void
.end method
