.class public final Lio/reactivex/internal/operators/observable/j4;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/j4$a;,
        Lio/reactivex/internal/operators/observable/j4$c;,
        Lio/reactivex/internal/operators/observable/j4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:[Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/p<",
            "*>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "*>;>;"
        }
    .end annotation
.end field

.field final d:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "*>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/j4;->b:[Lio/reactivex/p;

    .line 7
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/j4;->c:Ljava/lang/Iterable;

    .line 8
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/j4;->d:Lvh/o;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/p;[Lio/reactivex/p;Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;[",
            "Lio/reactivex/p<",
            "*>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/j4;->b:[Lio/reactivex/p;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/j4;->c:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/j4;->d:Lvh/o;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j4;->b:[Lio/reactivex/p;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/p;

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/j4;->c:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/p;

    .line 3
    array-length v4, v0

    if-ne v2, v4, :cond_0

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v2

    .line 4
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/p;

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 5
    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    return-void

    .line 8
    :cond_1
    array-length v2, v0

    :cond_2
    if-nez v2, :cond_3

    .line 9
    new-instance v0, Lio/reactivex/internal/operators/observable/u1;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v2, Lio/reactivex/internal/operators/observable/j4$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/observable/j4$a;-><init>(Lio/reactivex/internal/operators/observable/j4;)V

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/u1;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/u1;->subscribeActual(Lio/reactivex/r;)V

    return-void

    .line 10
    :cond_3
    new-instance v1, Lio/reactivex/internal/operators/observable/j4$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/j4;->d:Lvh/o;

    invoke-direct {v1, p1, v3, v2}, Lio/reactivex/internal/operators/observable/j4$b;-><init>(Lio/reactivex/r;Lvh/o;I)V

    .line 11
    invoke-interface {p1, v1}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 12
    invoke-virtual {v1, v0, v2}, Lio/reactivex/internal/operators/observable/j4$b;->e([Lio/reactivex/p;I)V

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
