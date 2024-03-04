.class public final Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field public annexb:Z

.field public baseFrameIndex:J

.field public baseGopIndex:J

.field public bitrate:I

.field public bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

.field public codecType:Lcom/tencent/liteav/videobase/common/CodecType;

.field public enableBFrame:Z

.field public encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

.field public fps:I

.field public fullIFrame:Z

.field public gop:I

.field public height:I

.field public isTranscodingMode:Z

.field public mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

.field public referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    .line 3
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    const/16 v1, 0x14

    .line 4
    iput v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    .line 6
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 9
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    .line 11
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    .line 12
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    .line 13
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    .line 14
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    .line 15
    sget-object v2, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 16
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode:Z

    .line 17
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    .line 20
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    const/16 v1, 0x14

    .line 21
    iput v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    const/4 v1, 0x3

    .line 22
    iput v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    .line 23
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 26
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    const-wide/16 v2, 0x0

    .line 27
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    .line 28
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    .line 29
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    .line 30
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    .line 31
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    .line 32
    sget-object v2, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 33
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode:Z

    .line 34
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    .line 36
    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    .line 37
    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    .line 38
    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    .line 39
    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    .line 40
    iget-boolean v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    .line 41
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 42
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    .line 43
    iget-wide v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    .line 44
    iget-wide v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    .line 45
    iget-boolean v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    .line 46
    iget-boolean v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    .line 47
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 48
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    .line 49
    iget-boolean v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode:Z

    .line 50
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    .line 52
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private checkFieldDiffCounts(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    const-class v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 6
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static createEncoderBitrateMode(I)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;->a(I)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    move-result-object p0

    return-object p0
.end method

.method public static createEncoderProfileType(I)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->a(I)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    move-result-object p0

    return-object p0
.end method

.method public static createEncoderVideoCodec(I)Lcom/tencent/liteav/videobase/common/CodecType;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/tencent/liteav/videobase/common/CodecType;->a(I)Lcom/tencent/liteav/videobase/common/CodecType;

    move-result-object p0

    return-object p0
.end method

.method public static createReferenceStrategy(I)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a(I)Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->checkFieldDiffCounts(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final getBaseFrameIndex()J
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    return-wide v0
.end method

.method public final getBaseGopIndex()J
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    return-wide v0
.end method

.method public final getBitrate()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    return v0
.end method

.method public final getBitrateMode()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    .line 2
    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;->mValue:I

    return v0
.end method

.method public final getCodecType()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 2
    iget v0, v0, Lcom/tencent/liteav/videobase/common/CodecType;->mValue:I

    return v0
.end method

.method public final getEncoderProfile()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 2
    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->mValue:I

    return v0
.end method

.method public final getFps()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    return v0
.end method

.method public final getGop()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    return v0
.end method

.method public final getHeight()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    return v0
.end method

.method public final getMediaCodecDeviceRelatedParams()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getReferenceStrategy()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    return v0
.end method

.method public final isAnnexb()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    return v0
.end method

.method public final isEnablesBframe()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    return v0
.end method

.method public final isEnablesRps()Z
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEnablesSvc()Z
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isFullIFrame()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    return v0
.end method

.method public final isTranscodingMode()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode:Z

    return v0
.end method

.method public final setAnnexb(Z)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    return-void
.end method

.method public final setBFrameEnabled(Z)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    return-void
.end method

.method public final setBaseFrameIndex(J)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    return-void
.end method

.method public final setBaseGopIndex(J)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    return-void
.end method

.method public final setBitrate(I)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    return-void
.end method

.method public final setBitrateMode(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    return-void
.end method

.method public final setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    return-void
.end method

.method public final setEncoderProfile(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    return-void
.end method

.method public final setFps(I)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    return-void
.end method

.method public final setFullIFrame(Z)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    return-void
.end method

.method public final setGop(I)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    return-void
.end method

.method public final setHeight(I)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    return-void
.end method

.method public final setMediaCodecDeviceRelatedParams(Lorg/json/JSONArray;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    return-void
.end method

.method public final setReferenceStrategy(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    return-void
.end method

.method public final setTranscodingModeEnabled(Z)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode:Z

    return-void
.end method

.method public final setWidth(I)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", annexb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encoderProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitrateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baseFrameIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", baseGopIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fullIFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableBFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", referenceStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTransCodingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mediaCodecDeviceRelatedParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
