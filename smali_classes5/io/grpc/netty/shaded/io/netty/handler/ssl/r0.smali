.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->b:Ljava/util/Map;

    const-string v1, "RSA"

    .line 2
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DHE_RSA"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDHE_RSA"

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ECDHE_ECDSA"

    const-string v2, "EC"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ECDH_RSA"

    const-string v2, "EC_RSA"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ECDH_ECDSA"

    const-string v2, "EC_EC"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DH_RSA"

    .line 8
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    return-void
.end method

.method private a(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->c()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p2, p3, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-interface {v0, p2, p3, p1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->c()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p2, v2, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p2, v2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    iget-object v2, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->v:Lkg/k;

    invoke-virtual {v1, v2, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->a(Lkg/k;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->release()Z

    :cond_0
    return-void

    .line 3
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->h0(Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;)Z
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->release()Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->release()Z

    .line 8
    :cond_2
    throw p1
.end method


# virtual methods
.method d(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->c(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method e(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->v()[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 5
    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-direct {p0, p1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->b(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    invoke-direct {p0, p1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->c(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find key material for auth method(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v0, "Unable to find key material"

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
