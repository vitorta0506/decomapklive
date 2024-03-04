.class final Lio/reactivex/internal/operators/observable/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field c:Lth/b;


# direct methods
.method constructor <init>(Lio/reactivex/r;Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TR;>;",
            "Lvh/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/a1$a;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/a1$a;->b:Lvh/o;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 2
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->b:Lvh/o;

    invoke-interface {v0, p1}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->a:Lio/reactivex/r;

    .line 4
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 5
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The iterator returned a null value"

    invoke-static {v1, v2}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-interface {v0, v1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 9
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/a1$a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 10
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 12
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/a1$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    .line 13
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 15
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/a1$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/a1$a;->c:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a1$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
