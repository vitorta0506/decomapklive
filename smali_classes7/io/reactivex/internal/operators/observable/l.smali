.class public final Lio/reactivex/internal/operators/observable/l;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/l$b;,
        Lio/reactivex/internal/operators/observable/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:I

.field final c:I

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput p2, p0, Lio/reactivex/internal/operators/observable/l;->b:I

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/observable/l;->c:I

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/l;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/observable/l;->c:I

    iget v1, p0, Lio/reactivex/internal/operators/observable/l;->b:I

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/l$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/l;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/l$a;-><init>(Lio/reactivex/r;ILjava/util/concurrent/Callable;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/l$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/l$b;

    iget v2, p0, Lio/reactivex/internal/operators/observable/l;->b:I

    iget v3, p0, Lio/reactivex/internal/operators/observable/l;->c:I

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/l;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/l$b;-><init>(Lio/reactivex/r;IILjava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :cond_1
    :goto_0
    return-void
.end method
