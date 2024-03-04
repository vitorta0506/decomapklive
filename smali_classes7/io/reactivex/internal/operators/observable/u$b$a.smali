.class final Lio/reactivex/internal/operators/observable/u$b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/u$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/r<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6760725401800ed9L


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TU;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/observable/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/u$b<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/r;Lio/reactivex/internal/operators/observable/u$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TU;>;",
            "Lio/reactivex/internal/operators/observable/u$b<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/u$b$a;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/u$b$a;->b:Lio/reactivex/internal/operators/observable/u$b;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/u$b$a;->b:Lio/reactivex/internal/operators/observable/u$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/u$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/u$b$a;->b:Lio/reactivex/internal/operators/observable/u$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/u$b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/u$b$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/u$b$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
