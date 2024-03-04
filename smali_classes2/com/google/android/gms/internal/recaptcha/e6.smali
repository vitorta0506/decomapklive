.class public final Lcom/google/android/gms/internal/recaptcha/e6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/b6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/b6<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/recaptcha/d6<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/internal/recaptcha/zd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zd<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v1, -0x80000000

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/recaptcha/e6;->i(II)J

    move-result-wide v1

    .line 2
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/ud;->c(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->e:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zd;->S()Lcom/google/android/gms/internal/recaptcha/zd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->f:Lcom/google/android/gms/internal/recaptcha/zd;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/b6;

    .line 7
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/recaptcha/b6;-><init>(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->a:Lcom/google/android/gms/internal/recaptcha/b6;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/recaptcha/e6;)Lcom/google/android/gms/internal/recaptcha/b6;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->a:Lcom/google/android/gms/internal/recaptcha/b6;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/recaptcha/e6;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/recaptcha/e6;)Z
    .locals 8

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    long-to-int v4, v3

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3

    const v3, -0x7fffffff

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 2
    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/recaptcha/e6;->b:Ljava/util/concurrent/atomic/AtomicLong;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/recaptcha/e6;->i(II)J

    move-result-wide v6

    .line 3
    invoke-virtual {v5, v0, v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Refcount is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static i(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private final j(I)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    if-le v1, p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dd;->d()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/d6;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/recaptcha/d6;-><init>(I)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/d6;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/d6;->S(Lcom/google/android/gms/internal/recaptcha/d6;)I

    move-result v3

    if-gt v3, p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/dd;->d()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/e6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    ushr-long v1, v3, v2

    long-to-int v2, v1

    if-le v2, p1, :cond_4

    const/4 p1, 0x1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->cancel(Z)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->a:Lcom/google/android/gms/internal/recaptcha/b6;

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/b6;->b(Lcom/google/android/gms/internal/recaptcha/b6;)Lcom/google/android/gms/internal/recaptcha/cc;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->a:Lcom/google/android/gms/internal/recaptcha/b6;

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/b6;->c(Lcom/google/android/gms/internal/recaptcha/b6;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz p1, :cond_6

    if-nez v1, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/y6;->b(Lcom/google/android/gms/internal/recaptcha/cc;)Lcom/google/android/gms/internal/recaptcha/cc;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/recaptcha/dd;->i(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/d6;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    goto :goto_2

    .line 12
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->f:Lcom/google/android/gms/internal/recaptcha/zd;

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/d6;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    :goto_2
    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->f:Lcom/google/android/gms/internal/recaptcha/zd;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/cb;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v3, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/e6;->b:Ljava/util/concurrent/atomic/AtomicLong;

    long-to-int v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/recaptcha/e6;->i(II)J

    move-result-wide v4

    .line 3
    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zd;->S()Lcom/google/android/gms/internal/recaptcha/zd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/nd;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/x5;

    .line 5
    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/recaptcha/x5;-><init>(Lcom/google/android/gms/internal/recaptcha/e6;I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/y6;->b(Lcom/google/android/gms/internal/recaptcha/cc;)Lcom/google/android/gms/internal/recaptcha/cc;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/recaptcha/dd;->i(Lcom/google/android/gms/internal/recaptcha/cc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/recaptcha/y5;

    .line 7
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/recaptcha/y5;-><init>(Lcom/google/android/gms/internal/recaptcha/e6;I)V

    const-class v4, Ljava/lang/Throwable;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/recaptcha/e6;->e:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {v1, v4, v2, v5}, Lcom/google/android/gms/internal/recaptcha/dd;->c(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v1

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zd;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/c6;

    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/gms/internal/recaptcha/c6;-><init>(Lcom/google/android/gms/internal/recaptcha/e6;ILcom/google/android/gms/internal/recaptcha/a6;)V

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/z5;

    .line 12
    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/recaptcha/z5;-><init>(Lcom/google/android/gms/internal/recaptcha/e6;Lcom/google/android/gms/internal/recaptcha/zd;Lcom/google/android/gms/internal/recaptcha/c6;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/recaptcha/cb;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->f:Lcom/google/android/gms/internal/recaptcha/zd;

    return-object v0
.end method

.method public final synthetic c(I)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/e6;->j(I)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(ILjava/lang/Throwable;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/e6;->j(I)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Lcom/google/android/gms/internal/recaptcha/zd;Lcom/google/android/gms/internal/recaptcha/c6;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->f:Lcom/google/android/gms/internal/recaptcha/zd;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zd;->H(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/e6;->f:Lcom/google/android/gms/internal/recaptcha/zd;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/recaptcha/c6;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    return-void

    .line 4
    :catchall_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/recaptcha/c6;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e6;->f:Lcom/google/android/gms/internal/recaptcha/zd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/cb;->isDone()Z

    move-result v0

    return v0
.end method
