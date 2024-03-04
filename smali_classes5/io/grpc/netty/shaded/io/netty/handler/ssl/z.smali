.class public Lio/grpc/netty/shaded/io/netty/handler/ssl/z;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;
.source "SourceFile"


# static fields
.field private static final k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final l:[Ljava/lang/String;

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/security/Provider;


# instance fields
.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

.field private final h:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

.field private final i:Ljavax/net/ssl/SSLContext;

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    :try_start_0
    const-string v1, "TLS"

    .line 2
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v2

    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->q:Ljava/security/Provider;

    .line 5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->H(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->l:[Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->J(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->o:Ljava/util/Set;

    .line 8
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->G(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->m:Ljava/util/List;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->d:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 11
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->n:Ljava/util/List;

    .line 12
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->p:Ljava/util/Set;

    .line 15
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "Default protocols (JDK): {} "

    invoke-interface {v0, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Default cipher suites (JDK): {}"

    .line 17
    invoke-interface {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/Error;

    const-string v2, "failed to initialize the default SSL context"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/i;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;-><init>(Z)V

    const-string p8, "apn"

    .line 2
    invoke-static {p5, p8}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    const-string p5, "clientAuth"

    .line 3
    invoke-static {p6, p5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->h:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    const-string p5, "sslContext"

    .line 4
    invoke-static {p1, p5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljavax/net/ssl/SSLContext;

    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->i:Ljavax/net/ssl/SSLContext;

    .line 5
    sget-object p5, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->q:Ljava/security/Provider;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/security/Provider;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    if-nez p7, :cond_0

    .line 6
    sget-object p7, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->l:[Ljava/lang/String;

    :cond_0
    iput-object p7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->d:[Ljava/lang/String;

    .line 7
    invoke-static {p7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->I([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->o:Ljava/util/Set;

    .line 9
    sget-object p5, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->m:Ljava/util/List;

    goto :goto_2

    .line 10
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->p:Ljava/util/Set;

    .line 11
    sget-object p5, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->n:Ljava/util/List;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p5

    if-nez p7, :cond_3

    .line 13
    :try_start_0
    invoke-static {p1, p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->H(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->d:[Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_3
    iput-object p7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->d:[Ljava/lang/String;

    .line 15
    :goto_0
    invoke-static {p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->J(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;

    move-result-object p1

    .line 16
    invoke-static {p5, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->G(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;

    move-result-object p6

    .line 17
    iget-object p7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->d:[Ljava/lang/String;

    invoke-static {p7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->I([Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_4

    .line 18
    sget-object p7, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->d:[Ljava/lang/String;

    array-length p8, p7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p8, :cond_4

    aget-object v1, p7, v0

    .line 19
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {p6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {p5}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    move-object p5, p6

    :goto_2
    const-string p6, "cipherFilter"

    .line 22
    invoke-static {p4, p6}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/grpc/netty/shaded/io/netty/handler/ssl/i;

    invoke-interface {p4, p3, p5, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i;->a(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->e:[Ljava/lang/String;

    .line 23
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->f:Ljava/util/List;

    .line 24
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->j:Z

    return-void

    :catchall_0
    move-exception p1

    .line 25
    invoke-static {p5}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 26
    throw p1
.end method

.method private E(Ljavax/net/ssl/SSLEngine;Lkg/k;)Ljavax/net/ssl/SSLEngine;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->e:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->q()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z$a;->a:[I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->h:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown auth "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->h:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u;->f()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    move-result-object v0

    .line 10
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;

    if-eqz v1, :cond_4

    .line 11
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    .line 12
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->r()Z

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;->b(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->r()Z

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;->a(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method private static G(Ljavax/net/ssl/SSLEngine;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->c:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->a(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->x(Ljava/util/List;[Ljava/lang/String;)V

    return-object v0
.end method

.method private static H(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "TLSv1.3"

    const-string v2, "TLSv1.2"

    const-string v3, "TLSv1.1"

    const-string v4, "TLSv1"

    .line 5
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->a(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static I([Ljava/lang/String;)Z
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    const-string v4, "TLSv1.3"

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static J(Ljavax/net/ssl/SSLEngine;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 4
    aget-object v4, v0, v3

    .line 5
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v5, "SSL_"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TLS_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v2

    .line 8
    invoke-virtual {p0, v5}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 9
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static K(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;Z)Lio/grpc/netty/shaded/io/netty/handler/ssl/u;
    .locals 7

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/w;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/w;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z$a;->d:[I

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const-string v2, " failure behavior"

    const/4 v3, 0x0

    const-string v4, "JDK provider does not support "

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    const/4 v6, 0x3

    if-ne v0, v6, :cond_6

    if-eqz p1, :cond_3

    .line 3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/z$a;->c:[I

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_2

    if-ne p1, v5, :cond_1

    .line 4
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v3, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    .line 8
    :cond_3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/z$a;->b:[I

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_5

    if-ne p1, v5, :cond_4

    .line 9
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v3, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    .line 13
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " protocol"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz p1, :cond_a

    .line 15
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/z$a;->b:[I

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_9

    if-ne p1, v5, :cond_8

    .line 16
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v3, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    .line 17
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    .line 20
    :cond_a
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/z$a;->c:[I

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_c

    if-ne p1, v5, :cond_b

    .line 21
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    .line 22
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_c
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v3, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r;-><init>(ZLjava/lang/Iterable;)V

    return-object p1

    .line 25
    :cond_d
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/w;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/w;

    return-object p0
.end method


# virtual methods
.method public final D()Lio/grpc/netty/shaded/io/netty/handler/ssl/u;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    return-object v0
.end method

.method public final F()Ljavax/net/ssl/SSLContext;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->i:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public bridge synthetic a()Lio/grpc/netty/shaded/io/netty/handler/ssl/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->D()Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    move-result-object v0

    return-object v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->j:Z

    return v0
.end method

.method public final v(Lkg/k;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->F()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->E(Ljavax/net/ssl/SSLEngine;Lkg/k;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method public final y()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->F()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->F()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method
