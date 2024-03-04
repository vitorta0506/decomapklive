.class final Lio/reactivex/internal/operators/observable/t3$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/t3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xaebf798afbe73bfL


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/s$c;

.field e:Lth/b;

.field volatile f:Z

.field g:Z


# direct methods
.method constructor <init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/t3$a;->a:Lio/reactivex/r;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/t3$a;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/t3$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/t3$a;->d:Lio/reactivex/s$c;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->e:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->d:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->d:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->g:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->d:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->g:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/t3$a;->d:Lio/reactivex/s$c;

    invoke-interface {p1}, Lth/b;->dispose()V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->f:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lth/b;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lth/b;->dispose()V

    .line 6
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/t3$a;->d:Lio/reactivex/s$c;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->b:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/t3$a;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p0, v0, v1, v2}, Lio/reactivex/s$c;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    :cond_1
    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->e:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/t3$a;->e:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/t3$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/t3$a;->f:Z

    return-void
.end method
