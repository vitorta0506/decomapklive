.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/v$e;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v0, "No compatible protocols found"

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
