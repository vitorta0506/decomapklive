.class public final Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;
.super Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpProxyConnectException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a765592e60b3592L


# instance fields
.field private final headers:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/proxy/ProxyConnectException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;->headers:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method


# virtual methods
.method public headers()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/proxy/HttpProxyHandler$HttpProxyConnectException;->headers:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-object v0
.end method
