.class Lio/grpc/netty/shaded/io/netty/channel/epoll/h;
.super Lio/grpc/netty/shaded/io/netty/channel/b1;
.source "SourceFile"


# static fields
.field private static final R:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

.field private final G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

.field private final H:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

.field private final I:Ltg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg/e<",
            "Lio/grpc/netty/shaded/io/netty/channel/epoll/a;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Z

.field private final K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

.field private L:Lio/grpc/netty/shaded/io/netty/channel/unix/a;

.field private final M:Lio/grpc/netty/shaded/io/netty/channel/x0;

.field private final N:Lio/grpc/netty/shaded/io/netty/util/m;

.field private final O:Ljava/util/concurrent/atomic/AtomicLong;

.field private P:Z

.field private volatile Q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->R:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 3
    invoke-static {}, Llg/a;->a()V

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/m0;Ljava/util/concurrent/Executor;ILio/grpc/netty/shaded/io/netty/channel/x0;Lug/b0;Lio/grpc/netty/shaded/io/netty/channel/n0;Lio/grpc/netty/shaded/io/netty/channel/n0;)V
    .locals 8

    .line 1
    invoke-static {p6}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->n1(Lio/grpc/netty/shaded/io/netty/channel/n0;)Ljava/util/Queue;

    move-result-object v4

    invoke-static {p7}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->n1(Lio/grpc/netty/shaded/io/netty/channel/n0;)Ljava/util/Queue;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/channel/b1;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m0;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Ljava/util/Queue;Lug/b0;)V

    .line 2
    new-instance p1, Ltg/d;

    const/16 p2, 0x1000

    invoke-direct {p1, p2}, Ltg/d;-><init>(I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->I:Ltg/e;

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/h$a;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/h;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->N:Lio/grpc/netty/shaded/io/netty/util/m;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p5, -0x1

    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 p1, 0x32

    .line 5
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->Q:I

    const-string p1, "strategy"

    .line 6
    invoke-static {p4, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/x0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->M:Lio/grpc/netty/shaded/io/netty/channel/x0;

    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->J:Z

    .line 8
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-direct {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;-><init>(I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->J:Z

    .line 10
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-direct {p1, p3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;-><init>(I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    :goto_0
    const/4 p1, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->j()Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->k()Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result p4

    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result p5

    sget p6, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->b:I

    sget p7, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    or-int v0, p6, p7

    invoke-static {p4, p5, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c(III)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->l()Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->H:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result p4

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result p5

    or-int/2addr p6, p7

    invoke-static {p4, p5, p6}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c(III)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catch_0
    move-exception p4

    .line 16
    :try_start_6
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string p6, "Unable to add timerFd filedescriptor to epoll"

    invoke-direct {p5, p6, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p5

    :catch_1
    move-exception p4

    .line 17
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string p6, "Unable to add eventFd filedescriptor to epoll"

    invoke-direct {p5, p6, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p4

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_1

    :catchall_1
    move-exception p4

    move-object p3, p1

    move-object p1, p2

    move-object p2, p3

    goto :goto_1

    :catchall_2
    move-exception p4

    move-object p2, p1

    move-object p3, p2

    :goto_1
    if-eqz p1, :cond_1

    .line 18
    :try_start_7
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    .line 19
    :try_start_8
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    nop

    :cond_2
    :goto_3
    if-eqz p2, :cond_3

    .line 20
    :try_start_9
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 21
    :catch_4
    :cond_3
    throw p4
.end method

.method static synthetic b1(Lio/grpc/netty/shaded/io/netty/channel/epoll/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->j1()I

    move-result p0

    return p0
.end method

.method private f1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->I:Ltg/e;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    .line 2
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v4

    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-interface {v4, v3}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g1()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->b(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;)I

    move-result v0

    return v0
.end method

.method private h1(J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->H:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->g(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;II)I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lug/d;->u(J)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    .line 3
    div-long v2, p1, v0

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    mul-long v4, v4, v0

    sub-long/2addr p1, v4

    const-wide/32 v0, 0x3b9ac9ff

    .line 4
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->H:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-static {p1, v0, v1, v3, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->g(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;II)I

    move-result p1

    return p1
.end method

.method private i1()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->h(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;Z)I

    move-result v0

    return v0
.end method

.method private j1()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->h(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;Z)I

    move-result v0

    return v0
.end method

.method private k1()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->f(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;Lio/grpc/netty/shaded/io/netty/channel/epoll/g;I)I

    move-result v0

    return v0
.end method

.method private static n1(Lio/grpc/netty/shaded/io/netty/channel/n0;)Ljava/util/Queue;
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

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->o1(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/b1;->E:I

    invoke-interface {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/n0;->a(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method private static o1(I)Ljava/util/Queue;
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

.method private p1(Lio/grpc/netty/shaded/io/netty/channel/epoll/g;I)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 1
    invoke-virtual {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->c(I)I

    move-result v3

    .line 2
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->P:Z

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->H:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->b(I)I

    move-result v4

    int-to-long v4, v4

    .line 6
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->I:Ltg/e;

    invoke-interface {v6, v3}, Ltg/e;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    if-eqz v6, :cond_4

    .line 7
    invoke-virtual {v6}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    .line 8
    sget v6, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->f:I

    sget v7, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    or-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    .line 9
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->G()V

    .line 10
    :cond_2
    sget v7, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->b:I

    or-int/2addr v6, v7

    int-to-long v6, v6

    and-long/2addr v6, v4

    cmp-long v8, v6, v9

    if-eqz v8, :cond_3

    .line 11
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->F()V

    .line 12
    :cond_3
    sget v6, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->d:I

    int-to-long v6, v6

    and-long/2addr v4, v6

    cmp-long v6, v4, v9

    if-eqz v6, :cond_5

    .line 13
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->I()V

    goto :goto_1

    .line 14
    :cond_4
    :try_start_0
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v4

    invoke-static {v4, v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->d(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method


# virtual methods
.method protected F0()V
    .locals 11

    const-wide v0, 0x7fffffffffffffffL

    move-wide v2, v0

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->M:Lio/grpc/netty/shaded/io/netty/channel/x0;

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->N:Lio/grpc/netty/shaded/io/netty/util/m;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b1;->s0()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lio/grpc/netty/shaded/io/netty/channel/x0;->a(Lio/grpc/netty/shaded/io/netty/util/m;Z)I

    move-result v4

    const/4 v5, -0x3

    if-eq v4, v5, :cond_b

    const/4 v5, -0x2

    if-eq v4, v5, :cond_a

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    goto/16 :goto_3

    .line 2
    :cond_1
    iget-boolean v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->P:Z

    if-eqz v5, :cond_3

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->k1()I

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    .line 4
    :cond_2
    sget-object v5, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->R:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v6, "Missed eventfd write (not seen after > 1 second)"

    invoke-interface {v5, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 5
    iput-boolean v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->P:Z

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b1;->s0()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {p0}, Lug/d;->z()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    move-wide v5, v0

    .line 8
    :cond_4
    iget-object v9, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v9, 0x1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b1;->s0()Z

    move-result v10

    if-nez v10, :cond_6

    cmp-long v4, v5, v2

    if-nez v4, :cond_5

    .line 10
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->i1()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 11
    :cond_5
    :try_start_2
    invoke-direct {p0, v5, v6}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->h1(J)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v2

    move-wide v2, v5

    goto :goto_1

    :catchall_0
    move-exception v4

    move-wide v2, v5

    goto :goto_2

    .line 12
    :cond_6
    :goto_1
    :try_start_3
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-eqz v10, :cond_7

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-nez v10, :cond_c

    .line 13
    :cond_7
    iput-boolean v9, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->P:Z

    goto :goto_3

    :catchall_1
    move-exception v4

    .line 14
    :goto_2
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-eqz v10, :cond_8

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v5

    cmp-long v10, v5, v7

    if-nez v10, :cond_9

    .line 15
    :cond_8
    iput-boolean v9, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->P:Z

    .line 16
    :cond_9
    throw v4
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 17
    :cond_a
    :try_start_4
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->f1()V

    .line 19
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_0

    goto/16 :goto_6

    :catchall_2
    move-exception v4

    .line 20
    invoke-virtual {p0, v4}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->l1(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 21
    throw v0

    .line 22
    :cond_b
    :try_start_5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->g1()I

    move-result v4

    .line 23
    :cond_c
    :goto_3
    iget v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->Q:I
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_e

    if-lez v4, :cond_d

    .line 24
    :try_start_6
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-direct {p0, v5, v4}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->p1(Lio/grpc/netty/shaded/io/netty/channel/epoll/g;I)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_d

    move-wide v2, v0

    goto :goto_4

    :catchall_3
    move-exception v4

    .line 25
    :try_start_7
    invoke-virtual {p0}, Lug/f0;->G0()Z

    .line 26
    throw v4

    .line 27
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lug/f0;->G0()Z

    goto :goto_5

    :cond_e
    if-lez v4, :cond_10

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 29
    :try_start_8
    iget-object v8, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-direct {p0, v8, v4}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->p1(Lio/grpc/netty/shaded/io/netty/channel/epoll/g;I)Z

    move-result v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v8, :cond_f

    move-wide v2, v0

    .line 30
    :cond_f
    :try_start_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    rsub-int/lit8 v6, v5, 0x64

    int-to-long v6, v6

    mul-long v8, v8, v6

    int-to-long v5, v5

    .line 31
    div-long/2addr v8, v5

    invoke-virtual {p0, v8, v9}, Lug/f0;->H0(J)Z

    goto :goto_5

    :catchall_4
    move-exception v4

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    rsub-int/lit8 v6, v5, 0x64

    int-to-long v6, v6

    mul-long v8, v8, v6

    int-to-long v5, v5

    .line 33
    div-long/2addr v8, v5

    invoke-virtual {p0, v8, v9}, Lug/f0;->H0(J)Z

    .line 34
    throw v4

    :cond_10
    const-wide/16 v5, 0x0

    .line 35
    invoke-virtual {p0, v5, v6}, Lug/f0;->H0(J)Z

    .line 36
    :goto_5
    iget-boolean v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->J:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->g()I

    move-result v5

    if-ne v4, v5, :cond_11

    .line 37
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->f()V
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 38
    :cond_11
    :try_start_a
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->f1()V

    .line 40
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v4, :cond_0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 41
    throw v0

    :catchall_5
    move-exception v4

    .line 42
    :try_start_b
    invoke-virtual {p0, v4}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->l1(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 43
    :try_start_c
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->f1()V

    .line 45
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v4
    :try_end_c
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v4, :cond_0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 46
    throw v0

    :catch_3
    move-exception v0

    .line 47
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    .line 48
    :try_start_e
    invoke-virtual {p0}, Lug/f0;->u0()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 49
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->f1()V

    .line 50
    invoke-virtual {p0}, Lug/f0;->k0()Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v1, :cond_12

    :goto_6
    return-void

    :catchall_7
    move-exception v1

    .line 51
    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->l1(Ljava/lang/Throwable;)V

    .line 52
    :cond_12
    throw v0

    :catch_4
    move-exception v0

    .line 53
    throw v0
.end method

.method protected Y0(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result p1

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->eventFdWrite(IJ)V

    :cond_0
    return-void
.end method

.method d1(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v1

    iget v2, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    invoke-static {v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c(III)V

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->I:Ltg/e;

    invoke-interface {v1, v0, p1}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    return-void
.end method

.method e1()Lio/grpc/netty/shaded/io/netty/channel/unix/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->L:Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->L:Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->d()V

    .line 4
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->L:Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    return-object v0
.end method

.method protected f0()V
    .locals 6

    :catch_0
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->P:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 2
    :try_start_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->k1()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 3
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-virtual {v4, v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->c(I)I

    move-result v4

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 4
    iput-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->P:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_3
    :goto_2
    :try_start_2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    .line 6
    :try_start_3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->R:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Failed to close the event fd."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :goto_3
    :try_start_4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->H:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v1

    .line 8
    :try_start_5
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->R:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Failed to close the timer fd."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 9
    :goto_4
    :try_start_6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v1

    .line 10
    :try_start_7
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->R:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "Failed to close the epoll fd."

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 11
    :goto_5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->L:Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->j()V

    .line 13
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->L:Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    .line 14
    :cond_4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->d()V

    return-void

    :catchall_0
    move-exception v1

    .line 15
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->L:Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->j()V

    .line 17
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->L:Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    .line 18
    :cond_5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->K:Lio/grpc/netty/shaded/io/netty/channel/epoll/g;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->d()V

    .line 19
    throw v1
.end method

.method protected g(J)Z
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

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

.method l1(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->R:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "Unexpected exception in the selector loop."

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x3e8

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected m(J)Z
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->O:Ljava/util/concurrent/atomic/AtomicLong;

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

.method m1(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    iget-object v1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v1

    iget p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    invoke-static {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e(III)V

    return-void
.end method

.method q1(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->I:Ltg/e;

    invoke-interface {v1, v0}, Ltg/e;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->I:Ltg/e;

    invoke-interface {p1, v0, v1}, Ltg/e;->n0(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result p1

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->d(II)V

    :cond_1
    :goto_0
    return-void
.end method
