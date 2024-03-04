.class public Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;
.super Lcom/tencent/ugc/videoprocessor/watermark/PasterBase;
.source "SourceFile"


# instance fields
.field private mNormalizedList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;",
            ">;"
        }
    .end annotation
.end field

.field private mPasterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/videoprocessor/watermark/PasterBase;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mNormalizedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private clearPasterList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->pasterImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->pasterImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->pasterImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method private construct(Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;-><init>()V

    .line 2
    iput-object p2, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->frame:Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    .line 3
    iget-object p2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->pasterImage:Landroid/graphics/Bitmap;

    iput-object p2, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->pasterImage:Landroid/graphics/Bitmap;

    .line 4
    iget-wide v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->startTime:J

    iput-wide v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->startTime:J

    .line 5
    iget-wide p1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->endTime:J

    iput-wide p1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->endTime:J

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/ugc/videoprocessor/watermark/PasterBase;->clear()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mNormalizedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->clearPasterList(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mPasterList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->clearPasterList(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mPasterList:Ljava/util/List;

    return-void
.end method

.method public getPasterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mNormalizedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public normalized(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mPasterList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mPasterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->frame:Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    .line 4
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/tencent/ugc/videoprocessor/watermark/PasterBase;->calculateRect(IIILcom/tencent/ugc/TXVideoEditConstants$TXRect;)Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->construct(Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mNormalizedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setPasterList(Ljava/util/List;Lcom/tencent/liteav/base/util/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;",
            ">;",
            "Lcom/tencent/liteav/base/util/q;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterBase;->mRenderSize:Lcom/tencent/liteav/base/util/q;

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mPasterList:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->mNormalizedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1}, Lcom/tencent/ugc/videoprocessor/watermark/PasterFilterChain;->clearPasterList(Ljava/util/List;)V

    return-void
.end method
