.class final Lio/reactivex/internal/operators/flowable/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lil/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/b;
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
        "Lil/c;"
    }
.end annotation


# instance fields
.field final a:Lil/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lil/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lth/b;


# direct methods
.method constructor <init>(Lil/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lil/b;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->b:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lil/b;

    invoke-interface {v0}, Lil/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lil/b;

    invoke-interface {v0, p1}, Lil/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lil/b;

    invoke-interface {v0, p1}, Lil/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->b:Lth/b;

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lil/b;

    invoke-interface {p1, p0}, Lil/b;->onSubscribe(Lil/c;)V

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
