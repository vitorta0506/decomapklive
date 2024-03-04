.class public final Lcom/tencent/liteav/videoproducer/encoder/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field private final c:Landroid/media/MediaCodec;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private final f:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->b:Z

    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->c:Landroid/media/MediaCodec;

    .line 5
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->d:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 7
    iput-object p4, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->f:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    return-void
.end method

.method private a(II)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 10
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->d:Ljava/lang/String;

    .line 12
    invoke-static {v0, p1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/media/MediaFormat;)Landroid/util/Pair;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "MediaFormatBuilder"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "profile"

    .line 5
    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "get profile fail."

    .line 6
    invoke-static {v0, v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    const-string v4, "level"

    .line 7
    invoke-virtual {p0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "get level fail."

    .line 8
    invoke-static {v0, p0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :goto_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/u;->f:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isHardwareEncoderBitrateModeCBRSupported()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a()Landroid/media/MediaFormat;
    .locals 20

    move-object/from16 v1, p0

    const-string/jumbo v2, "value"

    const-string v3, "key"

    .line 14
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v4, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    const-string v5, "bitrate"

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    iget v7, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    if-eqz v7, :cond_2

    iget v8, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    if-eqz v8, :cond_2

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->d:Ljava/lang/String;

    invoke-static {v0, v4, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v4, v4, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    mul-int/lit16 v4, v4, 0x400

    invoke-virtual {v0, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 17
    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v4, v4, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    const-string v7, "frame-rate"

    invoke-virtual {v0, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v4, 0x7f000789

    const-string v7, "color-format"

    .line 18
    invoke-virtual {v0, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v4, v4, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    const-string v7, "i-frame-interval"

    invoke-virtual {v0, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object v4, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_3

    return-object v6

    .line 20
    :cond_3
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_6

    .line 21
    invoke-static {v8}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v9

    .line 22
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 23
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    .line 24
    array-length v11, v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_5

    aget-object v13, v10, v12

    .line 25
    iget-object v14, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->d:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 26
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->d:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    move-object v0, v6

    :goto_4
    const/16 v8, 0x17

    const/16 v9, 0x15

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v0, :cond_19

    .line 27
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v13

    if-lt v13, v9, :cond_19

    .line 28
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 29
    invoke-virtual {v13}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->getComplexityRange()Landroid/util/Range;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 30
    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "complexity"

    invoke-virtual {v4, v14, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    :cond_7
    iget-boolean v13, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->b:Z

    if-eqz v13, :cond_11

    .line 32
    iget-object v13, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v14, v13, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iget-object v13, v13, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v15, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v13, v15, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_9

    .line 33
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v13

    if-lt v13, v9, :cond_9

    goto :goto_6

    :cond_9
    if-nez v14, :cond_a

    :goto_6
    const/4 v13, 0x1

    goto :goto_7

    .line 34
    :cond_a
    sget-object v13, Lcom/tencent/liteav/videoproducer/encoder/u$1;->b:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v11, :cond_c

    if-eq v13, v12, :cond_b

    goto :goto_6

    :cond_b
    const/16 v13, 0x8

    goto :goto_7

    :cond_c
    const/4 v13, 0x2

    :goto_7
    const/high16 v14, -0x80000000

    .line 35
    iget-object v15, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->d:Ljava/lang/String;

    const-string/jumbo v6, "video/avc"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v14, 0x100

    .line 36
    :cond_d
    iget-object v6, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v15, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v7, v15, :cond_10

    aget-object v12, v6, v7

    .line 37
    iget v11, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v11, v14, :cond_f

    iget v12, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-gt v12, v13, :cond_f

    if-gt v12, v9, :cond_e

    if-ne v12, v9, :cond_f

    if-le v11, v10, :cond_f

    :cond_e
    move v10, v11

    move v9, v12

    :cond_f
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_8

    :cond_10
    const-string v6, "profile"

    .line 38
    invoke-virtual {v4, v6, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 39
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v6

    if-lt v6, v8, :cond_11

    const-string v6, "level"

    .line 40
    invoke-virtual {v4, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 41
    :cond_11
    iget-boolean v6, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->a:Z

    if-eqz v6, :cond_19

    .line 42
    iget-object v6, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v6, v6, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrateMode:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$BitrateMode;

    if-nez v6, :cond_13

    :cond_12
    :goto_9
    const/4 v6, 0x2

    goto :goto_a

    .line 43
    :cond_13
    sget-object v7, Lcom/tencent/liteav/videoproducer/encoder/u$1;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_12

    const/4 v7, 0x2

    if-eq v6, v7, :cond_15

    const/4 v7, 0x3

    if-eq v6, v7, :cond_14

    goto :goto_9

    :cond_14
    const/4 v6, 0x0

    goto :goto_a

    :cond_15
    const/4 v6, 0x1

    .line 44
    :goto_a
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 45
    invoke-direct {v1, v6, v7}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z

    move-result v9

    const-string v10, "bitrate-mode"

    if-eqz v9, :cond_16

    .line 46
    invoke-virtual {v4, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_b

    .line 47
    :cond_16
    iget-object v6, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v6, v6, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    .line 48
    invoke-direct {v1, v6, v7}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 49
    invoke-virtual {v4, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_b

    :cond_17
    const/4 v6, 0x2

    .line 50
    invoke-direct {v1, v6, v7}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 51
    invoke-virtual {v4, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_b

    :cond_18
    const/4 v6, 0x2

    .line 52
    invoke-direct {v1, v6, v7}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(ILandroid/media/MediaCodecInfo$EncoderCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 53
    invoke-virtual {v4, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 54
    :cond_19
    :goto_b
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v6

    if-ge v6, v8, :cond_1a

    const/4 v6, 0x0

    goto :goto_c

    .line 55
    :cond_1a
    invoke-static {v4}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(Landroid/media/MediaFormat;)Landroid/util/Pair;

    move-result-object v6

    .line 56
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 57
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 58
    iget-object v9, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->d:Ljava/lang/String;

    invoke-static {v9, v7, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    :goto_c
    if-eqz v6, :cond_1b

    move-object v0, v6

    :cond_1b
    const/4 v6, 0x4

    const-string v7, "MediaFormatBuilder"

    if-eqz v0, :cond_1c

    .line 59
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v9

    const/16 v10, 0x15

    if-lt v9, v10, :cond_1c

    .line 60
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 61
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    .line 62
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    .line 63
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v11, v6, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v12, 0x2

    aput-object v0, v11, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v12, 0x3

    aput-object v0, v11, v12

    const-string v0, "bitrateRange=(%d, %d),bitrate=%d,clampBitrate=%d"

    .line 65
    invoke-static {v7, v0, v11}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v9, v10, :cond_1c

    .line 66
    invoke-virtual {v4, v5, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 67
    :cond_1c
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    if-lt v0, v8, :cond_2d

    .line 68
    invoke-static {v4}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(Landroid/media/MediaFormat;)Landroid/util/Pair;

    move-result-object v0

    .line 69
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 70
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    invoke-direct {v1, v5, v0}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v10, "height"

    const-string/jumbo v11, "width"

    if-eqz v8, :cond_22

    .line 72
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v12

    .line 73
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v8

    if-eqz v12, :cond_22

    if-nez v8, :cond_1d

    goto/16 :goto_d

    .line 74
    :cond_1d
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 75
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v4, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v13

    .line 77
    invoke-virtual {v4, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    if-le v13, v14, :cond_1e

    .line 78
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v15, v6, :cond_1f

    :cond_1e
    if-ge v13, v14, :cond_20

    .line 79
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v6, v15, :cond_20

    .line 80
    :cond_1f
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v12, v8

    move-object v8, v6

    .line 82
    :cond_20
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v13, :cond_21

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v14, :cond_22

    .line 83
    :cond_21
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    int-to-float v15, v13

    mul-float v17, v15, v9

    div-float v6, v6, v17

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v18, v2

    int-to-float v2, v14

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v19, v2, v17

    div-float v9, v9, v19

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v15, v15, v6

    float-to-int v9, v15

    .line 84
    invoke-virtual {v4, v11, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    mul-float v6, v6, v2

    float-to-int v2, v6

    .line 85
    invoke-virtual {v4, v10, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/Object;

    .line 86
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v6, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v6, v9

    const/4 v2, 0x2

    aput-object v12, v6, v2

    const/4 v2, 0x3

    aput-object v8, v6, v2

    const-string/jumbo v2, "updateMediaFormatToUpperSize:srcWidth=%d,srcHeight=%d,upperW=%d,upperH=%d"

    .line 87
    invoke-static {v7, v2, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_22
    :goto_d
    move-object/from16 v18, v2

    .line 88
    :goto_e
    invoke-direct {v1, v5, v0}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 89
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v6

    .line 90
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v2

    if-eqz v6, :cond_2a

    if-nez v2, :cond_23

    goto/16 :goto_11

    .line 91
    :cond_23
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 92
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 93
    iget-object v8, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->c:Landroid/media/MediaCodec;

    if-nez v8, :cond_24

    :goto_f
    const/16 v16, 0x0

    goto :goto_10

    .line 94
    :cond_24
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v8

    const/16 v9, 0x15

    if-ge v8, v9, :cond_25

    goto :goto_f

    .line 95
    :cond_25
    iget-object v8, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->c:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 96
    iget-object v9, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    if-nez v8, :cond_26

    goto :goto_f

    .line 97
    :cond_26
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v8

    move-object/from16 v16, v8

    :goto_10
    if-eqz v16, :cond_27

    .line 98
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v8

    .line 99
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v9

    if-eqz v8, :cond_27

    if-eqz v9, :cond_27

    .line 100
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    :cond_27
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_2a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gez v8, :cond_28

    goto :goto_11

    .line 103
    :cond_28
    invoke-virtual {v4, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 104
    invoke-virtual {v4, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    .line 105
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gt v12, v8, :cond_29

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v12, v9, :cond_2a

    .line 106
    :cond_29
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    int-to-float v8, v8

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v14, v8, v13

    div-float/2addr v12, v14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    int-to-float v9, v9

    mul-float v13, v13, v9

    div-float/2addr v14, v13

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    mul-float v8, v8, v12

    float-to-int v8, v8

    .line 107
    invoke-virtual {v4, v11, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    mul-float v12, v12, v9

    float-to-int v8, v12

    .line 108
    invoke-virtual {v4, v10, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v9, v8

    const/4 v6, 0x1

    aput-object v2, v9, v6

    const-string/jumbo v2, "updateMediaFormatToLowerSize:lowerW=%d,lowerH=%d"

    .line 109
    invoke-static {v7, v2, v9}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_2a
    :goto_11
    invoke-direct {v1, v5, v0}, Lcom/tencent/liteav/videoproducer/encoder/u;->a(II)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 111
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v2

    .line 112
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-string/jumbo v8, "widthAlignment=%d,heightAlignment=%d"

    invoke-static {v7, v8, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lt v2, v5, :cond_2e

    if-lt v0, v5, :cond_2e

    .line 114
    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_2e

    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_2b

    goto :goto_12

    .line 115
    :cond_2b
    invoke-virtual {v4, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 116
    invoke-virtual {v4, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 117
    div-int v8, v5, v2

    mul-int v8, v8, v2

    .line 118
    div-int v9, v6, v0

    mul-int v9, v9, v0

    if-ne v5, v8, :cond_2c

    if-eq v6, v9, :cond_2e

    .line 119
    :cond_2c
    invoke-virtual {v4, v11, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {v4, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v10, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v10, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v10, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v10, v5

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v2

    const-string/jumbo v0, "updateMediaFormatWithAlignment,srcSize=(%d x %d),fixSize=(%d x %d),widthAlignment=%d,heightAlignment=%d"

    .line 122
    invoke-static {v7, v0, v10}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_2d
    move-object/from16 v18, v2

    .line 123
    :cond_2e
    :goto_12
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    if-eqz v0, :cond_2f

    const/4 v13, 0x0

    .line 124
    :goto_13
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v13, v0, :cond_2f

    .line 125
    :try_start_0
    iget-object v0, v1, Lcom/tencent/liteav/videoproducer/encoder/u;->e:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    .line 126
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "setDeviceRelatedParams,index=%d,key=%s,value=%d"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v5, 0x3

    :try_start_1
    new-array v6, v5, [Ljava/lang/Object;

    .line 127
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v9, 0x0

    :try_start_2
    aput-object v8, v6, v9

    .line 128
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v10, 0x1

    :try_start_3
    aput-object v8, v6, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v8, v18

    :try_start_4
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v12, 0x2

    :try_start_5
    aput-object v11, v6, v12

    .line 129
    invoke-static {v7, v2, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_18

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_16

    :catch_2
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_16

    :catch_3
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_15

    :catch_4
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_14

    :catch_5
    move-exception v0

    move-object/from16 v8, v18

    const/4 v5, 0x3

    :goto_14
    const/4 v9, 0x0

    :goto_15
    const/4 v10, 0x1

    :goto_16
    const/4 v12, 0x2

    .line 131
    :goto_17
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "set mediaCodec device related params failed,index="

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v18, v8

    goto :goto_13

    :cond_2f
    return-object v4
.end method
