.class final Lio/reactivex/internal/operators/maybe/b$a;
.super Lio/reactivex/internal/observers/DeferredScalarDisposable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/b;
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
        "Lio/reactivex/internal/observers/DeferredScalarDisposable<",
        "TT;>;",
        "Lio/reactivex/h<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6984808a6f073b2aL


# instance fields
.field a:Lth/b;


# direct methods
.method constructor <init>(Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/r;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->a:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->complete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/b$a;->a:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/b$a;->a:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->downstream:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->complete(Ljava/lang/Object;)V

    return-void
.end method
