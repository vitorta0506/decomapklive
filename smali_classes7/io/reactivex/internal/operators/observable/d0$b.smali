.class final Lio/reactivex/internal/operators/observable/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;"
    }
.end annotation


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

.field f:Lth/b;

.field volatile g:J

.field h:Z


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d0$b;->a:Lio/reactivex/r;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/d0$b;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/d0$b;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/d0$b;->d:Lio/reactivex/s$c;

    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;Lio/reactivex/internal/operators/observable/d0$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lio/reactivex/internal/operators/observable/d0$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->g:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/d0$b;->a:Lio/reactivex/r;

    invoke-interface {p1, p3}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p4}, Lio/reactivex/internal/operators/observable/d0$a;->dispose()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->e:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->d:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->d:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->h:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->f:Lth/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lth/b;->dispose()V

    .line 5
    :cond_1
    check-cast v0, Lio/reactivex/internal/operators/observable/d0$a;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/d0$a;->run()V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->d:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->f:Lth/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lth/b;->dispose()V

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->h:Z

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/d0$b;->d:Lio/reactivex/s$c;

    invoke-interface {p1}, Lth/b;->dispose()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->g:J

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/d0$b;->f:Lth/b;

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lth/b;->dispose()V

    .line 6
    :cond_1
    new-instance v2, Lio/reactivex/internal/operators/observable/d0$a;

    invoke-direct {v2, p1, v0, v1, p0}, Lio/reactivex/internal/operators/observable/d0$a;-><init>(Ljava/lang/Object;JLio/reactivex/internal/operators/observable/d0$b;)V

    .line 7
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/d0$b;->f:Lth/b;

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/d0$b;->d:Lio/reactivex/s$c;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/d0$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Lio/reactivex/s$c;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    .line 9
    invoke-virtual {v2, p1}, Lio/reactivex/internal/operators/observable/d0$a;->b(Lth/b;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d0$b;->e:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d0$b;->e:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/d0$b;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
