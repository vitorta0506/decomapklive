.class final Lio/reactivex/internal/operators/observable/h$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/h;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/r<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10756d62aa142dccL


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/h$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/h$a;ILio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/h$a<",
            "TT;>;I",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h$b;->a:Lio/reactivex/internal/operators/observable/h$a;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/h$b;->b:I

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/h$b;->c:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->c:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->a:Lio/reactivex/internal/operators/observable/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/observable/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/h$b;->d:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->c:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->c:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->a:Lio/reactivex/internal/operators/observable/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/observable/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/h$b;->d:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->c:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    :goto_0
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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/h$b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->c:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->a:Lio/reactivex/internal/operators/observable/h$a;

    iget v1, p0, Lio/reactivex/internal/operators/observable/h$b;->b:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/h$a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/h$b;->d:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h$b;->c:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lth/b;

    invoke-interface {p1}, Lth/b;->dispose()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
