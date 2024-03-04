.class public final Lio/reactivex/internal/operators/observable/t2;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/t2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lvh/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:J


# direct methods
.method public constructor <init>(Lio/reactivex/k;JLvh/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;J",
            "Lvh/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/t2;->b:Lvh/q;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/t2;->c:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v5}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 2
    invoke-interface {p1, v5}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    new-instance v7, Lio/reactivex/internal/operators/observable/t2$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/t2;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/t2;->b:Lvh/q;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/t2$a;-><init>(Lio/reactivex/r;JLvh/q;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/p;)V

    .line 4
    invoke-virtual {v7}, Lio/reactivex/internal/operators/observable/t2$a;->a()V

    return-void
.end method
