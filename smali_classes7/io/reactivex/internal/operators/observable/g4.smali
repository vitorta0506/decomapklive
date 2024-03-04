.class public final Lio/reactivex/internal/operators/observable/g4;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/g4$a;,
        Lio/reactivex/internal/operators/observable/g4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/k<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method public constructor <init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "TB;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/g4;->b:Ljava/util/concurrent/Callable;

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/observable/g4;->c:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/g4$b;

    iget v1, p0, Lio/reactivex/internal/operators/observable/g4;->c:I

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/g4;->b:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/g4$b;-><init>(Lio/reactivex/r;ILjava/util/concurrent/Callable;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
