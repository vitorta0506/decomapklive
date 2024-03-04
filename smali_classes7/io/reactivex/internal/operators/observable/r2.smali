.class public final Lio/reactivex/internal/operators/observable/r2;
.super Lbi/a;
.source "SourceFile"

# interfaces
.implements Lwh/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/r2$g;,
        Lio/reactivex/internal/operators/observable/r2$e;,
        Lio/reactivex/internal/operators/observable/r2$k;,
        Lio/reactivex/internal/operators/observable/r2$l;,
        Lio/reactivex/internal/operators/observable/r2$i;,
        Lio/reactivex/internal/operators/observable/r2$c;,
        Lio/reactivex/internal/operators/observable/r2$o;,
        Lio/reactivex/internal/operators/observable/r2$m;,
        Lio/reactivex/internal/operators/observable/r2$n;,
        Lio/reactivex/internal/operators/observable/r2$a;,
        Lio/reactivex/internal/operators/observable/r2$f;,
        Lio/reactivex/internal/operators/observable/r2$p;,
        Lio/reactivex/internal/operators/observable/r2$h;,
        Lio/reactivex/internal/operators/observable/r2$d;,
        Lio/reactivex/internal/operators/observable/r2$j;,
        Lio/reactivex/internal/operators/observable/r2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbi/a<",
        "TT;>;",
        "Lwh/c;"
    }
.end annotation


# static fields
.field static final e:Lio/reactivex/internal/operators/observable/r2$b;


# instance fields
.field final a:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/r2$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/observable/r2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/r2$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/r2$o;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/r2$o;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/r2;->e:Lio/reactivex/internal/operators/observable/r2$b;

    return-void
.end method

.method private constructor <init>(Lio/reactivex/p;Lio/reactivex/p;Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/observable/r2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/p<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/r2$j<",
            "TT;>;>;",
            "Lio/reactivex/internal/operators/observable/r2$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lbi/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/r2;->d:Lio/reactivex/p;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/r2;->a:Lio/reactivex/p;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/r2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/r2;->c:Lio/reactivex/internal/operators/observable/r2$b;

    return-void
.end method

.method public static f(Lio/reactivex/p;I)Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT;>;I)",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/r2;->j(Lio/reactivex/p;)Lbi/a;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/r2$i;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/r2$i;-><init>(I)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/r2;->i(Lio/reactivex/p;Lio/reactivex/internal/operators/observable/r2$b;)Lbi/a;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lbi/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/r2;->h(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lbi/a;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lbi/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "I)",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lio/reactivex/internal/operators/observable/r2$l;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/r2$l;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-static {p0, v6}, Lio/reactivex/internal/operators/observable/r2;->i(Lio/reactivex/p;Lio/reactivex/internal/operators/observable/r2$b;)Lbi/a;

    move-result-object p0

    return-object p0
.end method

.method static i(Lio/reactivex/p;Lio/reactivex/internal/operators/observable/r2$b;)Lbi/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/internal/operators/observable/r2$b<",
            "TT;>;)",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/r2$k;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/observable/r2$k;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/observable/r2$b;)V

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/observable/r2;

    invoke-direct {v2, v1, p0, v0, p1}, Lio/reactivex/internal/operators/observable/r2;-><init>(Lio/reactivex/p;Lio/reactivex/p;Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/internal/operators/observable/r2$b;)V

    invoke-static {v2}, Lci/a;->k(Lbi/a;)Lbi/a;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lio/reactivex/p;)Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/operators/observable/r2;->e:Lio/reactivex/internal/operators/observable/r2$b;

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/r2;->i(Lio/reactivex/p;Lio/reactivex/internal/operators/observable/r2$b;)Lbi/a;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lbi/a<",
            "TU;>;>;",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TU;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/r2$e;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/r2$e;-><init>(Ljava/util/concurrent/Callable;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lbi/a;Lio/reactivex/s;)Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbi/a<",
            "TT;>;",
            "Lio/reactivex/s;",
            ")",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/r2$g;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/r2$g;-><init>(Lbi/a;Lio/reactivex/k;)V

    invoke-static {v0}, Lci/a;->k(Lbi/a;)Lbi/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Lth/b;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/observable/r2$j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lvh/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/r2$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/r2$j;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r2;->c:Lio/reactivex/internal/operators/observable/r2$b;

    invoke-interface {v1}, Lio/reactivex/internal/operators/observable/r2$b;->call()Lio/reactivex/internal/operators/observable/r2$h;

    move-result-object v1

    .line 4
    new-instance v2, Lio/reactivex/internal/operators/observable/r2$j;

    invoke-direct {v2, v1}, Lio/reactivex/internal/operators/observable/r2$j;-><init>(Lio/reactivex/internal/operators/observable/r2$h;)V

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 6
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/r2$j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/r2$j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Lvh/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/r2;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    .line 9
    iget-object v0, v0, Lio/reactivex/internal/operators/observable/r2$j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    :cond_5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {p1}, Lio/reactivex/internal/util/f;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2;->d:Lio/reactivex/p;

    invoke-interface {v0, p1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
