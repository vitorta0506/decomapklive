.class final Lio/reactivex/internal/operators/observable/w0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/w0$a;
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
        "Lio/reactivex/b;",
        "Lth/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77710b9f43210614L


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/observable/w0$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/w0$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w0$a$a;->a:Lio/reactivex/internal/operators/observable/w0$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

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
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w0$a$a;->a:Lio/reactivex/internal/operators/observable/w0$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/w0$a;->b(Lio/reactivex/internal/operators/observable/w0$a$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w0$a$a;->a:Lio/reactivex/internal/operators/observable/w0$a;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/observable/w0$a;->c(Lio/reactivex/internal/operators/observable/w0$a$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
