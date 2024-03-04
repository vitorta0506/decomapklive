.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/v$f;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$h;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Selected protocol is not supported"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
