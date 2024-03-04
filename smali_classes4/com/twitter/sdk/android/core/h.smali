.class public Lcom/twitter/sdk/android/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/core/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/j;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lwe/a;

.field private final b:Lwe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lwe/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Lwe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lwe/a;Lwe/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/a;",
            "Lwe/d<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v5, Lwe/c;

    invoke-direct {v5, p1, p2, p3}, Lwe/c;-><init>(Lwe/a;Lwe/d;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/h;-><init>(Lwe/a;Lwe/d;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lwe/c;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lwe/a;Lwe/d;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lwe/c;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/a;",
            "Lwe/d<",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lwe/c<",
            "TT;>;>;",
            "Lwe/c<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/h;->h:Z

    .line 4
    iput-object p1, p0, Lcom/twitter/sdk/android/core/h;->a:Lwe/a;

    .line 5
    iput-object p2, p0, Lcom/twitter/sdk/android/core/h;->b:Lwe/d;

    .line 6
    iput-object p3, p0, Lcom/twitter/sdk/android/core/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    iput-object p4, p0, Lcom/twitter/sdk/android/core/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    iput-object p5, p0, Lcom/twitter/sdk/android/core/h;->e:Lwe/c;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    iput-object p6, p0, Lcom/twitter/sdk/android/core/h;->g:Ljava/lang/String;

    return-void
.end method

.method private f(JLcom/twitter/sdk/android/core/j;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwe/c;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lwe/c;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/h;->a:Lwe/a;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/h;->b:Lwe/d;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/h;->e(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lwe/c;-><init>(Lwe/a;Lwe/d;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/twitter/sdk/android/core/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {v0, p3}, Lwe/c;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/j;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/j;->b()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-eqz v3, :cond_1

    if-eqz p4, :cond_2

    .line 8
    :cond_1
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/twitter/sdk/android/core/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/twitter/sdk/android/core/h;->e:Lwe/c;

    invoke-virtual {p1, p3}, Lwe/c;->c(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->e:Lwe/c;

    invoke-virtual {v0}, Lwe/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/j;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/twitter/sdk/android/core/h;->f(JLcom/twitter/sdk/android/core/j;Z)V

    :cond_0
    return-void
.end method

.method private declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/h;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/h;->h()V

    .line 3
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/h;->k()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/h;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->a:Lwe/a;

    invoke-interface {v0}, Lwe/a;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/core/h;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/twitter/sdk/android/core/h;->b:Lwe/d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lwe/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/j;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/j;->b()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/twitter/sdk/android/core/h;->f(JLcom/twitter/sdk/android/core/j;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/h;->j()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/j;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/j;->b()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->e:Lwe/c;

    invoke-virtual {v0}, Lwe/c;->a()V

    .line 6
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwe/c;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lwe/c;->a()V

    :cond_1
    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/h;->j()V

    .line 2
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/j;->b()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/h;->f(JLcom/twitter/sdk/android/core/j;Z)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/h;->j()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/twitter/sdk/android/core/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/h;->j()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/j;

    return-object v0
.end method

.method e(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method g(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/h;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/h;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/h;->i()V

    :cond_0
    return-void
.end method
