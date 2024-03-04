.class public Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TailWaterMarkChain"


# instance fields
.field private mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mMarkAlphaLevel:F

    return v0
.end method

.method public getBlurLevel()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mBlurLevel:F

    return v0
.end method

.method public getTailWaterMark(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTailWaterMark:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TailWaterMarkChain"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    invoke-virtual {v0}, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->getStartTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    invoke-virtual {p1}, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float p1, v0

    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    .line 5
    invoke-virtual {v0}, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 7
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    iput p1, v0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mBlurLevel:F

    .line 9
    iput p1, v0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mMarkAlphaLevel:F

    return-object v0
.end method

.method public setTailWaterMark(Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTailWaterMark:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TailWaterMarkChain"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/watermark/TailWaterMarkChain;->mTailWaterMark:Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;

    return-void
.end method
