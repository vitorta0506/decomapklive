.class final Lio/reactivex/internal/operators/observable/f4$a;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/f4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/f4$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/f4$c<",
            "TT;*TV;>;"
        }
    .end annotation
.end field

.field final b:Lei/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lei/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/f4$c;Lei/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/f4$c<",
            "TT;*TV;>;",
            "Lei/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/f4$a;->a:Lio/reactivex/internal/operators/observable/f4$c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/f4$a;->b:Lei/d;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/f4$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/f4$a;->c:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$a;->a:Lio/reactivex/internal/operators/observable/f4$c;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/f4$c;->g(Lio/reactivex/internal/operators/observable/f4$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/f4$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/f4$a;->c:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$a;->a:Lio/reactivex/internal/operators/observable/f4$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/f4$c;->j(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/observers/b;->dispose()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/f4$a;->onComplete()V

    return-void
.end method
