.class final Lio/reactivex/internal/operators/observable/i1$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/r<",
        "Ljava/lang/Object;",
        ">;",
        "Lth/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1a24ec53e2780a15L


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/i1$b;

.field final b:Z

.field final c:I


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/i1$b;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i1$c;->a:Lio/reactivex/internal/operators/observable/i1$b;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/observable/i1$c;->b:Z

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/observable/i1$c;->c:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lth/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lth/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i1$c;->a:Lio/reactivex/internal/operators/observable/i1$b;

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/i1$c;->b:Z

    invoke-interface {v0, v1, p0}, Lio/reactivex/internal/operators/observable/i1$b;->c(ZLio/reactivex/internal/operators/observable/i1$c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i1$c;->a:Lio/reactivex/internal/operators/observable/i1$b;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/observable/i1$b;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i1$c;->a:Lio/reactivex/internal/operators/observable/i1$b;

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/i1$c;->b:Z

    invoke-interface {p1, v0, p0}, Lio/reactivex/internal/operators/observable/i1$b;->c(ZLio/reactivex/internal/operators/observable/i1$c;)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
