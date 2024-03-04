.class public Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UGCTranscodeVideoEncodeParamsDecider"


# instance fields
.field private mEncodeBitrate:I

.field private mEncodeProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

.field private mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private final mExpectSize:Lcom/tencent/liteav/base/util/q;

.field private mFullIFrame:Z

.field private mGenerateSize:Lcom/tencent/liteav/base/util/q;

.field private mSourceType:Lcom/tencent/ugc/common/UGCConstants$SourceType;

.field private mVideoCompress:I

.field private mVideoMediaFormatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoResolution:Lcom/tencent/liteav/base/util/q;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mGenerateSize:Lcom/tencent/liteav/base/util/q;

    .line 4
    sget-object v0, Lcom/tencent/ugc/common/UGCConstants$SourceType;->VIDEO:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    iput-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mSourceType:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mFullIFrame:Z

    const/4 v1, 0x4

    .line 6
    iput v1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoCompress:I

    .line 7
    iput v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeBitrate:I

    .line 8
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 9
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-void
.end method

.method private adjustPictureOutSize(Lcom/tencent/liteav/base/util/q;Lcom/tencent/liteav/base/util/q;)Lcom/tencent/liteav/base/util/q;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-virtual {p2}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 2
    iget v0, p2, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-double v1, v0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p2, Lcom/tencent/liteav/base/util/q;->b:I

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 5
    iget v1, p2, Lcom/tencent/liteav/base/util/q;->b:I

    .line 6
    :goto_0
    new-instance v2, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v2}, Lcom/tencent/liteav/base/util/q;-><init>()V

    add-int/lit8 v0, v0, 0xf

    .line 7
    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    iput v0, v2, Lcom/tencent/liteav/base/util/q;->a:I

    add-int/lit8 v1, v1, 0xf

    .line 8
    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    iput v1, v2, Lcom/tencent/liteav/base/util/q;->b:I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "origin= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", expectSize= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", outSize= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private adjustVideoOutSize(Lcom/tencent/liteav/base/util/q;Lcom/tencent/liteav/base/util/q;)Lcom/tencent/liteav/base/util/q;
    .locals 5

    .line 1
    iget v0, p1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, p2, Lcom/tencent/liteav/base/util/q;->a:I

    if-gt v0, v1, :cond_0

    iget v2, p1, Lcom/tencent/liteav/base/util/q;->b:I

    iget v3, p2, Lcom/tencent/liteav/base/util/q;->b:I

    if-le v2, v3, :cond_1

    :cond_0
    iget v2, p2, Lcom/tencent/liteav/base/util/q;->b:I

    if-gt v0, v2, :cond_2

    iget v0, p1, Lcom/tencent/liteav/base/util/q;->b:I

    if-gt v0, v1, :cond_2

    .line 2
    :cond_1
    new-instance p2, Lcom/tencent/liteav/base/util/q;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/base/util/q;-><init>(Lcom/tencent/liteav/base/util/q;)V

    return-object p2

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/q;->c()D

    move-result-wide v0

    .line 4
    iget v2, p1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v3, p1, Lcom/tencent/liteav/base/util/q;->b:I

    if-lt v2, v3, :cond_3

    .line 5
    iget v2, p2, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-double v2, v2

    mul-double v2, v2, v0

    double-to-int v2, v2

    .line 6
    iget v3, p2, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 7
    :cond_3
    iget v2, p2, Lcom/tencent/liteav/base/util/q;->b:I

    int-to-double v2, v2

    mul-double v2, v2, v0

    double-to-int v2, v2

    .line 8
    iget v3, p2, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    int-to-double v3, v2

    div-double/2addr v3, v0

    double-to-int v0, v3

    add-int/lit8 v2, v2, 0xf

    .line 9
    div-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v0, v0, 0xf

    .line 10
    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    .line 11
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v1}, Lcom/tencent/liteav/base/util/q;-><init>()V

    .line 12
    iput v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    .line 13
    iput v0, v1, Lcom/tencent/liteav/base/util/q;->b:I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adjustOutSize origin: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", expectSize: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", outSize: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getDecidedGOP()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    const-string v2, "i-frame-interval"

    .line 3
    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getNumberFromMediaFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private getDecidedOutputSize()Lcom/tencent/liteav/base/util/q;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoResolution:Lcom/tencent/liteav/base/util/q;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/q;-><init>(Lcom/tencent/liteav/base/util/q;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getOutputSizeForMultipleSource(Ljava/util/List;)Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mGenerateSize:Lcom/tencent/liteav/base/util/q;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    invoke-direct {p0, v0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getOutputSizeForSingleSource(Landroid/media/MediaFormat;)Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mGenerateSize:Lcom/tencent/liteav/base/util/q;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    iput-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mGenerateSize:Lcom/tencent/liteav/base/util/q;

    .line 8
    :goto_0
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mGenerateSize:Lcom/tencent/liteav/base/util/q;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/q;-><init>(Lcom/tencent/liteav/base/util/q;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, v2, :cond_4

    .line 10
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/q;->a()V

    .line 11
    :cond_4
    iget v0, v1, Lcom/tencent/liteav/base/util/q;->a:I

    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/tencent/liteav/base/util/q;->a:I

    .line 12
    iget v0, v1, Lcom/tencent/liteav/base/util/q;->b:I

    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/tencent/liteav/base/util/q;->b:I

    return-object v1
.end method

.method private getDecidedVideoBitrate(Lcom/tencent/liteav/base/util/q;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mFullIFrame:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p1, Lcom/tencent/liteav/base/util/q;->a:I

    const/16 v1, 0x500

    if-ge v0, v1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/base/util/q;->b:I

    if-ge p1, v1, :cond_0

    const/16 p1, 0x5dc0

    return p1

    :cond_0
    const/16 p1, 0x3a98

    return p1

    .line 3
    :cond_1
    iget p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeBitrate:I

    if-eqz p1, :cond_2

    return p1

    :cond_2
    const/16 p1, 0x1388

    .line 4
    iget v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoCompress:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x2ee0

    goto :goto_0

    :cond_4
    const/16 p1, 0x2580

    goto :goto_0

    :cond_5
    const/16 p1, 0x1964

    goto :goto_0

    :cond_6
    const/16 p1, 0x960

    :goto_0
    return p1
.end method

.method private getDecidedVideoFPS()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    const/16 v1, 0x1e

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    const-string v2, "frame-rate"

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getNumberFromMediaFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    :cond_1
    return v1
.end method

.method private getNumberFromMediaFormat(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return p3

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getNumberFromMediaFormat integer ClassCastException: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    float-to-int p3, p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getNumberFromMediaFormat float ClassCastException: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p3
.end method

.method private getOutputSizeForMultipleSource(Ljava/util/List;)Lcom/tencent/liteav/base/util/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)",
            "Lcom/tencent/liteav/base/util/q;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getSizeFromMediaFormat(Landroid/media/MediaFormat;)Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/tencent/liteav/base/util/q;->b:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->a:I

    if-le v1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4
    :goto_0
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    iget-object v1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/q;-><init>(Lcom/tencent/liteav/base/util/q;)V

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/q;->a()V

    :cond_2
    return-object v0
.end method

.method private getOutputSizeForSingleSource(Landroid/media/MediaFormat;)Lcom/tencent/liteav/base/util/q;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/tencent/liteav/base/util/q;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getSizeFromMediaFormat(Landroid/media/MediaFormat;)Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    .line 3
    iget v0, p1, Lcom/tencent/liteav/base/util/q;->a:I

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/tencent/liteav/base/util/q;->b:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mSourceType:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    sget-object v1, Lcom/tencent/ugc/common/UGCConstants$SourceType;->VIDEO:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    invoke-direct {p0, p1, v0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->adjustVideoOutSize(Lcom/tencent/liteav/base/util/q;Lcom/tencent/liteav/base/util/q;)Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    invoke-direct {p0, p1, v0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->adjustPictureOutSize(Lcom/tencent/liteav/base/util/q;Lcom/tencent/liteav/base/util/q;)Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    :goto_0
    return-object p1

    .line 7
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "calculateGenerateSize origin: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getSizeFromMediaFormat(Landroid/media/MediaFormat;)Lcom/tencent/liteav/base/util/q;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/q;-><init>()V

    const-string/jumbo v1, "width"

    .line 2
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    const-string v1, "height"

    .line 3
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/base/util/q;->b:I

    .line 4
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    :try_start_0
    const-string v1, "rotation-degrees"

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "get KEY_ROTATION fail, "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_2

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/q;->a()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getDecidedEncodeParams()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    .line 3
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    iput-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    .line 5
    iput-boolean v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode:Z

    .line 6
    iget-object v1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 7
    invoke-direct {p0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getDecidedOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v1

    .line 8
    iget v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iput v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    .line 9
    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    iput v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    .line 10
    iget-boolean v1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mFullIFrame:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setFullIFrame(Z)V

    .line 11
    invoke-direct {p0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getDecidedGOP()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    .line 12
    invoke-direct {p0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getDecidedVideoFPS()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    .line 13
    iget-object v1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mGenerateSize:Lcom/tencent/liteav/base/util/q;

    invoke-direct {p0, v1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getDecidedVideoBitrate(Lcom/tencent/liteav/base/util/q;)I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getVideoEncodeParams: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setEncodeBitrate(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeBitrate:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVideoBitrate "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeBitrate:I

    return-void
.end method

.method public setEncodeOutputSize(Lcom/tencent/liteav/base/util/q;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoResolution:Lcom/tencent/liteav/base/util/q;

    return-void
.end method

.method public setEncodeProfile(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setEncodeProfile "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    return-void

    .line 4
    :cond_1
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    return-void
.end method

.method public setEncodeRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRenderRotation "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-void
.end method

.method public setFullIFrame(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mFullIFrame:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFullIFrame "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-boolean p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mFullIFrame:Z

    return-void
.end method

.method public setInputVideoMediaFormat(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoMediaFormatList:Ljava/util/List;

    return-void
.end method

.method public setOutputResolution(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoCompress:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mVideoCompress:I

    const/16 v0, 0x280

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    const/16 v1, 0x438

    iput v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    const/16 v1, 0x780

    .line 4
    iput v1, v0, Lcom/tencent/liteav/base/util/q;->b:I

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    const/16 v1, 0x2d0

    iput v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    const/16 v1, 0x500

    .line 6
    iput v1, v0, Lcom/tencent/liteav/base/util/q;->b:I

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    const/16 v1, 0x21c

    iput v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    const/16 v1, 0x3c0

    .line 8
    iput v1, v0, Lcom/tencent/liteav/base/util/q;->b:I

    goto :goto_0

    .line 9
    :cond_4
    iget-object v1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    const/16 v2, 0x1e0

    iput v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    .line 10
    iput v0, v1, Lcom/tencent/liteav/base/util/q;->b:I

    goto :goto_0

    .line 11
    :cond_5
    iget-object v1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    const/16 v2, 0x168

    iput v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    .line 12
    iput v0, v1, Lcom/tencent/liteav/base/util/q;->b:I

    .line 13
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVideoCompress "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expectSize = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mExpectSize:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSourceType(Lcom/tencent/ugc/common/UGCConstants$SourceType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mSourceType:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSourceType "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCTranscodeVideoEncodeParamsDecider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->mSourceType:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    return-void
.end method
