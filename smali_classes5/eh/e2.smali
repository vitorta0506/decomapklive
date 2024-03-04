.class final Leh/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/s2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/e2$c;,
        Leh/e2$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/e2$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Leh/e2;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Leh/e2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh/e2;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/e2$b;",
            ">;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Leh/e2;->a:Ljava/lang/ref/ReferenceQueue;

    const-string v0, "counters"

    .line 5
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Leh/e2;->b:Ljava/util/Map;

    return-void
.end method

.method static c()Leh/e2;
    .locals 1

    invoke-static {}, Leh/e2$c;->a()Leh/e2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Leh/e2;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Leh/e2;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/e2$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->enqueue()Z

    :cond_1
    if-nez v2, :cond_2

    .line 7
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 8
    new-instance v1, Leh/e2$b;

    iget-object v3, p0, Leh/e2;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3, p1, p2}, Leh/e2$b;-><init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/ref/ReferenceQueue;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-virtual {p0}, Leh/e2;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Leh/e2;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Leh/e2$b;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Leh/e2;->b:Ljava/util/Map;

    invoke-static {v0}, Leh/e2$b;->a(Leh/e2$b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3
    invoke-static {v0}, Leh/e2$b;->b(Leh/e2$b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Leh/e2$b;->b(Leh/e2$b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Leh/e2;->b:Ljava/util/Map;

    invoke-static {v0}, Leh/e2$b;->a(Leh/e2$b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method
