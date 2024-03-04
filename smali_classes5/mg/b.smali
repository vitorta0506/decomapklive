.class public abstract Lmg/b;
.super Lio/grpc/netty/shaded/io/netty/channel/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg/b$b;,
        Lmg/b$c;
    }
.end annotation


# static fields
.field private static final A:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final s:Ljava/nio/channels/SelectableChannel;

.field protected final t:I

.field volatile u:Ljava/nio/channels/SelectionKey;

.field v:Z

.field private final w:Ljava/lang/Runnable;

.field private x:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private y:Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end field

.field private z:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lmg/b;

    .line 2
    const-class v0, Lmg/b;

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lmg/b;->A:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SelectableChannel;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    .line 2
    new-instance p1, Lmg/b$a;

    invoke-direct {p1, p0}, Lmg/b$a;-><init>(Lmg/b;)V

    iput-object p1, p0, Lmg/b;->w:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lmg/b;->s:Ljava/nio/channels/SelectableChannel;

    .line 4
    iput p3, p0, Lmg/b;->t:I

    const/4 p1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p2}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 7
    sget-object p3, Lmg/b;->A:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v0, "Failed to close a partially initialized socket."

    invoke-interface {p3, v0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    const-string p3, "Failed to enter non-blocking mode."

    invoke-direct {p2, p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic D0(Lmg/b;)V
    .locals 0

    invoke-direct {p0}, Lmg/b;->M0()V

    return-void
.end method

.method static synthetic E0(Lmg/b;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    iget-object p0, p0, Lmg/b;->x:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p0
.end method

.method static synthetic F0(Lmg/b;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    iput-object p1, p0, Lmg/b;->x:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p1
.end method

.method static synthetic G0(Lmg/b;)Ljava/net/SocketAddress;
    .locals 0

    iget-object p0, p0, Lmg/b;->z:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static synthetic H0(Lmg/b;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    iput-object p1, p0, Lmg/b;->z:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic I0(Lmg/b;)Lug/q;
    .locals 0

    iget-object p0, p0, Lmg/b;->y:Lug/q;

    return-object p0
.end method

.method static synthetic K0(Lmg/b;Lug/q;)Lug/q;
    .locals 0

    iput-object p1, p0, Lmg/b;->y:Lug/q;

    return-object p1
.end method

.method private M0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmg/b;->v:Z

    .line 2
    invoke-virtual {p0}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v0

    check-cast v0, Lmg/b$b;

    invoke-virtual {v0}, Lmg/b$b;->D()V

    return-void
.end method


# virtual methods
.method protected final L0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lmg/b;->Q0()Lmg/d;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lmg/b;->M0()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lmg/b;->w:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lmg/b;->v:Z

    :goto_0
    return-void
.end method

.method protected abstract N0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract P0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public Q0()Lmg/d;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    check-cast v0, Lmg/d;

    return-object v0
.end method

.method protected R0()Ljava/nio/channels/SelectableChannel;
    .locals 1

    iget-object v0, p0, Lmg/b;->s:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method protected final S0(Lkg/j;)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lkg/s0;->d:Lkg/j;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->P()Lkg/k;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lkg/k;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1, v0}, Lkg/k;->h(I)Lkg/j;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 8
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    return-object v1

    .line 9
    :cond_1
    invoke-static {}, Lkg/n;->N()Lkg/j;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 11
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    return-object v1

    :cond_2
    return-object p1
.end method

.method protected T0()Ljava/nio/channels/SelectionKey;
    .locals 1

    iget-object v0, p0, Lmg/b;->u:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public U0()Lmg/b$c;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    check-cast v0, Lmg/b$c;

    return-object v0
.end method

.method public bridge synthetic a0()Lio/grpc/netty/shaded/io/netty/channel/l0;
    .locals 1

    invoke-virtual {p0}, Lmg/b;->Q0()Lmg/d;

    move-result-object v0

    return-object v0
.end method

.method protected g0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmg/b;->u:Ljava/nio/channels/SelectionKey;

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lmg/b;->v:Z

    .line 4
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 5
    iget v2, p0, Lmg/b;->t:I

    and-int v3, v1, v2

    if-nez v3, :cond_1

    or-int/2addr v1, v2

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method

.method protected h0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmg/b;->x:Lio/grpc/netty/shaded/io/netty/channel/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v2}, Lug/x;->z(Ljava/lang/Throwable;)Z

    .line 3
    iput-object v1, p0, Lmg/b;->x:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 4
    :cond_0
    iget-object v0, p0, Lmg/b;->y:Lug/q;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v2}, Lug/q;->cancel(Z)Z

    .line 6
    iput-object v1, p0, Lmg/b;->y:Lug/q;

    :cond_1
    return-void
.end method

.method protected i0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lmg/b;->Q0()Lmg/d;

    move-result-object v0

    invoke-virtual {p0}, Lmg/b;->T0()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmg/d;->d1(Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lmg/b;->s:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;
    .locals 1

    invoke-virtual {p0}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v0

    return-object v0
.end method

.method protected l0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lmg/b;->R0()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {p0}, Lmg/b;->Q0()Lmg/d;

    move-result-object v3

    invoke-virtual {v3}, Lmg/d;->v1()Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    iput-object v2, p0, Lmg/b;->u:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lmg/b;->Q0()Lmg/d;

    move-result-object v1

    invoke-virtual {v1}, Lmg/d;->t1()I

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    throw v2
.end method

.method protected u0(Lio/grpc/netty/shaded/io/netty/channel/l0;)Z
    .locals 0

    instance-of p1, p1, Lmg/d;

    return p1
.end method
