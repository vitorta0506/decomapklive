.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;
    }
.end annotation


# instance fields
.field final a:Ljavax/net/ssl/KeyManagerFactory;

.field private volatile b:Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;


# direct methods
.method constructor <init>(Ljavax/net/ssl/KeyManagerFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    const-string v0, "kmf"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/KeyManagerFactory;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->a:Ljavax/net/ssl/KeyManagerFactory;

    return-void
.end method

.method private static b([C)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method a()Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "engineInit(...) not called yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    const/4 v2, 0x0

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "engineInit(...) not called yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized engineInit(Ljava/security/KeyStore;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->a:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->a:Ljavax/net/ssl/KeyManagerFactory;

    .line 5
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->H([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    .line 7
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->b([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/Iterable;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "No aliases found"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "Already initialized"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 11
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
