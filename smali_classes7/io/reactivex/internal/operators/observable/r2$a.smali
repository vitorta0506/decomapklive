.class abstract Lio/reactivex/internal/operators/observable/r2$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/observable/r2$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/internal/operators/observable/r2$f;",
        ">;",
        "Lio/reactivex/internal/operators/observable/r2$h<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field a:Lio/reactivex/internal/operators/observable/r2$f;

.field b:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/r2$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/r2$f;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/r2$a;->a:Lio/reactivex/internal/operators/observable/r2$f;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Lio/reactivex/internal/operators/observable/r2$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2$a;->a:Lio/reactivex/internal/operators/observable/r2$f;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/r2$a;->a:Lio/reactivex/internal/operators/observable/r2$f;

    .line 3
    iget p1, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    return-void
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method c()Lio/reactivex/internal/operators/observable/r2$f;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/r2$f;

    return-object v0
.end method

.method public final complete()V
    .locals 2

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/r2$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/r2$f;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/r2$f;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/r2$a;->a(Lio/reactivex/internal/operators/observable/r2$f;)V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/r2$a;->l()V

    return-void
.end method

.method public final d(Lio/reactivex/internal/operators/observable/r2$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/r2$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/r2$d;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/r2$f;

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/r2$a;->c()Lio/reactivex/internal/operators/observable/r2$f;

    move-result-object v1

    .line 4
    iput-object v1, p1, Lio/reactivex/internal/operators/observable/r2$d;->c:Ljava/lang/Object;

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/r2$d;->isDisposed()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 6
    iput-object v3, p1, Lio/reactivex/internal/operators/observable/r2$d;->c:Ljava/lang/Object;

    return-void

    .line 7
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/r2$f;

    if-eqz v2, :cond_5

    .line 8
    iget-object v1, v2, Lio/reactivex/internal/operators/observable/r2$f;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/r2$a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget-object v4, p1, Lio/reactivex/internal/operators/observable/r2$d;->b:Lio/reactivex/r;

    invoke-static {v1, v4}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/r;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iput-object v3, p1, Lio/reactivex/internal/operators/observable/r2$d;->c:Ljava/lang/Object;

    return-void

    :cond_4
    move-object v1, v2

    goto :goto_0

    .line 11
    :cond_5
    iput-object v1, p1, Lio/reactivex/internal/operators/observable/r2$d;->c:Ljava/lang/Object;

    neg-int v0, v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    return-void
.end method

.method e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/r2$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/r2$f;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/r2$f;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/r2$a;->a(Lio/reactivex/internal/operators/observable/r2$f;)V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/r2$a;->l()V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/r2$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/r2$f;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/r2$f;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/r2$a;->a(Lio/reactivex/internal/operators/observable/r2$f;)V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/r2$a;->k()V

    return-void
.end method

.method final h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/r2$f;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/r2$f;

    .line 3
    iget v1, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/r2$a;->i(Lio/reactivex/internal/operators/observable/r2$f;)V

    return-void
.end method

.method final i(Lio/reactivex/internal/operators/observable/r2$f;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/r2$f;

    .line 2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/r2$f;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/observable/r2$f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/observable/r2$f;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method abstract k()V
.end method

.method l()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/r2$a;->j()V

    return-void
.end method
