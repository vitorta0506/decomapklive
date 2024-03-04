.class public abstract Lcom/tencent/liteav/videobase/frame/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RefCounted"

.field private static final sThrottler:Lcom/tencent/liteav/base/b/a;


# instance fields
.field private mLastUsedTimestamp:J

.field private final mRecycler:Lcom/tencent/liteav/videobase/frame/g;

.field private final mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStackTrace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/liteav/base/b/a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    sput-object v0, Lcom/tencent/liteav/videobase/frame/k;->sThrottler:Lcom/tencent/liteav/base/b/a;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mLastUsedTimestamp:J

    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/k;->mRecycler:Lcom/tencent/liteav/videobase/frame/g;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mRecycler:Lcom/tencent/liteav/videobase/frame/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/tencent/liteav/videobase/frame/k;->sThrottler:Lcom/tencent/liteav/base/b/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/liteav/videobase/frame/k;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/liteav/videobase/frame/k;->mStackTrace:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "RefCounted"

    const-string v3, "Object\'s reference count(%d) isn\'t zero when finalize.\n retainTrack:%s"

    .line 5
    invoke-static {v0, v2, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getLastUsedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mLastUsedTimestamp:J

    return-wide v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mRecycler:Lcom/tencent/liteav/videobase/frame/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/tencent/liteav/videobase/frame/g;->a(Lcom/tencent/liteav/videobase/frame/k;)V

    :cond_0
    return-void
.end method

.method public retain()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mStackTrace:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/k;->mRefCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method public updateLastUsedTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/liteav/videobase/frame/k;->mLastUsedTimestamp:J

    return-void
.end method
