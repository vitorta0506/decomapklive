.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;
.super Ljavax/net/ssl/KeyManagerFactory;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;)V
    .locals 1

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;-><init>(Ljavax/net/ssl/KeyManagerFactory;I)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;I)V
    .locals 2

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0$a;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0$a;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    .line 3
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, v1, p1}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    const-string p1, "maxCachedEntries"

    .line 5
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;->a:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->H([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    const-string v1, "sun.security.ssl.X509KeyManagerImpl"

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    invoke-direct {v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;

    .line 5
    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->H([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;->a:I

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;I)V

    return-object v0
.end method
