.class Lcom/google/common/cache/k$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/k$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/k$b0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:Lcom/google/common/cache/k$b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/k0<",
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/base/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/cache/k$n;-><init>(Lcom/google/common/cache/k$b0;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/k$b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/k0;->V()Lcom/google/common/util/concurrent/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k$n;->b:Lcom/google/common/util/concurrent/k0;

    .line 4
    invoke-static {}, Lcom/google/common/base/u;->c()Lcom/google/common/base/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k$n;->c:Lcom/google/common/base/u;

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/common/cache/k;->K()Lcom/google/common/cache/k$b0;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/k$n;->a:Lcom/google/common/cache/k$b0;

    return-void
.end method

.method private h(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/util/concurrent/y;->c(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/d0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$n;->k(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/common/cache/k;->K()Lcom/google/common/cache/k$b0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$n;->a:Lcom/google/common/cache/k$b0;

    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$n;->a:Lcom/google/common/cache/k$b0;

    invoke-interface {v0}, Lcom/google/common/cache/k$b0;->c()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/q;)Lcom/google/common/cache/k$b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$n;->b:Lcom/google/common/util/concurrent/k0;

    invoke-static {v0}, Lcom/google/common/util/concurrent/n0;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k$n;->c:Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$n;->a:Lcom/google/common/cache/k$b0;

    invoke-interface {v0}, Lcom/google/common/cache/k$b0;->e()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_1
    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$n;->k(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$n;->l(Ljava/lang/Throwable;)Z

    .line 6
    throw p1
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k$n;->c:Lcom/google/common/base/u;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/u;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$n;->a:Lcom/google/common/cache/k$b0;

    invoke-interface {v0}, Lcom/google/common/cache/k$b0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/common/cache/k$b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$n;->a:Lcom/google/common/cache/k$b0;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$n;->a:Lcom/google/common/cache/k$b0;

    invoke-interface {v0}, Lcom/google/common/cache/k$b0;->isActive()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$n;->c:Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    .line 2
    iget-object v0, p0, Lcom/google/common/cache/k$n;->a:Lcom/google/common/cache/k$b0;

    invoke-interface {v0}, Lcom/google/common/cache/k$b0;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$n;->k(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/common/cache/k$n;->b:Lcom/google/common/util/concurrent/k0;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/y;->d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/d0;

    move-result-object p1

    :goto_0
    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/d0;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/common/util/concurrent/y;->d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/d0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance p2, Lcom/google/common/cache/k$n$a;

    invoke-direct {p2, p0}, Lcom/google/common/cache/k$n$a;-><init>(Lcom/google/common/cache/k$n;)V

    .line 8
    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 9
    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/y;->e(Lcom/google/common/util/concurrent/d0;Lcom/google/common/base/h;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$n;->l(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/common/cache/k$n;->b:Lcom/google/common/util/concurrent/k0;

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/common/cache/k$n;->h(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/d0;

    move-result-object p2

    .line 11
    :goto_1
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return-object p2
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$n;->b:Lcom/google/common/util/concurrent/k0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/k0;->R(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$n;->b:Lcom/google/common/util/concurrent/k0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/k0;->S(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
