.class final Lio/reactivex/internal/operators/observable/v3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/v3;
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
            "-",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lio/reactivex/s;

.field d:J

.field e:Lth/b;


# direct methods
.method constructor <init>(Lio/reactivex/r;Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ldi/b<",
            "TT;>;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v3$a;->a:Lio/reactivex/r;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/v3$a;->c:Lio/reactivex/s;

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/v3$a;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->e:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->e:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->a:Lio/reactivex/r;

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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->c:Lio/reactivex/s;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v3$a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/s;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/v3$a;->d:J

    .line 3
    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->d:J

    sub-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/v3$a;->a:Lio/reactivex/r;

    new-instance v3, Ldi/b;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/v3$a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, p1, v0, v1, v4}, Ldi/b;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v2, v3}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->e:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v3$a;->e:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/v3$a;->c:Lio/reactivex/s;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/reactivex/s;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/v3$a;->d:J

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/v3$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
