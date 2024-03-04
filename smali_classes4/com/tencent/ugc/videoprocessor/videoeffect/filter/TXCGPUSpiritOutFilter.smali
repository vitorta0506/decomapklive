.class public Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;
.super Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;
    }
.end annotation


# static fields
.field private static final DURATION_SPIRITOUT_LV1:I = 0xe6

.field private static final DURATION_SPIRITOUT_LV10:I = 0x230

.field private static final DURATION_SPIRITOUT_LV2:I = 0x112

.field private static final DURATION_SPIRITOUT_LV3:I = 0x13e

.field private static final DURATION_SPIRITOUT_LV4:I = 0x16a

.field private static final DURATION_SPIRITOUT_LV5:I = 0x196

.field private static final DURATION_SPIRITOUT_LV6:I = 0x1c2

.field private static final DURATION_SPIRITOUT_LV7:I = 0x1ee

.field private static final DURATION_SPIRITOUT_LV8:I = 0x21a

.field private static final DURATION_SPIRITOUT_LV9:I = 0x246

.field private static final DURATION_SPIRITOUT_LVMAX:I = 0x460

.field private static final DURATION_SPIRITOUT_LVMIN:I = 0x78

.field private static final TAG:Ljava/lang/String; = "TXCGPUSpiritOutFilter"


# instance fields
.field private mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

.field private mTextureHeight:I

.field private mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

.field private mTextureWidth:I

.field protected mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWidth:I

    .line 6
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureHeight:I

    return-void
.end method


# virtual methods
.method public onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->runPendingOnDrawTasks()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x3f75c28f    # 0.96f

    .line 4
    iget v0, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    invoke-virtual {v1, v2, v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->setZoomLevel(FI)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    iget-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    iget v1, v1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->alpahLevel:F

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->setAlphaLevel(F)V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWidth:I

    iget v2, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 8
    iget-object v2, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    .line 9
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v3

    iget v4, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWidth:I

    iget v5, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;->setTextureWatermark(IIIFFF)V

    .line 11
    iget-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    iget-object v2, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    iget v2, v2, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->alpahLevel:F

    invoke-virtual {v1, v2}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;->setAlpha(F)V

    .line 12
    iget-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 13
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    invoke-direct {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 9
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;->setAlpha(F)V

    .line 10
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/beauty/b/n;->enableWatermark(Z)V

    :cond_1
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 2
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWidth:I

    .line 3
    iput p2, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureHeight:I

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/beauty/b/n;->onOutputSizeChanged(II)V

    :cond_1
    return-void
.end method

.method public onUninit()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->onUninit()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 4
    iput-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mZoomInOutFilter:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 7
    iput-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mTextureWaterMarkFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    :cond_1
    return-void
.end method

.method public setNextFrameTimestamp(J)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->setNextFrameTimestamp(J)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    invoke-direct {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    .line 4
    iput v1, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->fringeNumber:I

    const v2, 0x3e99999a    # 0.3f

    .line 5
    iput v2, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->alpahLevel:F

    .line 6
    :cond_0
    iget-wide v2, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    sub-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v2, 0x78

    const/4 v0, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    .line 7
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    iput v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_1
    const-wide/16 v2, 0xe6

    cmp-long v4, p1, v2

    if-gez v4, :cond_2

    .line 8
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_2
    const-wide/16 v1, 0x112

    cmp-long v3, p1, v1

    if-gez v3, :cond_3

    .line 9
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/4 p2, 0x2

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_3
    const-wide/16 v1, 0x13e

    cmp-long v3, p1, v1

    if-gez v3, :cond_4

    .line 10
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/4 p2, 0x3

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_4
    const-wide/16 v1, 0x16a

    cmp-long v3, p1, v1

    if-gez v3, :cond_5

    .line 11
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/4 p2, 0x4

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_5
    const-wide/16 v1, 0x196

    cmp-long v3, p1, v1

    if-gez v3, :cond_6

    .line 12
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/4 p2, 0x5

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_6
    const-wide/16 v1, 0x1c2

    cmp-long v3, p1, v1

    if-gez v3, :cond_7

    .line 13
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/4 p2, 0x6

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_7
    const-wide/16 v1, 0x1ee

    cmp-long v3, p1, v1

    if-gez v3, :cond_8

    .line 14
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/4 p2, 0x7

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_8
    const-wide/16 v1, 0x21a

    cmp-long v3, p1, v1

    if-gez v3, :cond_9

    .line 15
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/16 p2, 0x8

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_9
    const-wide/16 v1, 0x246

    cmp-long v3, p1, v1

    if-gez v3, :cond_a

    .line 16
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    const/16 p2, 0x9

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_a
    const-wide/16 v1, 0x460

    cmp-long v3, p1, v1

    if-gez v3, :cond_b

    .line 17
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;->mSpritParams:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;

    iput v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter$SpiritOutEffectParam;->zoomOutLevel:I

    return-void

    :cond_b
    const-wide/16 p1, -0x1

    .line 18
    iput-wide p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    return-void
.end method
