.class public abstract Lio/reactivex/internal/observers/j;
.super Lio/reactivex/internal/observers/l;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lio/reactivex/internal/util/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/l;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lio/reactivex/internal/util/h<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected final b:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected final c:Lyh/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyh/f<",
            "TU;>;"
        }
    .end annotation
.end field

.field protected volatile d:Z

.field protected volatile e:Z

.field protected f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/reactivex/r;Lyh/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TV;>;",
            "Lyh/f<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/observers/l;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/observers/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/observers/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected final d(Ljava/lang/Object;ZLth/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lth/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/observers/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/observers/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/j;->v(Lio/reactivex/r;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/j;->w(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_0
    invoke-interface {v1, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/k;->c(Lyh/f;Lio/reactivex/r;ZLth/b;Lio/reactivex/internal/util/h;)V

    return-void
.end method

.method protected final f(Ljava/lang/Object;ZLth/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lth/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/observers/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/observers/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Lyh/g;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/j;->v(Lio/reactivex/r;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 6
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/j;->w(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_0
    invoke-interface {v1, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/k;->c(Lyh/f;Lio/reactivex/r;ZLth/b;Lio/reactivex/internal/util/h;)V

    return-void
.end method

.method public final u()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/j;->f:Ljava/lang/Throwable;

    return-object v0
.end method

.method public v(Lio/reactivex/r;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TV;>;TU;)V"
        }
    .end annotation

    return-void
.end method

.method public final w(I)I
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/j;->d:Z

    return v0
.end method
