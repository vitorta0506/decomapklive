.class final Lio/grpc/netty/shaded/io/netty/util/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/internal/c;


# static fields
.field private static final a:J

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Field;

.field private static final d:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    new-instance v4, Lio/grpc/netty/shaded/io/netty/util/internal/d$a;

    invoke-direct {v4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/d$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 5
    check-cast v4, Ljava/lang/reflect/Field;

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->X(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    .line 8
    invoke-static {v0, v5, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->z(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-wide v5, v1

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "clean"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v1, v5

    goto :goto_1

    .line 12
    :cond_1
    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v7, v4

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_2

    .line 13
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "java.nio.ByteBuffer.cleaner(): available"

    invoke-interface {v0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "java.nio.ByteBuffer.cleaner(): unavailable"

    invoke-interface {v0, v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_2
    sput-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/d;->c:Ljava/lang/reflect/Field;

    .line 16
    sput-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/d;->a:J

    .line 17
    sput-object v7, Lio/grpc/netty/shaded/io/netty/util/internal/d;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/d;->c(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static c(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->z(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static d(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/d$b;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/d$b;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->l0(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static e()Z
    .locals 5

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/d;->c(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->l0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/d;->d(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
