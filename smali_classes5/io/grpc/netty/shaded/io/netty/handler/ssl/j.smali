.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->c0()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    const-string v0, "org.conscrypt.OpenSSLProvider"

    .line 3
    const-class v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;

    .line 4
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    const-string v0, "org.conscrypt.i"

    .line 7
    const-class v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;

    .line 8
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 9
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isConscrypt"

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 10
    const-class v4, Ljavax/net/ssl/SSLEngine;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    const/4 v0, 0x0

    .line 11
    :goto_0
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method static a()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static b(Ljavax/net/ssl/SSLEngine;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    return v0
.end method
