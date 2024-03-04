.class final Lio/reactivex/internal/operators/observable/w2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/w2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/w2$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/w2$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/w2$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w2$d;->a:Lio/reactivex/internal/operators/observable/w2$c;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w2$d;->a:Lio/reactivex/internal/operators/observable/w2$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/w2$c;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w2$d;->a:Lio/reactivex/internal/operators/observable/w2$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/w2$c;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w2$d;->a:Lio/reactivex/internal/operators/observable/w2$c;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/w2$c;->e()V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w2$d;->a:Lio/reactivex/internal/operators/observable/w2$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/w2$c;->f(Lth/b;)Z

    return-void
.end method
