.class final Lig/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/h0$k;,
        Lig/h0$n;,
        Lig/h0$h;,
        Lig/h0$e;,
        Lig/h0$i;,
        Lig/h0$g;,
        Lig/h0$j;,
        Lig/h0$f;,
        Lig/h0$m;,
        Lig/h0$b;,
        Lig/h0$c;,
        Lig/h0$l;,
        Lig/h0$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/grpc/TlsServerCredentials$Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lig/h0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lig/h0;->a:Ljava/util/logging/Logger;

    .line 2
    sget-object v0, Lio/grpc/TlsChannelCredentials$Feature;->MTLS:Lio/grpc/TlsChannelCredentials$Feature;

    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsChannelCredentials$Feature;

    .line 3
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lig/h0;->b:Ljava/util/EnumSet;

    .line 4
    sget-object v0, Lio/grpc/TlsServerCredentials$Feature;->MTLS:Lio/grpc/TlsServerCredentials$Feature;

    sget-object v1, Lio/grpc/TlsServerCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsServerCredentials$Feature;

    .line 5
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lig/h0;->c:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-static {p0}, Lig/h0;->l(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/grpc/e;)Lig/h0$d;
    .locals 4

    .line 1
    instance-of v0, p0, Lio/grpc/TlsChannelCredentials;

    if-eqz v0, :cond_5

    .line 2
    check-cast p0, Lio/grpc/TlsChannelCredentials;

    .line 3
    sget-object v0, Lig/h0;->b:Ljava/util/EnumSet;

    .line 4
    invoke-virtual {p0, v0}, Lio/grpc/TlsChannelCredentials;->h(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLS features not understood: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lig/h0$d;->a(Ljava/lang/String;)Lig/h0$d;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-static {}, Lig/o;->f()Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Lig/f;

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lig/f;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->g(Ljavax/net/ssl/KeyManagerFactory;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->d()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 12
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 13
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->d()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->e()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->e(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->g()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    new-instance v1, Lig/g;

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->g()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lig/g;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->m(Ljavax/net/ssl/TrustManagerFactory;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->f()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 19
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->f()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->l(Ljava/io/InputStream;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    .line 20
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    move-result-object p0

    invoke-static {p0}, Lig/h0;->k(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;)Lig/g0$a;

    move-result-object p0

    invoke-static {p0}, Lig/h0$d;->b(Lig/g0$a;)Lig/h0$d;

    move-result-object p0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 21
    sget-object v0, Lig/h0;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Exception building SslContext"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create SslContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Lig/h0$d;->a(Ljava/lang/String;)Lig/h0$d;

    move-result-object p0

    return-object p0

    .line 25
    :cond_5
    instance-of v0, p0, Lio/grpc/b0;

    if-eqz v0, :cond_6

    .line 26
    invoke-static {}, Lig/h0;->g()Lig/g0$a;

    move-result-object p0

    invoke-static {p0}, Lig/h0$d;->b(Lig/g0$a;)Lig/h0$d;

    move-result-object p0

    return-object p0

    .line 27
    :cond_6
    instance-of v0, p0, Lio/grpc/n;

    if-eqz v0, :cond_7

    .line 28
    check-cast p0, Lio/grpc/n;

    .line 29
    invoke-virtual {p0}, Lio/grpc/n;->c()Lio/grpc/e;

    move-result-object v0

    invoke-static {v0}, Lig/h0;->b(Lio/grpc/e;)Lig/h0$d;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lio/grpc/n;->b()Lio/grpc/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lig/h0$d;->c(Lio/grpc/b;)Lig/h0$d;

    move-result-object p0

    return-object p0

    .line 31
    :cond_7
    instance-of v0, p0, Lig/w;

    if-eqz v0, :cond_8

    .line 32
    check-cast p0, Lig/w;

    .line 33
    invoke-virtual {p0}, Lig/w;->b()Lig/g0$a;

    move-result-object p0

    invoke-static {p0}, Lig/h0$d;->b(Lig/g0$a;)Lig/h0$d;

    move-result-object p0

    return-object p0

    .line 34
    :cond_8
    instance-of v0, p0, Lio/grpc/f;

    if-eqz v0, :cond_b

    .line 35
    check-cast p0, Lio/grpc/f;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {p0}, Lio/grpc/f;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/e;

    .line 38
    invoke-static {v1}, Lig/h0;->b(Lio/grpc/e;)Lig/h0$d;

    move-result-object v1

    .line 39
    iget-object v2, v1, Lig/h0$d;->c:Ljava/lang/String;

    if-nez v2, :cond_9

    return-object v1

    :cond_9
    const-string v2, ", "

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, v1, Lig/h0$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const/4 p0, 0x2

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lig/h0$d;->a(Ljava/lang/String;)Lig/h0$d;

    move-result-object p0

    return-object p0

    .line 43
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported credential type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0}, Lig/h0$d;->a(Ljava/lang/String;)Lig/h0$d;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lig/g0;)Lig/g0;
    .locals 7

    const-string v0, "negotiator"

    .line 1
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "proxyAddress"

    .line 2
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p3}, Lig/g0;->b()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v6

    .line 4
    new-instance v0, Lig/h0$a;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lig/h0$a;-><init>(Lig/g0;Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/util/c;)V

    return-object v0
.end method

.method static d(Ljava/util/logging/Level;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lig/h0;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    const-class v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/w;->i(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->z0()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\nSSLEngine Details: [\n"

    .line 5
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    instance-of p2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/o0;

    if-eqz p2, :cond_1

    const-string p2, "    OpenSSL, "

    .line 7
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Version: 0x"

    .line 8
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->s()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    .line 9
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->t()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "), "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ALPN supported: "

    .line 10
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->OPENSSL:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->isAlpnSupported(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lig/u;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "    Jetty ALPN"

    .line 12
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lig/u;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "    Jetty NPN"

    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lig/u;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "    JDK9 ALPN"

    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    const-string p2, "\n    TLS Protocol: "

    .line 17
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    Application Protocol: "

    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->r0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    Need Client Auth: "

    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n    Want Client Auth: "

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n    Supported protocols="

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    Enabled protocols="

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    Supported ciphers="

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    Enabled ciphers="

    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n]"

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static e(Ljava/lang/String;)Lig/h0$f;
    .locals 2

    const-string v0, "authority"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->c(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5
    :goto_0
    new-instance v1, Lig/h0$f;

    invoke-direct {v1, p0, v0}, Lig/h0$f;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public static f()Lig/g0;
    .locals 1

    new-instance v0, Lig/h0$h;

    invoke-direct {v0}, Lig/h0$h;-><init>()V

    return-object v0
.end method

.method public static g()Lig/g0$a;
    .locals 1

    new-instance v0, Lig/h0$i;

    invoke-direct {v0}, Lig/h0$i;-><init>()V

    return-object v0
.end method

.method public static h()Lig/g0;
    .locals 1

    new-instance v0, Lig/h0$j;

    invoke-direct {v0}, Lig/h0$j;-><init>()V

    return-object v0
.end method

.method public static i(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;)Lig/g0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lig/h0;->j(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/internal/p1;)Lig/g0;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/internal/p1;)Lig/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;",
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lig/g0;"
        }
    .end annotation

    new-instance v0, Lig/h0$c;

    invoke-direct {v0, p0, p1}, Lig/h0$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/internal/p1;)V

    return-object v0
.end method

.method public static k(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;)Lig/g0$a;
    .locals 1

    new-instance v0, Lig/h0$m;

    invoke-direct {v0, p0}, Lig/h0$m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;)V

    return-object v0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    invoke-virtual {v0, p0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    return-object p0
.end method
