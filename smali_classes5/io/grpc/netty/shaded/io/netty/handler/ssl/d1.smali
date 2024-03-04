.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;
.super Ljavax/net/ssl/KeyManagerFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;->b(Ljava/security/Provider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->a:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v0

    iget-object v1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->a:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/security/Provider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;

    if-nez p1, :cond_1

    .line 3
    invoke-static {p0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    return-object v0
.end method

.method private static b(Ljava/security/Provider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;->a(Ljava/lang/String;Ljava/security/Provider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method c()Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    move-result-object v0

    return-object v0
.end method
