.class final Lio/reactivex/internal/operators/observable/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "Ljava/lang/Object;",
        ">;",
        "Lth/b;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Lth/b;

.field c:J


# direct methods
.method constructor <init>(Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/z$a;->a:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/z$a;->b:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/z$a;->b:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/z$a;->a:Lio/reactivex/r;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/z$a;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/z$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/z$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/z$a;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/z$a;->c:J

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/z$a;->b:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/z$a;->b:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/z$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
