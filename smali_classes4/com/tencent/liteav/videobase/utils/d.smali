.class public final Lcom/tencent/liteav/videobase/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/d;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/d;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/d;->a:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/d;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
