.class public final Llg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Throwable;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "io.grpc.netty.shaded.io.netty.transport.noNative"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Native transport was explicit disabled with -Dio.netty.transport.noNative=true"

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->j()Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->k()Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 6
    :try_start_3
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 8
    :catch_1
    :cond_2
    :goto_2
    sput-object v1, Llg/a;->a:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    sget-object v0, Llg/a;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    const-string v2, "failed to load the required native library"

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method
