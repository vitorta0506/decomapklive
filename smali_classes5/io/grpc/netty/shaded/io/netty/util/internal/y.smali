.class public abstract Lio/grpc/netty/shaded/io/netty/util/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/grpc/netty/shaded/io/netty/util/s;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/util/s;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C0(Ljava/lang/reflect/Field;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private d(Lio/grpc/netty/shaded/io/netty/util/s;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    if-ge p2, p4, :cond_0

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p4

    shl-int/lit8 v0, p2, 0x1

    sub-int v0, p3, v0

    invoke-virtual {p4, p1, p3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->n(Lio/grpc/netty/shaded/io/netty/util/s;I)Z

    move-result p1

    return p1
.end method

.method private e(Lio/grpc/netty/shaded/io/netty/util/s;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->r()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F(Ljava/lang/Object;J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private static f(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method private m(Lio/grpc/netty/shaded/io/netty/util/s;II)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p1

    :cond_1
    :goto_0
    if-gtz v0, :cond_2

    add-int v1, v0, p3

    if-gez v1, :cond_3

    :cond_2
    if-ltz v0, :cond_4

    add-int v1, v0, p3

    if-lt v1, v0, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    neg-int p3, p3

    invoke-virtual {v1, p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 4
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->f(I)I

    move-result p3

    invoke-direct {p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method private n(Lio/grpc/netty/shaded/io/netty/util/s;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->p(II)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->q(Lio/grpc/netty/shaded/io/netty/util/s;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge p2, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    shl-int/lit8 v2, p2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    neg-int p2, p2

    invoke-direct {p1, v1, p2}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p1
.end method

.method private static p(II)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    const/4 v0, 0x0

    neg-int p1, p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw p0

    :cond_1
    :goto_0
    ushr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private q(Lio/grpc/netty/shaded/io/netty/util/s;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final c(Lio/grpc/netty/shaded/io/netty/util/s;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->r()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F(Ljava/lang/Object;J)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    and-int/2addr p1, v1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public final g(Lio/grpc/netty/shaded/io/netty/util/s;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->f(I)I

    move-result p1

    return p1
.end method

.method public final h(Lio/grpc/netty/shaded/io/netty/util/s;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->e(Lio/grpc/netty/shaded/io/netty/util/s;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->q(Lio/grpc/netty/shaded/io/netty/util/s;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->n(Lio/grpc/netty/shaded/io/netty/util/s;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->p(II)I

    move-result v1

    invoke-direct {p0, p1, v2, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->d(Lio/grpc/netty/shaded/io/netty/util/s;III)Z

    move-result v2

    :cond_2
    :goto_0
    return v2
.end method

.method public final i(Lio/grpc/netty/shaded/io/netty/util/s;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->e(Lio/grpc/netty/shaded/io/netty/util/s;)I

    move-result v0

    const-string v1, "decrement"

    .line 2
    invoke-static {p2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->p(II)I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 3
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->q(Lio/grpc/netty/shaded/io/netty/util/s;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->n(Lio/grpc/netty/shaded/io/netty/util/s;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->d(Lio/grpc/netty/shaded/io/netty/util/s;III)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final j(Lio/grpc/netty/shaded/io/netty/util/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public final k(Lio/grpc/netty/shaded/io/netty/util/s;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->m(Lio/grpc/netty/shaded/io/netty/util/s;II)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lio/grpc/netty/shaded/io/netty/util/s;I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    const-string v0, "increment"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->m(Lio/grpc/netty/shaded/io/netty/util/s;II)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lio/grpc/netty/shaded/io/netty/util/s;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    shl-int/lit8 v1, p2, 0x1

    :cond_0
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method protected abstract r()J
.end method

.method protected abstract s()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "TT;>;"
        }
    .end annotation
.end method
