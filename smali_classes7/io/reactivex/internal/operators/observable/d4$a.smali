.class final Lio/reactivex/internal/operators/observable/d4$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/d4;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x67d4a190b6f57310L


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:I

.field d:J

.field e:Lth/b;

.field f:Lei/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lei/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile g:Z


# direct methods
.method constructor <init>(Lio/reactivex/r;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d4$a;->a:Lio/reactivex/r;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/d4$a;->b:J

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/d4$a;->c:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->g:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->g:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->f:Lei/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/d4$a;->f:Lei/d;

    .line 3
    invoke-virtual {v0}, Lei/d;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->f:Lei/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/d4$a;->f:Lei/d;

    .line 3
    invoke-virtual {v0, p1}, Lei/d;->onError(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->f:Lei/d;

    if-nez v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/d4$a;->g:Z

    if-nez v1, :cond_0

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->c:I

    invoke-static {v0, p0}, Lei/d;->f(ILjava/lang/Runnable;)Lei/d;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->f:Lei/d;

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/d4$a;->a:Lio/reactivex/r;

    invoke-interface {v1, v0}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lei/d;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/d4$a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/d4$a;->d:J

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/d4$a;->b:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/d4$a;->d:J

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d4$a;->f:Lei/d;

    .line 10
    invoke-virtual {v0}, Lei/d;->onComplete()V

    .line 11
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/d4$a;->g:Z

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/d4$a;->e:Lth/b;

    invoke-interface {p1}, Lth/b;->dispose()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->e:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/d4$a;->e:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/d4$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/d4$a;->e:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    :cond_0
    return-void
.end method
