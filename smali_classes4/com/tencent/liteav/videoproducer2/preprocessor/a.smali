.class public final Lcom/tencent/liteav/videoproducer2/preprocessor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor$a;


# instance fields
.field final a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field c:Lcom/tencent/liteav/videoproducer/producer/a;

.field d:F

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->d:F

    .line 3
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/videobase/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 4
    new-instance v1, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    .line 5
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/tencent/liteav/videobase/videobase/e;

    invoke-direct {v3}, Lcom/tencent/liteav/videobase/videobase/e;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;-><init>(Landroid/content/Context;ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    .line 6
    new-instance v2, Lcom/tencent/liteav/videoproducer/preprocessor/h;

    .line 7
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/h;-><init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    .line 8
    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->setBeautyManagerStatusListener(Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor$a;)V

    .line 9
    invoke-static {v0}, Lcom/tencent/liteav/beauty/a;->a(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->e:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 3
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getRenderSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v2

    .line 6
    iget v4, v2, Lcom/tencent/liteav/base/util/q;->a:I

    if-eqz v4, :cond_0

    iget v2, v2, Lcom/tencent/liteav/base/util/q;->b:I

    if-eqz v2, :cond_0

    .line 7
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-virtual {v5, v4, v2}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(II)V

    .line 8
    :cond_0
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isPreprocessorMirrorHorizontal()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    .line 9
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isPreprocessorMirrorVertical()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    .line 11
    iget v2, v2, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 12
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getPreprocessorRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v4

    .line 13
    iget v4, v4, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    add-int/2addr v2, v4

    .line 14
    rem-int/lit16 v2, v2, 0x168

    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 15
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    sget-object v4, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v2, v4, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    sget-object v4, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v2, v4, :cond_2

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->swapWidthHeight()V

    .line 18
    :cond_2
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getPreprocessorScaleType()Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    move-result-object v2

    .line 19
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;

    .line 21
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v13}, Lcom/tencent/liteav/videoproducer2/preprocessor/VideoPreprocessorListenerProxy;->getCustomProcessParams()Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;

    move-result-object v6

    .line 23
    iget-object v7, v6, Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;->frameRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getEncodeRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v8

    if-eq v7, v8, :cond_3

    .line 24
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getEncodeRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;->frameRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 25
    iget-object v7, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v13}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    .line 26
    new-instance v9, Lcom/tencent/liteav/videobase/videobase/a;

    iget v7, v6, Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;->width:I

    iget v8, v6, Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;->height:I

    iget-object v10, v6, Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;->frameRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-direct {v9, v7, v8, v10}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(IILcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 27
    iget-object v7, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, v6, Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;->bufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v11, v6, Lcom/tencent/liteav/videoproducer2/preprocessor/CustomProcessParams;->formatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    goto :goto_0

    .line 28
    :cond_4
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->a:Lcom/tencent/liteav/videoproducer/preprocessor/h;

    invoke-virtual {v3, p1, v2}, Lcom/tencent/liteav/videoproducer/preprocessor/h;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->E:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onBeautyStatsChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/preprocessor/a;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->F:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method
