.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NPN unsupported. Is your classpath configured correctly? See https://wiki.eclipse.org/Jetty/Feature/NPN"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)Ljavax/net/ssl/SSLEngine;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;

    invoke-direct {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d0;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)V

    return-object v0
.end method
