.class final Lio/reactivex/internal/operators/observable/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/i;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lvh/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Lth/b;

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/r;Lvh/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lvh/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i$a;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/i$a;->b:Lvh/q;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i$a;->c:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i$a;->c:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i$a;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i$a;->a:Lio/reactivex/r;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i$a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/i$a;->d:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i$a;->a:Lio/reactivex/r;

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i$a;->b:Lvh/q;

    invoke-interface {v0, p1}, Lvh/q;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/i$a;->d:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i$a;->c:Lth/b;

    invoke-interface {p1}, Lth/b;->dispose()V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i$a;->a:Lio/reactivex/r;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i$a;->a:Lio/reactivex/r;

    invoke-interface {p1}, Lio/reactivex/r;->onComplete()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i$a;->c:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 9
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/i$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i$a;->c:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i$a;->c:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
