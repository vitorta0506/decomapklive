.class public Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mWaterMark:Landroid/graphics/Bitmap;

.field private mWaterMarkRect:Lcom/tencent/ugc/TXVideoEditConstants$TXRect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->mWaterMark:Landroid/graphics/Bitmap;

    .line 3
    iput-object p2, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->mWaterMarkRect:Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    return-void
.end method


# virtual methods
.method public getWaterMark()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->mWaterMark:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmWaterMarkRect()Lcom/tencent/ugc/TXVideoEditConstants$TXRect;
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->mWaterMarkRect:Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->mWaterMark:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->mWaterMark:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    iput-object v1, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->mWaterMark:Landroid/graphics/Bitmap;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/tencent/ugc/videoprocessor/watermark/data/WaterMark;->mWaterMarkRect:Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    return-void
.end method
