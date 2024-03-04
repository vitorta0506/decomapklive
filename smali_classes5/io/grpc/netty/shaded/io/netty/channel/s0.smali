.class public abstract Lio/grpc/netty/shaded/io/netty/channel/s0;
.super Lug/u;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/m0;


# static fields
.field private static final f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/s0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/s0;->f:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/p;->a()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const-string v2, "io.grpc.netty.shaded.io.netty.eventLoopThreads"

    .line 3
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/channel/s0;->g:I

    .line 4
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.eventLoopThreads: {}"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    sget p1, Lio/grpc/netty/shaded/io/netty/channel/s0;->g:I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lug/u;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public i0(Lio/grpc/netty/shaded/io/netty/channel/e;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/s0;->next()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m0;->i0(Lio/grpc/netty/shaded/io/netty/channel/e;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic m(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lug/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/s0;->u(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object p1

    return-object p1
.end method

.method protected n()Ljava/util/concurrent/ThreadFactory;
    .locals 3

    new-instance v0, Lug/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lug/i;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method public next()Lio/grpc/netty/shaded/io/netty/channel/l0;
    .locals 1

    .line 2
    invoke-super {p0}, Lug/u;->next()Lug/j;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/l0;

    return-object v0
.end method

.method public bridge synthetic next()Lug/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/s0;->next()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract u(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/l0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
