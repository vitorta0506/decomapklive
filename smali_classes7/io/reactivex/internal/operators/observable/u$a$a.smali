.class final Lio/reactivex/internal/operators/observable/u$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/r<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x245ca3bdfb16b82cL


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/observable/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/u$a<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/r;Lio/reactivex/internal/operators/observable/u$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TR;>;",
            "Lio/reactivex/internal/operators/observable/u$a<",
            "*TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/u$a$a;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/u$a$a;->b:Lio/reactivex/internal/operators/observable/u$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/u$a$a;->b:Lio/reactivex/internal/operators/observable/u$a;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/u$a;->i:Z

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/u$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/u$a$a;->b:Lio/reactivex/internal/operators/observable/u$a;

    .line 2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/u$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-boolean p1, v0, Lio/reactivex/internal/operators/observable/u$a;->f:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, v0, Lio/reactivex/internal/operators/observable/u$a;->h:Lth/b;

    invoke-interface {p1}, Lth/b;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Lio/reactivex/internal/operators/observable/u$a;->i:Z

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/u$a;->a()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/u$a$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
