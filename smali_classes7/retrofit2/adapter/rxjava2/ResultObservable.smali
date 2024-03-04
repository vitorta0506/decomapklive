.class final Lretrofit2/adapter/rxjava2/ResultObservable;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "Lretrofit2/adapter/rxjava2/Result<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final upstream:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k<",
            "Lretrofit2/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/ResultObservable;->upstream:Lio/reactivex/k;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lretrofit2/adapter/rxjava2/Result<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/adapter/rxjava2/ResultObservable;->upstream:Lio/reactivex/k;

    new-instance v1, Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;-><init>(Lio/reactivex/r;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
