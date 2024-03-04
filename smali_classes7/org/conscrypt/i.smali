.class public final Lorg/conscrypt/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/i$a;
    }
.end annotation


# static fields
.field private static final a:Lorg/conscrypt/i$a;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "-1"

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1
    :try_start_0
    const-class v3, Lorg/conscrypt/i;

    const-string v4, "conscrypt.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 2
    :try_start_1
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 3
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "org.conscrypt.version.major"

    .line 4
    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v6, "org.conscrypt.version.minor"

    .line 5
    invoke-virtual {v4, v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v7, "org.conscrypt.version.patch"

    .line 6
    invoke-virtual {v4, v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    const/4 v6, -0x1

    .line 7
    :goto_0
    invoke-static {v3}, Lhl/a;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v1}, Lhl/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_0
    move-object v3, v1

    :catch_1
    const/4 v5, -0x1

    :catch_2
    const/4 v6, -0x1

    :catch_3
    invoke-static {v3}, Lhl/a;->a(Ljava/io/Closeable;)V

    move v2, v5

    const/4 v0, -0x1

    :goto_2
    if-ltz v2, :cond_1

    if-ltz v6, :cond_1

    if-ltz v0, :cond_1

    .line 8
    new-instance v3, Lorg/conscrypt/i$a;

    invoke-direct {v3, v2, v6, v0, v1}, Lorg/conscrypt/i$a;-><init>(IIILorg/conscrypt/h;)V

    sput-object v3, Lorg/conscrypt/i;->a:Lorg/conscrypt/i$a;

    goto :goto_3

    .line 9
    :cond_1
    sput-object v1, Lorg/conscrypt/i;->a:Lorg/conscrypt/i$a;

    :goto_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->a()V

    return-void
.end method

.method public static b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/i;->q(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/b;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/b;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/conscrypt/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d(Ljava/security/Provider;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/OpenSSLProvider;

    return p0
.end method

.method public static e(Ljavax/net/ssl/SSLEngine;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/a;

    return p0
.end method

.method public static f(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/b;

    return p0
.end method

.method public static g(Ljavax/net/ssl/TrustManager;)Z
    .locals 0

    instance-of p0, p0, Lorg/conscrypt/d0;

    return p0
.end method

.method public static h(Ljavax/net/ssl/SSLEngine;)I
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/i;->p(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/a;->b()I

    move-result p0

    return p0
.end method

.method public static i()Ljava/security/Provider;
    .locals 1

    .line 1
    invoke-static {}, Lorg/conscrypt/i;->a()V

    .line 2
    new-instance v0, Lorg/conscrypt/OpenSSLProvider;

    invoke-direct {v0}, Lorg/conscrypt/OpenSSLProvider;-><init>()V

    return-object v0
.end method

.method public static j(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/i;->p(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/a;->c([Ljava/lang/String;)V

    return-void
.end method

.method public static k(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/i;->q(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/b;->b([Ljava/lang/String;)V

    return-void
.end method

.method public static l(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/c;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/i;->p(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/a;->d(Lorg/conscrypt/c;)V

    return-void
.end method

.method public static m(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/m;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/i;->p(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/a;->e(Lorg/conscrypt/m;)V

    return-void
.end method

.method public static n(Ljavax/net/ssl/TrustManager;Lorg/conscrypt/k;)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/i;->r(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/d0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/d0;->o(Lorg/conscrypt/k;)V

    return-void
.end method

.method public static o(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/i;->q(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/b;->c(Z)V

    return-void
.end method

.method private static p(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/a;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/conscrypt/i;->e(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/conscrypt/a;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static q(Ljavax/net/ssl/SSLSocket;)Lorg/conscrypt/b;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/conscrypt/i;->f(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/conscrypt/b;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static r(Ljavax/net/ssl/TrustManager;)Lorg/conscrypt/d0;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/conscrypt/i;->g(Ljavax/net/ssl/TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/conscrypt/d0;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Conscrypt trust manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-static {p0}, Lorg/conscrypt/i;->p(Ljavax/net/ssl/SSLEngine;)Lorg/conscrypt/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/a;->f([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p0

    return-object p0
.end method

.method public static t()Lorg/conscrypt/i$a;
    .locals 1

    sget-object v0, Lorg/conscrypt/i;->a:Lorg/conscrypt/i$a;

    return-object v0
.end method
