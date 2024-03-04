.class public abstract Lcom/tencent/liteav/videobase/frame/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videobase/frame/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/liteav/videobase/frame/k;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/liteav/videobase/frame/a$a;",
            "Ljava/util/Deque<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private final e:Lcom/tencent/liteav/base/b/a;

.field private final f:Lcom/tencent/liteav/videobase/frame/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/liteav/videobase/frame/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/liteav/videobase/frame/a;->a:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/a;->d:Z

    .line 4
    new-instance v0, Lcom/tencent/liteav/base/b/a;

    sget-wide v1, Lcom/tencent/liteav/videobase/frame/a;->a:J

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->e:Lcom/tencent/liteav/base/b/a;

    .line 5
    new-instance v0, Lcom/tencent/liteav/videobase/frame/b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videobase/frame/b;-><init>(Lcom/tencent/liteav/videobase/frame/a;)V

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->f:Lcom/tencent/liteav/videobase/frame/g;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videobase/frame/a;Lcom/tencent/liteav/videobase/frame/k;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/liteav/videobase/frame/a;->d:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/frame/a;->a(Lcom/tencent/liteav/videobase/frame/k;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/frame/a;->b(Lcom/tencent/liteav/videobase/frame/k;)Lcom/tencent/liteav/videobase/frame/a$a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videobase/frame/a;->b(Lcom/tencent/liteav/videobase/frame/a$a;)Ljava/util/Deque;

    move-result-object v1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/videobase/frame/k;->updateLastUsedTimestamp(J)V

    .line 7
    invoke-interface {v1, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/a;->c()V

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private b(Lcom/tencent/liteav/videobase/frame/a$a;)Ljava/util/Deque;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/a$a;",
            ")",
            "Ljava/util/Deque<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private c()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->e:Lcom/tencent/liteav/base/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    monitor-enter v3

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Deque;

    .line 6
    :goto_0
    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-interface {v5}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/liteav/videobase/frame/k;

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/k;->getLastUsedTimestamp()J

    move-result-wide v7

    sub-long v7, v0, v7

    sget-wide v9, Lcom/tencent/liteav/videobase/frame/a;->a:J

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    .line 9
    :cond_2
    invoke-interface {v5}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 10
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/k;

    .line 13
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videobase/frame/a;->a(Lcom/tencent/liteav/videobase/frame/k;)V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/tencent/liteav/videobase/frame/a$a;)Lcom/tencent/liteav/videobase/frame/k;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/a$a;",
            ")TT;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videobase/frame/a;->b(Lcom/tencent/liteav/videobase/frame/a$a;)Ljava/util/Deque;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/k;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/frame/a;->c()V

    if-nez v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/a;->f:Lcom/tencent/liteav/videobase/frame/g;

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/frame/a;->a(Lcom/tencent/liteav/videobase/frame/g;Lcom/tencent/liteav/videobase/frame/a$a;)Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v1

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/k;->retain()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const-string p1, "FramePool"

    const-string v2, "invalid reference count for %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 19
    invoke-static {p1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract a(Lcom/tencent/liteav/videobase/frame/g;Lcom/tencent/liteav/videobase/frame/a$a;)Lcom/tencent/liteav/videobase/frame/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/g<",
            "TT;>;",
            "Lcom/tencent/liteav/videobase/frame/a$a;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()V
    .locals 4

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Deque;

    .line 24
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/a;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/k;

    .line 28
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videobase/frame/a;->a(Lcom/tencent/liteav/videobase/frame/k;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract a(Lcom/tencent/liteav/videobase/frame/k;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract b(Lcom/tencent/liteav/videobase/frame/k;)Lcom/tencent/liteav/videobase/frame/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/tencent/liteav/videobase/frame/a$a;"
        }
    .end annotation
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/a;->d:Z

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/a;->a()V

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/liteav/videobase/frame/a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "FramePool"

    const-string v2, "%s must call destroy() before finalize()!\n%s"

    .line 4
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
