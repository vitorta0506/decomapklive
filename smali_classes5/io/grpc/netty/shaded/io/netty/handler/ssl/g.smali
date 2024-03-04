.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final b:Ljava/lang/Class;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/Class;

.field private static final j:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.bouncycastle.jsse.BCSSLEngine"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "org.bouncycastle.jsse.BCSSLParameters"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "org.bouncycastle.jsse.BCApplicationProtocolSelector"

    .line 5
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 6
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$a;

    invoke-direct {v5, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$a;-><init>(Ljava/lang/Class;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    const-string v6, "BCJSSE"

    .line 7
    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->f(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v6

    .line 9
    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$b;

    invoke-direct {v7, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$b;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    .line 10
    invoke-virtual {v7, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v9, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$c;

    invoke-direct {v9, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$c;-><init>(Ljava/lang/Class;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    new-array v8, v8, [Ljava/lang/Object;

    .line 12
    sget-object v11, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    aput-object v11, v8, v10

    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$d;

    invoke-direct {v3, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$d;-><init>(Ljava/lang/Class;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    new-array v8, v10, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v8, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$e;

    invoke-direct {v8, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$e;-><init>(Ljava/lang/Class;)V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    new-array v11, v10, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v8, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v11, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$f;

    invoke-direct {v11, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$f;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 18
    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    .line 19
    new-instance v12, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$g;

    invoke-direct {v12, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$g;-><init>(Ljava/lang/Class;)V

    .line 20
    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    new-array v10, v10, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 22
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Unable to initialize BouncyCastleAlpnSslUtils."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    .line 23
    :goto_0
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->b:Ljava/lang/Class;

    .line 24
    sput-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->c:Ljava/lang/reflect/Method;

    .line 25
    sput-object v9, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->d:Ljava/lang/reflect/Method;

    .line 26
    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->e:Ljava/lang/reflect/Method;

    .line 27
    sput-object v8, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->f:Ljava/lang/reflect/Method;

    .line 28
    sput-object v11, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->g:Ljava/lang/reflect/Method;

    .line 29
    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->h:Ljava/lang/reflect/Method;

    .line 30
    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->j:Ljava/lang/reflect/Method;

    .line 31
    sput-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->i:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->j:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static b(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 3
    throw p0
.end method

.method static c(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 3
    throw p0
.end method

.method static d(Ljavax/net/ssl/SSLEngine;)Ljava/util/function/BiFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$i;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$i;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 4
    throw p0
.end method

.method static e(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 3
    :try_start_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->c:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 8
    throw p0
.end method

.method static f(Ljavax/net/ssl/SSLEngine;Ljava/util/function/BiFunction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/function/BiFunction<",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->i:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$h;

    invoke-direct {v3, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g$h;-><init>(Ljava/util/function/BiFunction;)V

    .line 3
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/g;->g:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 6
    throw p0
.end method
