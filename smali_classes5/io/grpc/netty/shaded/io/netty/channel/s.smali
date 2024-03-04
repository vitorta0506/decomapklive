.class public final Lio/grpc/netty/shaded/io/netty/channel/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/s$d;,
        Lio/grpc/netty/shaded/io/netty/channel/s$e;
    }
.end annotation


# static fields
.field static final l:I

.field private static final m:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final n:Lug/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/n<",
            "[",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/channel/s;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/channel/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/e;

.field private b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

.field private c:Lio/grpc/netty/shaded/io/netty/channel/s$d;

.field private d:Lio/grpc/netty/shaded/io/netty/channel/s$d;

.field private e:I

.field private f:I

.field private g:J

.field private h:Z

.field private volatile i:J

.field private volatile j:I

.field private volatile k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/s;

    const/16 v1, 0x60

    const-string v2, "io.grpc.netty.shaded.io.netty.transport.outboundBufferEntrySizeOverhead"

    .line 2
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/channel/s;->l:I

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/channel/s;->m:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 4
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/s$a;

    invoke-direct {v1}, Lio/grpc/netty/shaded/io/netty/channel/s$a;-><init>()V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/channel/s;->n:Lug/n;

    const-string v1, "i"

    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/channel/s;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "j"

    .line 6
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/s;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-void
.end method

.method private B(Lio/grpc/netty/shaded/io/netty/channel/s$d;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->d:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-ne p1, v1, :cond_1

    .line 4
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->d:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 5
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->c:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/s$d;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    :cond_1
    :goto_0
    return-void
.end method

.method private static C(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/s;->m:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    :goto_0
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->b(Lug/x;Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    return-void
.end method

.method private static D(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2

    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/s;->m:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    :goto_0
    invoke-static {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->c(Lug/x;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    return-void
.end method

.method private E(Z)V
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->j:I

    or-int/lit8 v1, v0, 0x1

    .line 2
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/s;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->l(Z)V

    :cond_1
    return-void
.end method

.method private F(Z)V
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->j:I

    and-int/lit8 v1, v0, -0x2

    .line 2
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/s;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->l(Z)V

    :cond_1
    return-void
.end method

.method private static H(Ljava/lang/Object;)J
    .locals 2

    .line 1
    instance-of v0, p0, Lkg/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lkg/j;

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 3
    :cond_0
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/p0;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/p0;->count()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    instance-of v0, p0, Lkg/l;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lkg/l;

    invoke-interface {p0}, Lkg/l;->content()Lkg/j;

    move-result-object p0

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private d()V
    .locals 4

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->f:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->f:I

    .line 3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/s;->n:Lug/n;

    invoke-virtual {v2}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private i(JZZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/s;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long p1, p1

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    if-eqz p4, :cond_1

    .line 2
    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {p4}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object p4

    invoke-interface {p4}, Lio/grpc/netty/shaded/io/netty/channel/f;->d()I

    move-result p4

    int-to-long v0, p4

    cmp-long p4, p1, v0

    if-gez p4, :cond_1

    .line 3
    invoke-direct {p0, p3}, Lio/grpc/netty/shaded/io/netty/channel/s;->F(Z)V

    :cond_1
    return-void
.end method

.method private static j([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    array-length v0, p0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_1

    if-gt p1, v0, :cond_0

    .line 2
    new-array p1, v0, [Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->k:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/s$b;

    invoke-direct {p1, p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/s$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/w;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->k:Ljava/lang/Runnable;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->w()Lio/grpc/netty/shaded/io/netty/channel/w;

    :goto_0
    return-void
.end method

.method private o(JZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/s;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->f()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 3
    invoke-direct {p0, p3}, Lio/grpc/netty/shaded/io/netty/channel/s;->E(Z)V

    :cond_1
    return-void
.end method

.method private q(Lio/grpc/netty/shaded/io/netty/channel/s$d;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->c:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static u(Lio/grpc/netty/shaded/io/netty/channel/s$d;Lkg/j;[Ljava/nio/ByteBuffer;II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->d:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lkg/j;->t1()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->d:[Ljava/nio/ByteBuffer;

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    array-length p1, v0

    if-ge p0, p1, :cond_3

    if-ge p3, p4, :cond_3

    .line 4
    aget-object p1, v0, p0

    if-nez p1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p3, 0x1

    .line 6
    aput-object p1, p2, p3

    move p3, v1

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return p3
.end method

.method private z(Ljava/lang/Throwable;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/s;->d()V

    return v1

    .line 3
    :cond_0
    iget-object v2, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    .line 4
    iget-object v3, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->f:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 5
    iget v4, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->i:I

    .line 6
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->B(Lio/grpc/netty/shaded/io/netty/channel/s$d;)V

    .line 7
    iget-boolean v5, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->k:Z

    if-nez v5, :cond_1

    .line 8
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 9
    invoke-static {v3, p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->C(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    int-to-long v2, v4

    .line 10
    invoke-direct {p0, v2, v3, v1, p2}, Lio/grpc/netty/shaded/io/netty/channel/s;->i(JZZ)V

    .line 11
    :cond_1
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public A(J)V
    .locals 7

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/s;->g()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkg/j;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    check-cast v0, Lkg/j;

    .line 4
    invoke-virtual {v0}, Lkg/j;->Q1()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lkg/j;->K2()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, p1

    if-gtz v6, :cond_2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->w(J)V

    sub-long/2addr p1, v2

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    goto :goto_0

    :cond_2
    cmp-long v2, p1, v4

    if-eqz v2, :cond_3

    long-to-int v2, p1

    add-int/2addr v1, v2

    .line 8
    invoke-virtual {v0, v1}, Lkg/j;->R1(I)Lkg/j;

    .line 9
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/s;->w(J)V

    .line 10
    :cond_3
    :goto_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/s;->d()V

    return-void
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->e:I

    return v0
.end method

.method public I()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->i:J

    return-wide v0
.end method

.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->c:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-nez v1, :cond_0

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 4
    :cond_0
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->e:I

    .line 5
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->f:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v1}, Lug/x;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s$d;->a()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v3, v4, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/s;->i(JZZ)V

    .line 8
    :cond_1
    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->c:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Object;ILio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->H(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lio/grpc/netty/shaded/io/netty/channel/s$d;->b(Ljava/lang/Object;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/s$d;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->d:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p2, Lio/grpc/netty/shaded/io/netty/channel/s$d;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 5
    :goto_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->d:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 6
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->c:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-nez p2, :cond_1

    .line 7
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->c:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 8
    :cond_1
    iget p1, p1, Lio/grpc/netty/shaded/io/netty/channel/s$d;->i:I

    int-to-long p1, p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/s;->o(JZ)V

    return-void
.end method

.method public c()J
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->f()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/s;->r()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_1
    return-wide v2
.end method

.method e(Ljava/lang/Throwable;Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/s$c;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/s$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->h:Z

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/e;->isOpen()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "close() must be invoked after the channel is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/s;->p()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->c:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    :goto_1
    if-eqz v0, :cond_4

    .line 8
    iget v1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->i:I

    .line 9
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/s;->o:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-int v1, v1

    int-to-long v3, v1

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 10
    iget-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->k:Z

    if-nez v1, :cond_3

    .line 11
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->f:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->C(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    .line 13
    :cond_3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s$d;->d()Lio/grpc/netty/shaded/io/netty/channel/s$d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 14
    :cond_4
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->h:Z

    .line 15
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/s;->d()V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->h:Z

    .line 17
    throw p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "close() must be invoked after all flushed writes are handled."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method f(Ljava/nio/channels/ClosedChannelException;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->e(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    return-object v0
.end method

.method h(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->i(JZZ)V

    return-void
.end method

.method k(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->h:Z

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/s;->z(Ljava/lang/Throwable;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->h:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->h:Z

    .line 5
    throw p1
.end method

.method public m(Lio/grpc/netty/shaded/io/netty/channel/s$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "processor"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->k:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/s$e;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 6
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->q(Lio/grpc/netty/shaded/io/netty/channel/s$d;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method n(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->o(JZ)V

    return-void
.end method

.method public p()Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->f:I

    return v0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->g:J

    return-wide v0
.end method

.method public v(IJ)[Ljava/nio/ByteBuffer;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v5

    .line 2
    sget-object v6, Lio/grpc/netty/shaded/io/netty/channel/s;->n:Lug/n;

    invoke-virtual {v6, v5}, Lug/n;->c(Lio/grpc/netty/shaded/io/netty/util/internal/k;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/ByteBuffer;

    .line 3
    iget-object v7, v0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 4
    :goto_0
    invoke-direct {v0, v7}, Lio/grpc/netty/shaded/io/netty/channel/s;->q(Lio/grpc/netty/shaded/io/netty/channel/s$d;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    instance-of v9, v8, Lkg/j;

    if-eqz v9, :cond_6

    .line 5
    iget-boolean v9, v7, Lio/grpc/netty/shaded/io/netty/channel/s$d;->k:Z

    if-nez v9, :cond_5

    .line 6
    check-cast v8, Lkg/j;

    .line 7
    invoke-virtual {v8}, Lkg/j;->Q1()I

    move-result v9

    .line 8
    invoke-virtual {v8}, Lkg/j;->K2()I

    move-result v10

    sub-int/2addr v10, v9

    if-lez v10, :cond_5

    int-to-long v11, v10

    sub-long v13, p2, v11

    cmp-long v15, v13, v2

    if-gez v15, :cond_0

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    add-long/2addr v2, v11

    .line 9
    iget v11, v7, Lio/grpc/netty/shaded/io/netty/channel/s$d;->j:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 10
    invoke-virtual {v8}, Lkg/j;->s1()I

    move-result v11

    iput v11, v7, Lio/grpc/netty/shaded/io/netty/channel/s$d;->j:I

    :cond_1
    add-int v12, v4, v11

    .line 11
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 12
    array-length v13, v6

    if-le v12, v13, :cond_2

    .line 13
    invoke-static {v6, v12, v4}, Lio/grpc/netty/shaded/io/netty/channel/s;->j([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 14
    sget-object v12, Lio/grpc/netty/shaded/io/netty/channel/s;->n:Lug/n;

    invoke-virtual {v12, v5, v6}, Lug/n;->l(Lio/grpc/netty/shaded/io/netty/util/internal/k;Ljava/lang/Object;)V

    :cond_2
    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 15
    iget-object v11, v7, Lio/grpc/netty/shaded/io/netty/channel/s$d;->e:Ljava/nio/ByteBuffer;

    if-nez v11, :cond_3

    .line 16
    invoke-virtual {v8, v9, v10}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object v11

    iput-object v11, v7, Lio/grpc/netty/shaded/io/netty/channel/s$d;->e:Ljava/nio/ByteBuffer;

    :cond_3
    add-int/lit8 v8, v4, 0x1

    .line 17
    aput-object v11, v6, v4

    move v4, v8

    goto :goto_1

    .line 18
    :cond_4
    invoke-static {v7, v8, v6, v4, v1}, Lio/grpc/netty/shaded/io/netty/channel/s;->u(Lio/grpc/netty/shaded/io/netty/channel/s$d;Lkg/j;[Ljava/nio/ByteBuffer;II)I

    move-result v4

    :goto_1
    if-lt v4, v1, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iget-object v7, v7, Lio/grpc/netty/shaded/io/netty/channel/s$d;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    goto :goto_0

    .line 20
    :cond_6
    :goto_2
    iput v4, v0, Lio/grpc/netty/shaded/io/netty/channel/s;->f:I

    .line 21
    iput-wide v2, v0, Lio/grpc/netty/shaded/io/netty/channel/s;->g:J

    return-object v6
.end method

.method public w(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    .line 2
    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->f:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 3
    iget-wide v2, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->g:J

    add-long/2addr v2, p1

    .line 4
    iput-wide v2, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->g:J

    .line 5
    instance-of p1, v1, Lio/grpc/netty/shaded/io/netty/channel/x;

    if-eqz p1, :cond_0

    .line 6
    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/x;

    iget-wide p1, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->h:J

    invoke-interface {v1, v2, v3, p1, p2}, Lug/w;->o0(JJ)Z

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/s;->b:Lio/grpc/netty/shaded/io/netty/channel/s$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/s;->d()V

    return v1

    .line 3
    :cond_0
    iget-object v2, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c:Ljava/lang/Object;

    .line 4
    iget-object v3, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->f:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 5
    iget v4, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->i:I

    .line 6
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->B(Lio/grpc/netty/shaded/io/netty/channel/s$d;)V

    .line 7
    iget-boolean v5, v0, Lio/grpc/netty/shaded/io/netty/channel/s$d;->k:Z

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 8
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 9
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->D(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    int-to-long v2, v4

    .line 10
    invoke-direct {p0, v2, v3, v1, v6}, Lio/grpc/netty/shaded/io/netty/channel/s;->i(JZZ)V

    .line 11
    :cond_1
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s$d;->c()V

    return v6
.end method

.method public y(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->z(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method
