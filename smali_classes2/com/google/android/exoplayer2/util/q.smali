.class public final Lcom/google/android/exoplayer2/util/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/q$c;,
        Lcom/google/android/exoplayer2/util/q$b;,
        Lcom/google/android/exoplayer2/util/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/d;

.field private final b:Lcom/google/android/exoplayer2/util/n;

.field private final c:Lcom/google/android/exoplayer2/util/q$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/q$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/q$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/q$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/util/q$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/q;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/q$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/q$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/q$c<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/util/q$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/util/q;->a:Lcom/google/android/exoplayer2/util/d;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/util/q;->c:Lcom/google/android/exoplayer2/util/q$b;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q;->e:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q;->f:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/o;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/util/o;-><init>(Lcom/google/android/exoplayer2/util/q;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplayer2/util/d;->d(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/n;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/q;->b:Lcom/google/android/exoplayer2/util/n;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/q$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/q;->h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/q$a;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/util/q;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/q;->g(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private g(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/q$c;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/q;->c:Lcom/google/android/exoplayer2/util/q$b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/q$c;->b(Lcom/google/android/exoplayer2/util/q$b;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->b:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/q$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/q$c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/q$c;->a(ILcom/google/android/exoplayer2/util/q$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/q;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/google/android/exoplayer2/util/q$c;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/q$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/q$b;)Lcom/google/android/exoplayer2/util/q;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/util/q$b<",
            "TT;>;)",
            "Lcom/google/android/exoplayer2/util/q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/util/q;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/q;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/q$b;)V

    return-object v0
.end method

.method public e(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/q$b;)Lcom/google/android/exoplayer2/util/q;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/q$b<",
            "TT;>;)",
            "Lcom/google/android/exoplayer2/util/q<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/q;->d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/q$b;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->b:Lcom/google/android/exoplayer2/util/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->b:Lcom/google/android/exoplayer2/util/n;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(I)Lcom/google/android/exoplayer2/util/n$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/n;->b(Lcom/google/android/exoplayer2/util/n$a;)Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/q;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/q;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/util/q$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/q$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/q;->f:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/util/p;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/util/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/q$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/q$c;

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/q;->c:Lcom/google/android/exoplayer2/util/q$b;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/q$c;->c(Lcom/google/android/exoplayer2/util/q$b;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/q;->g:Z

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/q$c;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/q$c;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/q;->c:Lcom/google/android/exoplayer2/util/q$b;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/q$c;->c(Lcom/google/android/exoplayer2/util/q$b;)V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/util/q$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/q$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/q;->i(ILcom/google/android/exoplayer2/util/q$a;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/q;->f()V

    return-void
.end method
