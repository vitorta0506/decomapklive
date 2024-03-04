.class final Lio/reactivex/internal/operators/observable/g4$a;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/g4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/b<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/g4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/g4$b<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/g4$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/g4$b<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/g4$a;->a:Lio/reactivex/internal/operators/observable/g4$b;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/g4$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/g4$a;->b:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/g4$a;->a:Lio/reactivex/internal/operators/observable/g4$b;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/g4$b;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/g4$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/g4$a;->b:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/g4$a;->a:Lio/reactivex/internal/operators/observable/g4$b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/g4$b;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/g4$a;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/g4$a;->b:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/observers/b;->dispose()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/g4$a;->a:Lio/reactivex/internal/operators/observable/g4$b;

    invoke-virtual {p1, p0}, Lio/reactivex/internal/operators/observable/g4$b;->g(Lio/reactivex/internal/operators/observable/g4$a;)V

    return-void
.end method
