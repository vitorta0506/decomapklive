.class public Lcom/tencent/ugc/UGCCombineProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private final mOutputPixelHeight:I

.field private final mOutputPixelWidth:I

.field private final mScaleRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;",
            ">;"
        }
    .end annotation
.end field

.field private final mScaleRendererList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/j;",
            ">;"
        }
    .end annotation
.end field

.field private final mUGCCombineProcessor:Lcom/tencent/ugc/UGCCombineFrameFilter;


# direct methods
.method public constructor <init>(IILcom/tencent/liteav/videobase/frame/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UGCCombineProcessor"

    .line 2
    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UGCCombineProcessor pixelWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pixelHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mOutputPixelWidth:I

    .line 5
    iput p2, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mOutputPixelHeight:I

    .line 6
    iput-object p3, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRendererList:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRectList:Ljava/util/List;

    .line 9
    new-instance p1, Lcom/tencent/ugc/UGCCombineFrameFilter;

    invoke-direct {p1, p3}, Lcom/tencent/ugc/UGCCombineFrameFilter;-><init>(Lcom/tencent/liteav/videobase/frame/e;)V

    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mUGCCombineProcessor:Lcom/tencent/ugc/UGCCombineFrameFilter;

    return-void
.end method

.method private Retain(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private preScale(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;I)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRendererList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRendererList:Ljava/util/List;

    new-instance v1, Lcom/tencent/liteav/videobase/frame/j;

    iget v2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    iget v3, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRectList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRendererList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/j;

    .line 5
    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRectList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    .line 6
    iget v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    iget v3, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    if-ne v2, v3, :cond_1

    iget v1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    iget v2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    if-eq v1, v2, :cond_2

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 8
    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    iget v1, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    iget v2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    .line 9
    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRendererList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRendererList:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    :cond_2
    iget-object p3, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v1, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    iget p2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    invoke-virtual {p3, v1, p2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p2

    .line 12
    sget-object p3, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v0, p1, p3, p2}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 13
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p3

    .line 14
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 15
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 16
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-object p3
.end method

.method private releaseFrameList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;

    .line 2
    iget-object v0, v0, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawInputFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public processFrame(Ljava/util/List;Ljava/util/List;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;",
            ">;)",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCCombineProcessor;->Retain(Ljava/util/List;)V

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 6
    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-lez v9, :cond_1

    .line 7
    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    .line 8
    :cond_1
    new-instance v7, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;

    invoke-direct {v7}, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;-><init>()V

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    goto :goto_1

    :cond_2
    new-instance v8, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    invoke-direct {v8}, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;-><init>()V

    :goto_1
    iput-object v8, v7, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    .line 10
    invoke-direct {p0, v6, v8, v5}, Lcom/tencent/ugc/UGCCombineProcessor;->preScale(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;I)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v6

    iput-object v6, v7, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawInputFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 11
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mUGCCombineProcessor:Lcom/tencent/ugc/UGCCombineFrameFilter;

    iget v5, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mOutputPixelWidth:I

    iget v6, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mOutputPixelHeight:I

    invoke-virtual {p2, v5, v6}, Lcom/tencent/ugc/UGCCombineFrameFilter;->setCanvasSize(II)V

    .line 13
    iget-object p2, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mUGCCombineProcessor:Lcom/tencent/ugc/UGCCombineFrameFilter;

    invoke-virtual {p2, v0}, Lcom/tencent/ugc/UGCCombineFrameFilter;->setCropRect(Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;)V

    .line 14
    iget-object p2, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mUGCCombineProcessor:Lcom/tencent/ugc/UGCCombineFrameFilter;

    invoke-virtual {p2, v1}, Lcom/tencent/ugc/UGCCombineFrameFilter;->combineFrame(Ljava/util/List;)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p2

    .line 15
    invoke-direct {p0, v1}, Lcom/tencent/ugc/UGCCombineProcessor;->releaseFrameList(Ljava/util/List;)V

    if-nez p2, :cond_4

    return-object v0

    .line 16
    :cond_4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 18
    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    return-object p1

    :cond_5
    :goto_2
    const-string p1, "UGCCombineProcessor"

    const-string p2, "frameList is empty"

    .line 19
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mUGCCombineProcessor:Lcom/tencent/ugc/UGCCombineFrameFilter;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCCombineFrameFilter;->release()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRendererList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRendererList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineProcessor;->mScaleRectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
