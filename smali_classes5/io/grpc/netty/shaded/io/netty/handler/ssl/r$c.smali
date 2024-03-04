.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/r$c;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/r$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)Ljavax/net/ssl/SSLEngine;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ALPN unsupported. Is your classpath configured correctly? For Conscrypt, add the appropriate Conscrypt JAR to classpath and set the security provider. For Jetty-ALPN, see https://www.eclipse.org/jetty/documentation/current/alpn-chapter.html#alpn-starting"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
