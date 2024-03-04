.class public Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;
.super Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;
.source "SourceFile"


# instance fields
.field public mBlurLevel:F

.field private mDuration:I

.field public mMarkAlphaLevel:F

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;-><init>(Landroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)V

    .line 2
    iput-wide p3, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mStartTime:J

    .line 3
    iput p5, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mDuration:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mBlurLevel:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mMarkAlphaLevel:F

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mDuration:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/TailWaterMark;->mStartTime:J

    return-wide v0
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->release()V

    return-void
.end method
