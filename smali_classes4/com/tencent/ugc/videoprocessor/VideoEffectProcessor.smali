.class public Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEffectProcessor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentEffect:Lcom/tencent/liteav/videobase/a/b;

.field private mCurrentEffectType:I

.field private final mMotionFilterConfig:Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

.field private mReverse:Z

.field private mTotalDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mReverse:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffectType:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mTotalDuration:J

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mMotionFilterConfig:Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

    return-void
.end method

.method private createEffect(I)Lcom/tencent/liteav/videobase/a/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p1, Lcom/tencent/liteav/videobase/a/b;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/a/b;-><init>()V

    return-object p1

    .line 2
    :pswitch_0
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUIllusionFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUIllusionFilter;-><init>()V

    return-object p1

    .line 3
    :pswitch_1
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUMirrorFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUMirrorFilter;-><init>()V

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULightingFilter;

    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULightingFilter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 5
    :pswitch_3
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;-><init>()V

    return-object p1

    .line 6
    :pswitch_4
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUPhontomFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUPhontomFilter;-><init>()V

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostShadowFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostShadowFilter;-><init>()V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;-><init>()V

    return-object p1

    .line 9
    :pswitch_7
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;-><init>()V

    return-object p1

    .line 10
    :pswitch_8
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUDarkFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUDarkFilter;-><init>()V

    return-object p1

    .line 11
    :pswitch_9
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;-><init>()V

    return-object p1

    .line 12
    :pswitch_a
    new-instance p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;

    invoke-direct {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSpiritOutFilter;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private destroyCurrentEffect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffect:Lcom/tencent/liteav/videobase/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffect:Lcom/tencent/liteav/videobase/a/b;

    :cond_0
    return-void
.end method

.method private getCurrentMotion(J)Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mMotionFilterConfig:Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

    invoke-virtual {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;->getMotionList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;

    .line 5
    invoke-direct {p0, v3, p1, p2}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->getMotionPts(Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mMotionFilterConfig:Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

    invoke-virtual {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;->getCurrentMotion()Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;

    move-result-object p1

    .line 7
    iget-wide v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->endTime:J

    const-wide/16 v3, -0x1

    cmp-long p2, v0, v3

    if-nez p2, :cond_3

    move-object v2, p1

    :cond_3
    return-object v2
.end method

.method private getMotionPts(Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;J)J
    .locals 9

    .line 1
    iget-wide v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-wide v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->endTime:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 3
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 4
    iget-wide v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->startTime:J

    iget-wide v6, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->endTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v6, p2, v0

    if-ltz v6, :cond_1

    cmp-long v0, p2, v4

    if-lez v0, :cond_2

    :cond_1
    return-wide v2

    .line 5
    :cond_2
    iget-wide v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->startTime:J

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 6
    iget-wide v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->startTime:J

    add-long/2addr v0, p2

    return-wide v0
.end method

.method private getVideoPts(J)J
    .locals 6

    .line 1
    iget-wide v4, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mTotalDuration:J

    const-wide/16 v0, -0x1

    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    return-wide p1

    :cond_0
    sub-long v0, v4, p1

    const-wide/16 v2, 0x0

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/base/util/g;->a(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private isInMotionTime(Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;J)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->getMotionPts(Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public deleteAllEffect()V
    .locals 2

    const-string v0, "VideoEffectProcessor"

    const-string v1, "==== deleteAllEffect ===="

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mMotionFilterConfig:Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

    invoke-virtual {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;->clear()V

    return-void
.end method

.method public deleteLastEffect()V
    .locals 2

    const-string v0, "VideoEffectProcessor"

    const-string v1, "==== deleteLastEffect ===="

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mMotionFilterConfig:Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

    invoke-virtual {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;->deleteLastMotionEffect()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->destroyCurrentEffect()V

    return-void
.end method

.method public getCurrentMotionType(J)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->getVideoPts(J)J

    move-result-wide p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->getCurrentMotion(J)Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget p1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->type:I

    return p1
.end method

.method public processFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/tencent/liteav/videobase/frame/e;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->getVideoPts(J)J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->getCurrentMotion(J)Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->isInMotionTime(Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget v3, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffectType:I

    iget v4, v2, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->type:I

    if-eq v3, v4, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->destroyCurrentEffect()V

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffect:Lcom/tencent/liteav/videobase/a/b;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 8
    iget v3, v2, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->type:I

    iput v3, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffectType:I

    .line 9
    invoke-direct {p0, v3}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->createEffect(I)Lcom/tencent/liteav/videobase/a/b;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffect:Lcom/tencent/liteav/videobase/a/b;

    .line 10
    invoke-virtual {v3, p4}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 11
    :goto_0
    iget-object v5, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffect:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 12
    iget-object v5, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffect:Lcom/tencent/liteav/videobase/a/b;

    instance-of v6, v5, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;

    if-eqz v6, :cond_4

    .line 13
    check-cast v5, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;

    if-eqz v3, :cond_3

    .line 14
    iget-wide v0, v2, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->startTime:J

    invoke-virtual {v5, v0, v1}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->setNextFrameTimestamp(J)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->getMotionPts(Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;J)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->setNextFrameTimestamp(J)V

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v1

    invoke-virtual {p4, v0, v1}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p4

    .line 17
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v1

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 18
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mCurrentEffect:Lcom/tencent/liteav/videobase/a/b;

    .line 19
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v1

    .line 20
    invoke-virtual {v0, v1, p4, p2, p3}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 21
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->getCurrentContext()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 23
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-object p2

    .line 24
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->destroyCurrentEffect()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setReverse(ZJ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mReverse:Z

    if-nez p1, :cond_0

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mTotalDuration:J

    return-void

    .line 3
    :cond_0
    iput-wide p2, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mTotalDuration:J

    return-void
.end method

.method public startEffect(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startEffect: type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEffectProcessor"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;

    invoke-direct {v0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;-><init>(I)V

    .line 3
    iput-wide p2, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->startTime:J

    .line 4
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mMotionFilterConfig:Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;->addMotion(Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;)V

    return-void
.end method

.method public stopEffect(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopEffect type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", endTime: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoEffectProcessor"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->mMotionFilterConfig:Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;

    invoke-virtual {p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/data/MotionFilterConfig;->getCurrentMotion()Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iput-wide p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/data/Motion;->endTime:J

    :cond_0
    return-void
.end method
