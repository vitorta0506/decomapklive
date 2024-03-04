.class final Lio/reactivex/internal/operators/observable/q3$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/q3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/r<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x78a53ec6852cfbbfL


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/observable/q3$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/q3$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q3$a$a;->a:Lio/reactivex/internal/operators/observable/q3$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q3$a$a;->a:Lio/reactivex/internal/operators/observable/q3$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/q3$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q3$a$a;->a:Lio/reactivex/internal/operators/observable/q3$a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/q3$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/q3$a$a;->a:Lio/reactivex/internal/operators/observable/q3$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/q3$a;->a()V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
