.class public final Lde/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lde/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lde/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lde/e;

.field private final d:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lde/f<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lde/f<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lde/a;Ljava/util/concurrent/ScheduledExecutorService;Lde/e;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/a<",
            "TT;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lde/e;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lde/d;->d:Ljava/util/LinkedHashSet;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lde/d;->e:Ljava/util/LinkedHashSet;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lde/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Lde/d$a;

    invoke-direct {v0, p0}, Lde/d$a;-><init>(Lde/d;)V

    iput-object v0, p0, Lde/d;->h:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lde/d;->a:Lde/a;

    .line 7
    iput-object p2, p0, Lde/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    iput p4, p0, Lde/d;->g:I

    .line 9
    iput-object p3, p0, Lde/d;->c:Lde/e;

    return-void
.end method

.method static synthetic a(Lde/d;)Lde/a;
    .locals 0

    iget-object p0, p0, Lde/d;->a:Lde/a;

    return-object p0
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lde/f<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/f;

    .line 3
    invoke-virtual {v1}, Lde/f;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic d(Lde/d;)Ljava/util/LinkedHashSet;
    .locals 0

    iget-object p0, p0, Lde/d;->d:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic g(Lde/d;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lde/d;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lde/d;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lde/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic i(Lde/d;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lde/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic j(Lde/d;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lde/d;->d:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lde/d;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p0, p0, Lde/d;->a:Lde/a;

    invoke-interface {p0, v0}, Lde/a;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic k(Lde/d;)I
    .locals 0

    iget p0, p0, Lde/d;->g:I

    return p0
.end method

.method static synthetic l(Lde/d;)Ljava/util/LinkedHashSet;
    .locals 0

    iget-object p0, p0, Lde/d;->e:Ljava/util/LinkedHashSet;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lde/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lde/d$b;

    invoke-direct {v1, p0}, Lde/d$b;-><init>(Lde/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lde/d;->c:Lde/e;

    invoke-virtual {v0, p0}, Lde/e;->a(Lde/d;)V

    return-void
.end method

.method final e()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lde/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lde/d;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lde/d;->d:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object v1, p0, Lde/d;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->clear()V

    .line 6
    iget-object v1, p0, Lde/d;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v1, p0, Lde/d;->a:Lde/a;

    invoke-static {v0}, Lde/d;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lde/d$d;

    invoke-direct {v3, p0, v0}, Lde/d$d;-><init>(Lde/d;Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Lde/a;->b(Ljava/util/List;Lde/a$a;)V

    return-void
.end method

.method final f()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lde/d;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final push(Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lde/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lde/d$c;

    invoke-direct {v1, p0, p1}, Lde/d$c;-><init>(Lde/d;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
