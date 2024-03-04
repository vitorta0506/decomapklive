.class public final Lio/reactivex/internal/operators/observable/b0;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/b0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/n<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b0;->a:Lio/reactivex/n;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/b0$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/b0$a;-><init>(Lio/reactivex/r;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b0;->a:Lio/reactivex/n;

    invoke-interface {p1, v0}, Lio/reactivex/n;->a(Lio/reactivex/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/b0$a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
