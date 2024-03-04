.class public final Lcom/tencent/liteav/videobase/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/utils/h;


# instance fields
.field private final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    .line 3
    iput p1, p0, Lcom/tencent/liteav/videobase/utils/j;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/videobase/utils/j;->b:I

    if-lt v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "RingFrameQueue"

    const-string v2, "evictAll pixelFrame."

    .line 5
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    .line 11
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/j;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
