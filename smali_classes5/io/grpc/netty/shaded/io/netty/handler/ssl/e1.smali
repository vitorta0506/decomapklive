.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$e;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$d;
    }
.end annotation


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final b:Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 3
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$a;

    invoke-direct {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$a;-><init>()V

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Q()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Unable to access wrapped TrustManager"

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 5
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    .line 6
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$b;

    invoke-direct {v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$b;-><init>()V

    aput-object v6, v2, v5

    invoke-virtual {v0, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    :goto_0
    if-eqz v4, :cond_0

    .line 7
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$c;

    invoke-direct {v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$c;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 10
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 11
    :cond_1
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$d;

    move-object v1, v0

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_1
    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "TLS"

    const-string v1, "SunJSSE"

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$d;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1$d;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0
.end method
