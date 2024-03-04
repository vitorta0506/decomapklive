.class abstract Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$c;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$b;
    }
.end annotation


# static fields
.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;->d()Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;->c:Z

    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a0;-><init>(Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;-><init>(Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method private static d()Z
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    :try_start_0
    const-string v0, "sun.security.ssl.ALPNExtension"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static e()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;->c:Z

    return v0
.end method

.method static f(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$b;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)V

    return-object v0
.end method

.method static g(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)Lio/grpc/netty/shaded/io/netty/handler/ssl/c0;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$c;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/c0$c;-><init>(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;)V

    return-object v0
.end method
