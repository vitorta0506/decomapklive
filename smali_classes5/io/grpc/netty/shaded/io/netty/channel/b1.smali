.class public abstract Lio/grpc/netty/shaded/io/netty/channel/b1;
.super Lug/f0;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/l0;


# static fields
.field protected static final E:I


# instance fields
.field private final D:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.grpc.netty.shaded.io.netty.eventLoop.maxPendingTasks"

    const v1, 0x7fffffff

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x10

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/b1;->E:I

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/m0;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Ljava/util/Queue;Lug/b0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lug/b0;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lug/f0;-><init>(Lug/l;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Lug/b0;)V

    const-string p1, "tailTaskQueue"

    .line 2
    invoke-static {p5, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b1;->D:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a1(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    const-string v0, "promise"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->U(Lio/grpc/netty/shaded/io/netty/channel/l0;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-object p1
.end method

.method protected e0()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b1;->D:Ljava/util/Queue;

    invoke-virtual {p0, v0}, Lug/f0;->P0(Ljava/util/Queue;)Z

    return-void
.end method

.method public i0(Lio/grpc/netty/shaded/io/netty/channel/e;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/f0;

    invoke-direct {v0, p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/f0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b1;->a1(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public next()Lio/grpc/netty/shaded/io/netty/channel/l0;
    .locals 1

    .line 2
    invoke-super {p0}, Lug/a;->next()Lug/j;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/l0;

    return-object v0
.end method

.method public bridge synthetic next()Lug/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b1;->next()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    return-object v0
.end method

.method protected s0()Z
    .locals 1

    invoke-super {p0}, Lug/f0;->s0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b1;->D:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

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
