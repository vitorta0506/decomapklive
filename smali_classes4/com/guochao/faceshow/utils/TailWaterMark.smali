.class public Lcom/guochao/faceshow/utils/TailWaterMark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;
    }
.end annotation


# static fields
.field public static final PERCENT_NULL:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrWaterMarkPath:Ljava/lang/String;

.field private mDownLoadPercentShow:Z

.field private mDownLoadRequest:Lcom/guochao/faceshow/aaspring/base/utils/a;

.field private mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

.field private mWaterMarkProcessListener:Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mDownLoadPercentShow:Z

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mContext:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/tencent/ugc/TXVideoEditer;

    invoke-direct {v0, p1}, Lcom/tencent/ugc/TXVideoEditer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mWaterMarkProcessListener:Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/utils/TailWaterMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/guochao/faceshow/utils/TailWaterMark;->doDownLoadWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/utils/TailWaterMark;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mDownLoadPercentShow:Z

    return p0
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/utils/TailWaterMark;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->scanCameraFile(Ljava/lang/String;)V

    return-void
.end method

.method private checkVideoWaterMark(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p1}, Lcom/guochao/faceshow/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private doDownLoadWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, p3}, Lcom/tencent/ugc/TXVideoEditer;->setVideoPath(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p6, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    move v4, p5

    move v5, p6

    goto :goto_3

    .line 2
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/ugc/TXVideoInfoReader;->getInstance()Lcom/tencent/ugc/TXVideoInfoReader;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/tencent/ugc/TXVideoInfoReader;->getVideoFileInfo(Ljava/lang/String;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object p3

    const/4 p5, 0x0

    if-nez p3, :cond_3

    const/4 p6, 0x0

    goto :goto_1

    .line 3
    :cond_3
    iget p6, p3, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->width:I

    :goto_1
    if-nez p3, :cond_4

    const/4 p3, 0x0

    goto :goto_2

    .line 4
    :cond_4
    iget p3, p3, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->height:I

    :goto_2
    move v5, p3

    move v4, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v6, p7

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/utils/TailWaterMark;->tailWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private downLoadVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 13

    move-object v9, p0

    .line 1
    iget-object v0, v9, Lcom/guochao/faceshow/utils/TailWaterMark;->mWaterMarkProcessListener:Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkProgress(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v12, Lcom/guochao/faceshow/utils/TailWaterMark$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/guochao/faceshow/utils/TailWaterMark$1;-><init>(Lcom/guochao/faceshow/utils/TailWaterMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    move-object v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v11, p2, v1, v12}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->a(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object v0

    iput-object v0, v9, Lcom/guochao/faceshow/utils/TailWaterMark;->mDownLoadRequest:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method private static drawTextToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Paint;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 7
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p3, p3

    int-to-float p4, p4

    .line 8
    invoke-virtual {v0, p1, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method private drawTextToBottom(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance p6, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p6, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p4, p4

    .line 4
    invoke-static {p1, p4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u00b7"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p6, p4, v1, v0, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p4, p1

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/high16 p5, 0x41700000    # 15.0f

    invoke-static {p5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p5

    sub-int/2addr p1, p5

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 10
    :goto_1
    invoke-static {p2, p3, p6, p4, p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->drawTextToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Paint;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private makeWaterMarkVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    move-object v9, p0

    move-object v4, p2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/TailWaterMark;->cancelProcess()V

    .line 2
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/utils/TailWaterMark;->checkVideoWaterMark(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v9, Lcom/guochao/faceshow/utils/TailWaterMark;->mWaterMarkProcessListener:Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v2, p1

    invoke-interface {v0, p1, v1, p2}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkFinish(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v2, p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/guochao/faceshow/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 7
    iget-object v0, v9, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, v3}, Lcom/tencent/ugc/TXVideoEditer;->setVideoPath(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iput-boolean v1, v9, Lcom/guochao/faceshow/utils/TailWaterMark;->mDownLoadPercentShow:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p4

    .line 9
    invoke-direct/range {v0 .. v8}, Lcom/guochao/faceshow/utils/TailWaterMark;->downLoadVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, v9, Lcom/guochao/faceshow/utils/TailWaterMark;->mDownLoadPercentShow:Z

    .line 11
    iget-object v1, v9, Lcom/guochao/faceshow/utils/TailWaterMark;->mWaterMarkProcessListener:Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkProgress(I)V

    :cond_3
    if-eqz p7, :cond_5

    if-nez p6, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v5, p6

    move/from16 v6, p7

    goto :goto_3

    .line 13
    :cond_5
    :goto_0
    invoke-static {}, Lcom/tencent/ugc/TXVideoInfoReader;->getInstance()Lcom/tencent/ugc/TXVideoInfoReader;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/ugc/TXVideoInfoReader;->getVideoFileInfo(Ljava/lang/String;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    .line 14
    :cond_6
    iget v3, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->width:I

    :goto_1
    if-nez v1, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    iget v0, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->height:I

    :goto_2
    move v6, v0

    move v5, v3

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, v5

    move v5, v6

    move-object v6, p4

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/utils/TailWaterMark;->tailWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void

    .line 17
    :cond_8
    iput-boolean v1, v9, Lcom/guochao/faceshow/utils/TailWaterMark;->mDownLoadPercentShow:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p4

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/guochao/faceshow/utils/TailWaterMark;->downLoadVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private scanCameraFile(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private tailWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1
    iput-object v9, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mCurrWaterMarkPath:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;-><init>()V

    move/from16 v0, p4

    mul-int/lit16 v1, v0, 0x2d0

    .line 3
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int v10, v1, v2

    move/from16 v1, p5

    mul-int/lit16 v2, v1, 0x2d0

    .line 4
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int v11, v2, v0

    .line 5
    iget-object v0, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    new-instance v1, Lcom/guochao/faceshow/utils/TailWaterMark$2;

    move-object/from16 v2, p6

    invoke-direct {v1, v7, v9, v2, v8}, Lcom/guochao/faceshow/utils/TailWaterMark$2;-><init>(Lcom/guochao/faceshow/utils/TailWaterMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setVideoGenerateListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V

    .line 6
    iget-object v0, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v12, v0

    .line 7
    iget-object v0, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v13, v0

    .line 8
    iget-object v0, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0109

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 9
    iget-object v1, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v0, v3

    const-string v3, "ID:%s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mContext:Landroid/content/Context;

    const v4, 0x7f0603ce

    .line 10
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v0, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mContext:Landroid/content/Context;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v0, v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    const/16 v4, 0x12

    move-object/from16 v0, p0

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/utils/TailWaterMark;->drawTextToBottom(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 13
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v2, v1

    .line 14
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 15
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v20}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    invoke-direct {v1}, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;-><init>()V

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float v3, v10

    div-float/2addr v2, v3

    iput v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->width:F

    if-eqz v11, :cond_3

    const/16 v2, 0x64

    if-ne v11, v2, :cond_0

    if-ne v10, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    if-le v10, v11, :cond_1

    .line 18
    sget-object v4, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/2addr v10, v11

    int-to-float v4, v10

    div-float/2addr v4, v2

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    sub-float/2addr v4, v12

    div-float/2addr v4, v3

    iput v4, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->x:F

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, v11, v2

    int-to-float v2, v2

    sub-float/2addr v2, v13

    int-to-float v3, v11

    div-float/2addr v2, v3

    iput v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->y:F

    goto :goto_1

    .line 21
    :cond_1
    sget-object v4, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v10, v4

    int-to-float v4, v4

    sub-float/2addr v4, v12

    div-float/2addr v4, v3

    iput v4, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->x:F

    add-int/2addr v10, v11

    int-to-float v3, v10

    div-float/2addr v3, v2

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    sub-float/2addr v3, v13

    int-to-float v2, v11

    div-float/2addr v3, v2

    iput v3, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->y:F

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v10, v2

    int-to-float v2, v10

    sub-float/2addr v2, v12

    div-float/2addr v2, v3

    iput v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->x:F

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, v11, v2

    int-to-float v2, v2

    sub-float/2addr v2, v13

    int-to-float v3, v11

    div-float/2addr v2, v3

    iput v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->y:F

    goto :goto_1

    :cond_3
    :goto_0
    const v2, 0x3f19999a    # 0.6f

    .line 26
    iput v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->x:F

    const v2, 0x3f59999a    # 0.85f

    .line 27
    iput v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->y:F

    .line 28
    :goto_1
    iget-object v2, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v9}, Lcom/tencent/ugc/TXVideoEditer;->generateVideo(ILjava/lang/String;)V

    .line 29
    iget-object v2, v7, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setWaterMark(Landroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)V

    return-void
.end method


# virtual methods
.method public cancelProcess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mDownLoadRequest:Lcom/guochao/faceshow/aaspring/base/utils/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/utils/a;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mCurrWaterMarkPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mCurrWaterMarkPath:Ljava/lang/String;

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->release()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setVideoGenerateListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mTxVideoEditor:Lcom/tencent/ugc/TXVideoEditer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mDownLoadRequest:Lcom/guochao/faceshow/aaspring/base/utils/a;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/utils/a;->cancel()V

    :cond_1
    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mCurrWaterMarkPath:Ljava/lang/String;

    return-void
.end method

.method public makeWaterMarkVideoToDCMI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string/jumbo v1, "water_.mp4"

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p4

    const-string/jumbo v0, "userId"

    invoke-static {p4, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    move-object v6, p4

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    move v8, p6

    .line 6
    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/utils/TailWaterMark;->makeWaterMarkVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public makeWaterMarkVideoToFaceShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "water_.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video"

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/utils/TailWaterMark;->checkVideoWaterMark(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mWaterMarkProcessListener:Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    if-eqz v1, :cond_0

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v2, v0}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkFinish(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_2
    move-object v5, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    move v7, p6

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/guochao/faceshow/utils/TailWaterMark;->makeWaterMarkVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public setWaterMarkProcessListener(Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark;->mWaterMarkProcessListener:Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    return-void
.end method
