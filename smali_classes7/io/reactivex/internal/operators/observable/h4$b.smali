.class final Lio/reactivex/internal/operators/observable/h4$b;
.super Lio/reactivex/internal/observers/j;
.source "SourceFile"

# interfaces
.implements Lth/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/h4;
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
        "Lio/reactivex/internal/observers/j<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/k<",
        "TT;>;>;",
        "Lth/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final o:Ljava/lang/Object;


# instance fields
.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Lio/reactivex/s;

.field final j:I

.field k:Lth/b;

.field l:Lei/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lei/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field final m:Lio/reactivex/internal/disposables/SequentialDisposable;

.field volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/h4$b;->o:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/j;-><init>(Lio/reactivex/r;Lyh/f;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$b;->m:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/h4$b;->g:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/h4$b;->h:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/h4$b;->i:Lio/reactivex/s;

    .line 6
    iput p6, p0, Lio/reactivex/internal/operators/observable/h4$b;->j:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/j;->d:Z

    return-void
.end method

.method g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    check-cast v0, Lio/reactivex/internal/queue/a;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/h4$b;->l:Lei/d;

    const/4 v3, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/h4$b;->n:Z

    .line 5
    iget-boolean v5, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    .line 7
    sget-object v5, Lio/reactivex/internal/operators/observable/h4$b;->o:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/h4$b;->l:Lei/d;

    .line 9
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v2, v0}, Lei/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v2}, Lei/d;->onComplete()V

    .line 13
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$b;->m:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    return-void

    :cond_3
    if-nez v6, :cond_4

    neg-int v3, v3

    .line 14
    invoke-virtual {p0, v3}, Lio/reactivex/internal/observers/j;->w(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 15
    :cond_4
    sget-object v5, Lio/reactivex/internal/operators/observable/h4$b;->o:Ljava/lang/Object;

    if-ne v6, v5, :cond_6

    .line 16
    invoke-virtual {v2}, Lei/d;->onComplete()V

    if-nez v4, :cond_5

    .line 17
    iget v2, p0, Lio/reactivex/internal/operators/observable/h4$b;->j:I

    invoke-static {v2}, Lei/d;->e(I)Lei/d;

    move-result-object v2

    .line 18
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/h4$b;->l:Lei/d;

    .line 19
    invoke-interface {v1, v2}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_5
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/h4$b;->k:Lth/b;

    invoke-interface {v4}, Lth/b;->dispose()V

    goto :goto_0

    .line 21
    :cond_6
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lei/d;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/j;->d:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$b;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/observers/j;->f:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$b;->g()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/h4$b;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$b;->l:Lei/d;

    invoke-virtual {v0, p1}, Lei/d;->onNext(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/j;->w(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$b;->g()V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$b;->k:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$b;->k:Lth/b;

    .line 3
    iget p1, p0, Lio/reactivex/internal/operators/observable/h4$b;->j:I

    invoke-static {p1}, Lei/d;->e(I)Lei/d;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$b;->l:Lei/d;

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    .line 5
    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$b;->l:Lei/d;

    invoke-interface {p1, v0}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-boolean p1, p0, Lio/reactivex/internal/observers/j;->d:Z

    if-nez p1, :cond_0

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$b;->i:Lio/reactivex/s;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/h4$b;->g:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/h4$b;->h:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/s;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$b;->m:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lth/b;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/j;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/h4$b;->n:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    sget-object v1, Lio/reactivex/internal/operators/observable/h4$b;->o:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$b;->g()V

    :cond_1
    return-void
.end method
