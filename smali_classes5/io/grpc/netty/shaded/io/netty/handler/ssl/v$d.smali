.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/v$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u$b;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;

    invoke-direct {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;Ljava/util/List;)V

    return-object v0
.end method
