.class interface abstract Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract c()Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;
.end method

.method public abstract d([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public abstract e([Ljava/security/cert/Certificate;)V
.end method

.method public abstract getSessionContext()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
.end method
