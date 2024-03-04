.class public final Lmg/d;
.super Lio/grpc/netty/shaded/io/netty/channel/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg/d$f;
    }
.end annotation


# static fields
.field private static final P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final Q:Z

.field private static final R:I


# instance fields
.field private final F:Lio/grpc/netty/shaded/io/netty/util/m;

.field private G:Ljava/nio/channels/Selector;

.field private H:Ljava/nio/channels/Selector;

.field private I:Lmg/g;

.field private final J:Ljava/nio/channels/spi/SelectorProvider;

.field private final K:Ljava/util/concurrent/atomic/AtomicLong;

.field private final L:Lio/grpc/netty/shaded/io/netty/channel/x0;

.field private volatile M:I

.field private N:I

.field private O:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lmg/d;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v0, "io.grpc.netty.shaded.io.netty.noKeySetOptimization"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmg/d;->Q:Z

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    const-string v0, "sun.nio.ch.bugLevel"

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lmg/d$b;

    invoke-direct {v0}, Lmg/d$b;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v2, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Unable to get/set System Property: sun.nio.ch.bugLevel"

    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/16 v0, 0x200

    const-string v2, "io.grpc.netty.shaded.io.netty.selectorAutoRebuildThreshold"

    .line 7
    invoke-static {v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 8
    :goto_1
    sput v1, Lmg/d;->R:I

    .line 9
    sget-object v0, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    sget-boolean v2, Lmg/d;->Q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.noKeySetOptimization: {}"

    invoke-interface {v0, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.selectorAutoRebuildThreshold: {}"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method constructor <init>(Lmg/e;Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/grpc/netty/shaded/io/netty/channel/x0;Lug/b0;Lio/grpc/netty/shaded/io/netty/channel/n0;Lio/grpc/netty/shaded/io/netty/channel/n0;)V
    .locals 7

    .line 1
    invoke-static {p6}, Lmg/d;->h1(Lio/grpc/netty/shaded/io/netty/channel/n0;)Ljava/util/Queue;

    move-result-object v4

    invoke-static {p7}, Lmg/d;->h1(Lio/grpc/netty/shaded/io/netty/channel/n0;)Ljava/util/Queue;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/channel/b1;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m0;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Ljava/util/Queue;Lug/b0;)V

    .line 2
    new-instance p1, Lmg/d$a;

    invoke-direct {p1, p0}, Lmg/d$a;-><init>(Lmg/d;)V

    iput-object p1, p0, Lmg/d;->F:Lio/grpc/netty/shaded/io/netty/util/m;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p5, -0x1

    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lmg/d;->K:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 p1, 0x32

    .line 4
    iput p1, p0, Lmg/d;->M:I

    const-string p1, "selectorProvider"

    .line 5
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/spi/SelectorProvider;

    iput-object p1, p0, Lmg/d;->J:Ljava/nio/channels/spi/SelectorProvider;

    const-string p1, "selectStrategy"

    .line 6
    invoke-static {p4, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/x0;

    iput-object p1, p0, Lmg/d;->L:Lio/grpc/netty/shaded/io/netty/channel/x0;

    .line 7
    invoke-direct {p0}, Lmg/d;->j1()Lmg/d$f;

    move-result-object p1

    .line 8
    iget-object p2, p1, Lmg/d$f;->b:Ljava/nio/channels/Selector;

    iput-object p2, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    .line 9
    iget-object p1, p1, Lmg/d$f;->a:Ljava/nio/channels/Selector;

    iput-object p1, p0, Lmg/d;->H:Ljava/nio/channels/Selector;

    return-void
.end method

.method static synthetic b1(Lmg/d;)V
    .locals 0

    invoke-direct {p0}, Lmg/d;->q1()V

    return-void
.end method

.method private e1()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lmg/d;->s1()V

    .line 2
    iget-object v0, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 5
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    .line 6
    instance-of v4, v3, Lmg/b;

    if-eqz v4, :cond_0

    .line 7
    check-cast v3, Lmg/b;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 9
    check-cast v3, Lmg/f;

    const/4 v4, 0x0

    .line 10
    invoke-static {v3, v2, v4}, Lmg/d;->g1(Lmg/f;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmg/b;

    .line 12
    invoke-virtual {v1}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v2

    invoke-virtual {v1}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static f1(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "Unexpected exception in the selector loop."

    invoke-interface {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static g1(Lmg/f;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmg/f<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lmg/f;->a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object p1, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string p2, "Unexpected exception while running NioTask.channelUnregistered()"

    invoke-interface {p1, p2, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static h1(Lio/grpc/netty/shaded/io/netty/channel/n0;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/n0;",
            ")",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget p0, Lio/grpc/netty/shaded/io/netty/channel/b1;->E:I

    invoke-static {p0}, Lmg/d;->i1(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/b1;->E:I

    invoke-interface {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/n0;->a(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method private static i1(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->s0()Ljava/util/Queue;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->t0(I)Ljava/util/Queue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private j1()Lmg/d$f;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lmg/d;->J:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    sget-boolean v1, Lmg/d;->Q:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lmg/d$f;

    invoke-direct {v1, v0}, Lmg/d$f;-><init>(Ljava/nio/channels/Selector;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Lmg/d$c;

    invoke-direct {v1, p0}, Lmg/d$c;-><init>(Lmg/d;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Ljava/lang/Class;

    const-string v3, "failed to instrument a special java.util.Set into: {}"

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lmg/g;

    invoke-direct {v1}, Lmg/g;-><init>()V

    .line 8
    new-instance v4, Lmg/d$d;

    invoke-direct {v4, p0, v2, v0, v1}, Lmg/d$d;-><init>(Lmg/d;Ljava/lang/Class;Ljava/nio/channels/Selector;Lmg/g;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    instance-of v4, v2, Ljava/lang/Exception;

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lmg/d;->I:Lmg/g;

    .line 11
    check-cast v2, Ljava/lang/Exception;

    .line 12
    sget-object v1, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v1, v3, v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    new-instance v1, Lmg/d$f;

    invoke-direct {v1, v0}, Lmg/d$f;-><init>(Ljava/nio/channels/Selector;)V

    return-object v1

    .line 14
    :cond_2
    iput-object v1, p0, Lmg/d;->I:Lmg/g;

    .line 15
    sget-object v2, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "instrumented a special java.util.Set into: {}"

    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    new-instance v2, Lmg/d$f;

    new-instance v3, Lmg/h;

    invoke-direct {v3, v0, v1}, Lmg/h;-><init>(Ljava/nio/channels/Selector;Lmg/g;)V

    invoke-direct {v2, v0, v3}, Lmg/d$f;-><init>(Ljava/nio/channels/Selector;Ljava/nio/channels/Selector;)V

    return-object v2

    .line 17
    :cond_3
    :goto_0
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 18
    check-cast v1, Ljava/lang/Throwable;

    .line 19
    sget-object v2, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v2, v3, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :cond_4
    new-instance v1, Lmg/d$f;

    invoke-direct {v1, v0}, Lmg/d$f;-><init>(Ljava/nio/channels/Selector;)V

    return-object v1

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;

    const-string v2, "failed to open a new selector"

    invoke-direct {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private k1(Ljava/nio/channels/SelectionKey;Lmg/b;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lmg/b;->Q0()Lmg/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p0, :cond_0

    .line 4
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :catchall_0
    :cond_0
    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    .line 7
    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 8
    invoke-interface {v0}, Lmg/b$c;->b()V

    :cond_2
    and-int/lit8 p1, v1, 0x4

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p2}, Lmg/b;->U0()Lmg/b$c;

    move-result-object p1

    invoke-interface {p1}, Lmg/b$c;->a()V

    :cond_3
    and-int/lit8 p1, v1, 0x11

    if-nez p1, :cond_4

    if-nez v1, :cond_5

    .line 10
    :cond_4
    invoke-interface {v0}, Lmg/b$c;->read()V
    :try_end_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static l1(Ljava/nio/channels/SelectionKey;Lmg/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Lmg/f<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-interface {p1, v1, p0}, Lmg/f;->b(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p1, p0, v0}, Lmg/d;->g1(Lmg/f;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 5
    invoke-static {p1, p0, v1}, Lmg/d;->g1(Lmg/f;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-void

    .line 6
    :goto_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 7
    invoke-static {p1, p0, v0}, Lmg/d;->g1(Lmg/f;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    .line 8
    throw v1
.end method

.method private m1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmg/d;->I:Lmg/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lmg/d;->n1()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lmg/d;->o1(Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method private n1()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lmg/d;->I:Lmg/g;

    iget v2, v1, Lmg/g;->b:I

    if-ge v0, v2, :cond_2

    .line 2
    iget-object v1, v1, Lmg/g;->a:[Ljava/nio/channels/SelectionKey;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    .line 3
    aput-object v3, v1, v0

    .line 4
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v3, v1, Lmg/b;

    if-eqz v3, :cond_0

    .line 6
    check-cast v1, Lmg/b;

    invoke-direct {p0, v2, v1}, Lmg/d;->k1(Ljava/nio/channels/SelectionKey;Lmg/b;)V

    goto :goto_1

    .line 7
    :cond_0
    check-cast v1, Lmg/f;

    .line 8
    invoke-static {v2, v1}, Lmg/d;->l1(Ljava/nio/channels/SelectionKey;Lmg/f;)V

    .line 9
    :goto_1
    iget-boolean v1, p0, Lmg/d;->O:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lmg/d;->I:Lmg/g;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lmg/g;->g(I)V

    .line 11
    invoke-direct {p0}, Lmg/d;->s1()V

    const/4 v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private o1(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 4
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 6
    instance-of v2, v1, Lmg/b;

    if-eqz v2, :cond_2

    .line 7
    check-cast v1, Lmg/b;

    invoke-direct {p0, v0, v1}, Lmg/d;->k1(Ljava/nio/channels/SelectionKey;Lmg/b;)V

    goto :goto_1

    .line 8
    :cond_2
    check-cast v1, Lmg/f;

    .line 9
    invoke-static {v0, v1}, Lmg/d;->l1(Ljava/nio/channels/SelectionKey;Lmg/f;)V

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-boolean v0, p0, Lmg/d;->O:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0}, Lmg/d;->s1()V

    .line 13
    iget-object p1, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    return-void

    .line 15
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0
.end method

.method private q1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lmg/d;->j1()Lmg/d$f;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 4
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    .line 5
    :try_start_1
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    iget-object v7, v1, Lmg/d$f;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v6, v7}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    .line 7
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 8
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v7

    iget-object v8, v1, Lmg/d$f;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v7, v8, v6, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    .line 9
    instance-of v7, v5, Lmg/b;

    if-eqz v7, :cond_3

    .line 10
    move-object v7, v5

    check-cast v7, Lmg/b;

    iput-object v6, v7, Lmg/b;->u:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    .line 11
    sget-object v7, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v8, "Failed to re-register a Channel to the new Selector."

    invoke-interface {v7, v8, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    instance-of v7, v5, Lmg/b;

    if-eqz v7, :cond_4

    .line 13
    check-cast v5, Lmg/b;

    .line 14
    invoke-virtual {v5}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v4

    invoke-virtual {v5}, Lmg/b;->U0()Lmg/b$c;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 15
    :cond_4
    check-cast v5, Lmg/f;

    .line 16
    invoke-static {v5, v4, v6}, Lmg/d;->g1(Lmg/f;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object v3, v1, Lmg/d$f;->b:Ljava/nio/channels/Selector;

    iput-object v3, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    .line 18
    iget-object v1, v1, Lmg/d$f;->a:Ljava/nio/channels/Selector;

    iput-object v1, p0, Lmg/d;->H:Ljava/nio/channels/Selector;

    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 20
    sget-object v1, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    sget-object v1, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Failed to close the old Selector."

    invoke-interface {v1, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_6
    :goto_1
    sget-object v0, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel(s) to the new Selector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;)V

    :cond_7
    return-void

    :catch_1
    move-exception v0

    .line 24
    sget-object v1, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to create a new Selector."

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private r1(J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-object p1, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->select()I

    move-result p1

    return p1

    :cond_0
    const-wide/32 v0, 0xf2eb8

    add-long/2addr p1, v0

    .line 2
    invoke-static {p1, p2}, Lug/d;->u(J)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 3
    iget-object p1, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    :goto_0
    return p1
.end method

.method private s1()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmg/d;->O:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to update SelectionKeys."

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private u1(I)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Selector.select() returned prematurely because Thread.currentThread().interrupt() was called. Use NioEventLoop.shutdownGracefully() to shutdown the NioEventLoop."

    .line 3
    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 4
    :cond_1
    sget v0, Lmg/d;->R:I

    if-lez v0, :cond_2

    if-lt p1, v0, :cond_2

    .line 5
    sget-object v0, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    const-string v3, "Selector.select() returned prematurely {} times in a row; rebuilding Selector {}."

    .line 7
    invoke-interface {v0, v3, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lmg/d;->p1()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected F0()V
    .locals 8

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1
    :cond_1
    :goto_1
    :try_start_0
    iget-object v2, p0, Lmg/d;->L:Lio/grpc/netty/shaded/io/netty/channel/x0;

    iget-object v3, p0, Lmg/d;->F:Lio/grpc/netty/shaded/io/netty/util/m;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b1;->s0()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/channel/x0;->a(Lio/grpc/netty/shaded/io/netty/util/m;Z)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, -0x3

    if-eq v2, v3, :cond_3

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    goto :goto_2

    .line 2
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-direct {p0}, Lmg/d;->e1()V

    .line 4
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    return-void

    :catchall_0
    move-exception v2

    .line 5
    invoke-static {v2}, Lmg/d;->f1(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    throw v0

    .line 7
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lug/d;->z()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    const-wide v3, 0x7fffffffffffffffL

    .line 8
    :cond_4
    iget-object v7, p0, Lmg/d;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 9
    :try_start_3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b1;->s0()Z

    move-result v7

    if-nez v7, :cond_5

    .line 10
    invoke-direct {p0, v3, v4}, Lmg/d;->r1(J)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 11
    :cond_5
    :try_start_4
    iget-object v3, p0, Lmg/d;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 12
    :try_start_5
    iput v0, p0, Lmg/d;->N:I

    .line 13
    iput-boolean v0, p0, Lmg/d;->O:Z

    .line 14
    iget v3, p0, Lmg/d;->M:I
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v4, 0x64

    if-ne v3, v4, :cond_7

    if-lez v2, :cond_6

    .line 15
    :try_start_6
    invoke-direct {p0}, Lmg/d;->m1()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 16
    :try_start_7
    invoke-virtual {p0}, Lug/f0;->G0()Z

    .line 17
    throw v2

    .line 18
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lug/f0;->G0()Z

    move-result v3

    goto :goto_4

    :cond_7
    if-lez v2, :cond_8

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 20
    :try_start_8
    invoke-direct {p0}, Lmg/d;->m1()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 21
    :try_start_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    rsub-int/lit8 v4, v3, 0x64

    int-to-long v4, v4

    mul-long v6, v6, v4

    int-to-long v3, v3

    .line 22
    div-long/2addr v6, v3

    invoke-virtual {p0, v6, v7}, Lug/f0;->H0(J)Z

    move-result v3

    goto :goto_4

    :catchall_2
    move-exception v2

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    rsub-int/lit8 v4, v3, 0x64

    int-to-long v4, v4

    mul-long v6, v6, v4

    int-to-long v3, v3

    .line 24
    div-long/2addr v6, v3

    invoke-virtual {p0, v6, v7}, Lug/f0;->H0(J)Z

    .line 25
    throw v2

    :cond_8
    const-wide/16 v3, 0x0

    .line 26
    invoke-virtual {p0, v3, v4}, Lug/f0;->H0(J)Z

    move-result v3

    :goto_4
    if-nez v3, :cond_a

    if-lez v2, :cond_9

    goto :goto_5

    .line 27
    :cond_9
    invoke-direct {p0, v1}, Lmg/d;->u1(I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v2, 0x3

    if-le v1, v2, :cond_b

    .line 28
    sget-object v2, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "Selector.select() returned prematurely {} times in a row for Selector {}."

    add-int/lit8 v4, v1, -0x1

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    .line 30
    invoke-interface {v2, v3, v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_b
    :goto_6
    const/4 v1, 0x0

    .line 31
    :cond_c
    :try_start_a
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-direct {p0}, Lmg/d;->e1()V

    .line 33
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_1

    return-void

    :catch_1
    move-exception v0

    .line 34
    throw v0

    :catchall_3
    move-exception v2

    .line 35
    :try_start_b
    iget-object v3, p0, Lmg/d;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 36
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v2

    goto :goto_9

    :catch_4
    move-exception v2

    .line 37
    :try_start_c
    invoke-direct {p0}, Lmg/d;->q1()V
    :try_end_c
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 38
    :try_start_d
    invoke-static {v2}, Lmg/d;->f1(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 39
    :try_start_e
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-direct {p0}, Lmg/d;->e1()V

    .line 41
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v1, :cond_0

    return-void

    :catchall_5
    move-exception v1

    .line 42
    invoke-static {v1}, Lmg/d;->f1(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    .line 43
    throw v0

    :catchall_6
    move-exception v2

    const/4 v1, 0x0

    goto :goto_7

    :catch_6
    move-exception v2

    const/4 v1, 0x0

    goto :goto_9

    .line 44
    :goto_7
    :try_start_f
    invoke-static {v2}, Lmg/d;->f1(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 45
    :try_start_10
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-direct {p0}, Lmg/d;->e1()V

    .line 47
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v2, :cond_1

    return-void

    :catch_7
    move-exception v0

    .line 48
    throw v0

    .line 49
    :goto_8
    :try_start_11
    throw v0

    .line 50
    :goto_9
    sget-object v3, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Ljava/nio/channels/CancelledKeyException;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " raised by a Selector {} - JDK bug?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-interface {v3, v4, v5, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 52
    :cond_d
    :try_start_12
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-direct {p0}, Lmg/d;->e1()V

    .line 54
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v2, :cond_1

    return-void

    :catch_8
    move-exception v0

    .line 55
    throw v0

    :catchall_7
    move-exception v0

    .line 56
    :try_start_13
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 57
    invoke-direct {p0}, Lmg/d;->e1()V

    .line 58
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v1, :cond_e

    return-void

    :catchall_8
    move-exception v1

    .line 59
    invoke-static {v1}, Lmg/d;->f1(Ljava/lang/Throwable;)V

    .line 60
    :cond_e
    throw v0

    :catch_9
    move-exception v0

    .line 61
    throw v0
.end method

.method protected Y0(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lmg/d;->K:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    return-void
.end method

.method d1(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 2
    iget p1, p0, Lmg/d;->N:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lmg/d;->N:I

    const/16 v1, 0x100

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lmg/d;->N:I

    .line 4
    iput-boolean v0, p0, Lmg/d;->O:Z

    :cond_0
    return-void
.end method

.method protected f0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lmg/d;->P:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to close a selector."

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected g(J)Z
    .locals 3

    iget-object v0, p0, Lmg/d;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected m(J)Z
    .locals 3

    iget-object v0, p0, Lmg/d;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public p1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lug/a;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmg/d$e;

    invoke-direct {v0, p0}, Lmg/d$e;-><init>(Lmg/d;)V

    invoke-virtual {p0, v0}, Lug/f0;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lmg/d;->q1()V

    return-void
.end method

.method t1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmg/d;->G:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    return v0
.end method

.method v1()Ljava/nio/channels/Selector;
    .locals 1

    iget-object v0, p0, Lmg/d;->H:Ljava/nio/channels/Selector;

    return-object v0
.end method
