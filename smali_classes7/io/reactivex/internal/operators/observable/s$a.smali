.class final Lio/reactivex/internal/operators/observable/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/u<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lvh/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field d:Lth/b;

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/u;Ljava/lang/Object;Lvh/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-TU;>;TU;",
            "Lvh/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s$a;->a:Lio/reactivex/u;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/s$a;->b:Lvh/b;

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/s$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s$a;->d:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s$a;->d:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/s$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/s$a;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s$a;->a:Lio/reactivex/u;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/s$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/u;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/s$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/s$a;->e:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s$a;->a:Lio/reactivex/u;

    invoke-interface {v0, p1}, Lio/reactivex/u;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/s$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s$a;->b:Lvh/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/s$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lvh/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s$a;->d:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/s$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s$a;->d:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s$a;->d:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/s$a;->a:Lio/reactivex/u;

    invoke-interface {p1, p0}, Lio/reactivex/u;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
