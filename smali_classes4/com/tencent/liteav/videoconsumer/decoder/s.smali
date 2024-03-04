.class public final Lcom/tencent/liteav/videoconsumer/decoder/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/tencent/liteav/videoconsumer/decoder/az;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/decoder/s$a;
    }
.end annotation


# instance fields
.field private final A:Lcom/tencent/tmediacodec/a/a;

.field private a:Ljava/lang/String;

.field private final b:Lcom/tencent/liteav/base/util/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lorg/json/JSONArray;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/tencent/liteav/base/b/b;

.field private volatile g:Lcom/tencent/liteav/base/util/CustomHandler;

.field private h:Lcom/tencent/tmediacodec/b;

.field private i:Lcom/tencent/liteav/videoconsumer/decoder/ba;

.field private final j:Landroid/media/MediaCodec$BufferInfo;

.field private k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

.field private l:Z

.field private m:Lcom/tencent/liteav/videobase/b/e;

.field private n:I

.field private o:Lcom/tencent/liteav/videobase/frame/l;

.field private p:Landroid/graphics/SurfaceTexture;

.field private q:Landroid/view/Surface;

.field private r:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

.field private s:Z

.field private final t:Lcom/tencent/liteav/videoconsumer/decoder/r;

.field private u:Z

.field private v:Landroid/media/MediaFormat;

.field private w:Lcom/tencent/liteav/videobase/frame/j;

.field private x:Lcom/tencent/liteav/videobase/frame/e;

.field private final y:Z

.field private final z:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;ZZLorg/json/JSONArray;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 7
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "height"

    .line 3
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    const-string v0, "mime"

    .line 4
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoconsumer/decoder/s;-><init>(Lcom/tencent/liteav/base/util/q;Ljava/lang/String;ZZLorg/json/JSONArray;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    .line 6
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->v:Landroid/media/MediaFormat;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/liteav/base/util/q;Ljava/lang/String;ZZLorg/json/JSONArray;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 2
    .param p1    # Lcom/tencent/liteav/base/util/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HardwareVideoDecoder"

    .line 8
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->f:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    .line 11
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 12
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->l:Z

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->n:I

    .line 15
    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->r:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->s:Z

    .line 17
    new-instance v1, Lcom/tencent/liteav/videoconsumer/decoder/r;

    invoke-direct {v1}, Lcom/tencent/liteav/videoconsumer/decoder/r;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->t:Lcom/tencent/liteav/videoconsumer/decoder/r;

    .line 18
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->u:Z

    .line 19
    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/s$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/s$1;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/s;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->A:Lcom/tencent/tmediacodec/a/a;

    .line 20
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/base/util/q;-><init>(Lcom/tencent/liteav/base/util/q;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->b:Lcom/tencent/liteav/base/util/q;

    .line 21
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->e:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 23
    iput-object p5, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->d:Lorg/json/JSONArray;

    .line 24
    iput-boolean p3, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->y:Z

    .line 25
    iput-boolean p4, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->z:Z

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "create decoder isLowLatencyEnabled:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->v:Landroid/media/MediaFormat;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " , params: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/base/util/q;ZZZLorg/json/JSONArray;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 7
    .param p1    # Lcom/tencent/liteav/base/util/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string/jumbo p2, "video/hevc"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "video/avc"

    :goto_0
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videoconsumer/decoder/s;-><init>(Lcom/tencent/liteav/base/util/q;Ljava/lang/String;ZZLorg/json/JSONArray;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/decoder/s;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 17

    move-object/from16 v1, p0

    .line 33
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v2, "MediaCodec is stopped."

    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 35
    :try_start_0
    iget-boolean v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->l:Z

    const/4 v3, -0x1

    const/16 v4, -0x3e8

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_9

    .line 36
    iget-object v8, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    iget-object v9, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->j:Landroid/media/MediaCodec$BufferInfo;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0xa

    .line 37
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v10

    .line 38
    iget-object v8, v8, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v8, :cond_1

    invoke-interface {v8, v9, v10, v11}, Lcom/tencent/tmediacodec/b/b;->a(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    goto :goto_1

    :cond_1
    const/16 v8, -0x3e8

    :goto_1
    if-eq v8, v3, :cond_9

    const/4 v9, -0x3

    if-ne v8, v9, :cond_2

    .line 39
    iget-object v8, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v9, "on output buffers changed"

    invoke-static {v8, v9}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v9, -0x2

    const/4 v10, 0x4

    if-ne v8, v9, :cond_4

    .line 40
    iget-object v8, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    .line 41
    iget-object v8, v8, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v8, :cond_3

    .line 42
    invoke-interface {v8}, Lcom/tencent/tmediacodec/b/b;->a()Landroid/media/MediaCodec;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 43
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 44
    :goto_2
    iget-object v9, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v11, "decode output format changed: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "crop-right"

    .line 45
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    const-string v11, "crop-left"

    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v7

    const-string v11, "crop-bottom"

    .line 46
    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    const-string v12, "crop-top"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v11, v7

    const-string/jumbo v12, "width"

    .line 47
    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    const-string v13, "height"

    .line 48
    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 49
    iget-object v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v14, "cropWidth: %d, cropHeight: %d, frameWidth: %d, frameHeight: %d"

    new-array v10, v10, [Ljava/lang/Object;

    .line 50
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v10, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v6

    .line 51
    invoke-static {v13, v14, v10}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    if-ltz v8, :cond_8

    .line 52
    iput-boolean v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->l:Z

    .line 53
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    .line 54
    iget-object v0, v0, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v0, :cond_5

    .line 55
    invoke-interface {v0, v8}, Lcom/tencent/tmediacodec/b/b;->a(I)V

    .line 56
    :cond_5
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_7

    .line 57
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v8, "meet end of stream."

    invoke-static {v0, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->i:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz v0, :cond_6

    .line 59
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onDecodeCompleted()V

    .line 60
    :cond_6
    iput-boolean v7, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->l:Z

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .line 61
    :cond_8
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v9, "dequeueOutputBuffer get invalid index: %d"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v2

    invoke-static {v0, v9, v10}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_0

    .line 62
    :cond_a
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :try_start_1
    iget-object v8, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    .line 64
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_27

    .line 65
    :try_start_2
    iget-boolean v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    if-nez v0, :cond_c

    iget-object v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_c

    .line 67
    :cond_b
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v3, "receive empty buffer."

    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 68
    :cond_c
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    .line 69
    iget-object v0, v0, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v0, :cond_d

    .line 70
    invoke-interface {v0}, Lcom/tencent/tmediacodec/b/b;->a()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 71
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v9, v0

    goto :goto_5

    :cond_d
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_f

    .line 72
    array-length v0, v9

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_10

    .line 73
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v3, "get invalid input buffers."

    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_14

    .line 74
    :cond_10
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    .line 75
    iget-object v0, v0, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/tencent/tmediacodec/b/b;->h()I

    move-result v4

    move v11, v4

    goto :goto_9

    :cond_11
    const/16 v11, -0x3e8

    :goto_9
    if-gez v11, :cond_12

    goto :goto_8

    .line 76
    :cond_12
    iget-boolean v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    if-nez v0, :cond_23

    .line 77
    invoke-virtual {v8}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isIDRFrame()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v4, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v4, :cond_22

    iget-boolean v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->s:Z

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->r:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    sget-object v4, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    if-eq v0, v4, :cond_13

    goto/16 :goto_12

    .line 78
    :cond_13
    iget-object v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v10, v4, [B

    .line 79
    iget-object v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-array v12, v7, [I

    aput v3, v12, v2

    const/4 v0, 0x0

    :cond_14
    add-int/lit8 v3, v0, 0x4

    if-ge v3, v4, :cond_15

    .line 81
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->getNextNALHeaderPos(ILjava/nio/ByteBuffer;)I

    move-result v0

    if-ltz v0, :cond_15

    .line 82
    aget-byte v3, v10, v0

    and-int/lit8 v3, v3, 0x1f

    const/4 v13, 0x7

    if-ne v3, v13, :cond_14

    aput v0, v12, v2

    :cond_15
    aget v0, v12, v2

    if-gez v0, :cond_16

    const/4 v3, 0x0

    goto :goto_c

    :cond_16
    aget v0, v12, v2

    sub-int v0, v4, v0

    aget v3, v12, v2

    :goto_a
    add-int/lit8 v13, v3, 0x3

    if-ge v13, v4, :cond_1a

    .line 83
    aget-byte v14, v10, v3

    if-nez v14, :cond_17

    add-int/lit8 v14, v3, 0x1

    aget-byte v14, v10, v14

    if-nez v14, :cond_17

    add-int/lit8 v14, v3, 0x2

    aget-byte v14, v10, v14

    if-eq v14, v7, :cond_18

    :cond_17
    aget-byte v14, v10, v3

    if-nez v14, :cond_19

    add-int/lit8 v14, v3, 0x1

    aget-byte v14, v10, v14

    if-nez v14, :cond_19

    add-int/lit8 v14, v3, 0x2

    aget-byte v14, v10, v14

    if-nez v14, :cond_19

    aget-byte v13, v10, v13

    if-ne v13, v7, :cond_19

    :cond_18
    aget v0, v12, v2

    sub-int v0, v3, v0

    goto :goto_b

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 84
    :cond_1a
    :goto_b
    new-array v3, v0, [B

    aget v13, v12, v2

    .line 85
    invoke-static {v10, v13, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_c
    if-eqz v3, :cond_22

    aget v0, v12, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-gez v0, :cond_1b

    goto/16 :goto_12

    .line 86
    :cond_1b
    :try_start_3
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->t:Lcom/tencent/liteav/videoconsumer/decoder/r;

    .line 87
    array-length v13, v3

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 88
    :goto_d
    array-length v7, v3

    if-ge v14, v7, :cond_1d

    .line 89
    array-length v7, v3

    sub-int/2addr v7, v6

    if-ge v14, v7, :cond_1c

    aget-byte v7, v3, v14

    if-nez v7, :cond_1c

    add-int/lit8 v7, v14, 0x1

    aget-byte v16, v3, v7

    if-nez v16, :cond_1c

    add-int/lit8 v16, v14, 0x2

    aget-byte v5, v3, v16

    if-ne v5, v6, :cond_1c

    add-int/lit8 v5, v14, 0x3

    aget-byte v2, v3, v5

    if-gt v2, v6, :cond_1c

    add-int/lit8 v2, v15, 0x1

    .line 90
    aget-byte v14, v3, v14

    aput-byte v14, v13, v15

    add-int/lit8 v15, v2, 0x1

    .line 91
    aget-byte v7, v3, v7

    aput-byte v7, v13, v2

    move v14, v5

    goto :goto_e

    :cond_1c
    add-int/lit8 v2, v15, 0x1

    .line 92
    aget-byte v5, v3, v14

    aput-byte v5, v13, v15

    add-int/lit8 v14, v14, 0x1

    move v15, v2

    :goto_e
    const/4 v2, 0x0

    goto :goto_d

    .line 93
    :cond_1d
    array-length v2, v3

    if-eq v15, v2, :cond_1e

    .line 94
    new-array v2, v15, [B

    const/4 v5, 0x0

    .line 95
    invoke-static {v13, v5, v2, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_1e
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_1f

    const/4 v5, 0x1

    goto :goto_10

    :cond_1f
    move-object v2, v3

    const/4 v5, 0x0

    .line 96
    :goto_10
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v6}, Lcom/tencent/liteav/videoconsumer/decoder/r;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_20

    if-eqz v5, :cond_20

    .line 97
    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/r;->a([B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    .line 98
    :try_start_4
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v5, "modify dec buffer error "

    invoke-static {v2, v5, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_20
    :goto_11
    if-eqz v0, :cond_22

    .line 99
    array-length v2, v3

    sub-int v2, v4, v2

    array-length v5, v0

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    aget v6, v12, v5

    if-lez v6, :cond_21

    aget v6, v12, v5

    .line 100
    invoke-virtual {v2, v10, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 101
    :cond_21
    iget-object v2, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    iget-object v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aget v5, v12, v2

    array-length v6, v3

    add-int/2addr v5, v6

    aget v6, v12, v2

    sub-int/2addr v4, v6

    array-length v2, v3

    sub-int/2addr v4, v2

    invoke-virtual {v0, v10, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 103
    iget-object v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 104
    :cond_22
    :goto_12
    iget-object v0, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    .line 105
    aget-object v0, v9, v11

    iget-object v2, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 106
    iget-object v10, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v8, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    .line 107
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v13

    const/4 v15, 0x0

    .line 108
    invoke-virtual/range {v10 .. v15}, Lcom/tencent/tmediacodec/b;->a(IIJI)V

    .line 109
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->i:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz v0, :cond_24

    .line 110
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onFrameEnqueuedToDecoder()V

    goto :goto_13

    .line 111
    :cond_23
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v2, "feedDataToMediaCodec BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v10, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x4

    invoke-virtual/range {v10 .. v15}, Lcom/tencent/tmediacodec/b;->a(IIJI)V

    :cond_24
    :goto_13
    const/4 v7, 0x1

    :goto_14
    if-nez v7, :cond_25

    goto :goto_15

    .line 113
    :cond_25
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 114
    :try_start_5
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    if-ne v0, v8, :cond_26

    const/4 v2, 0x0

    .line 115
    iput-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    .line 116
    :cond_26
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 117
    :try_start_6
    invoke-static {v8}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-void

    :catchall_0
    move-exception v0

    .line 118
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_27
    :goto_15
    return-void

    :catchall_1
    move-exception v0

    .line 119
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    .line 120
    iget-object v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v3, "decode failed."

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$c;->n:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VideoDecode: decode error, restart decoder message:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 123
    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    return-void
.end method

.method private varargs a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->i:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onDecodeFailed()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/decoder/s;Landroid/graphics/SurfaceTexture;)V
    .locals 10

    .line 126
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_8

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->d()Z

    const/4 v0, 0x0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->o:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/h;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string/jumbo v2, "textureholderpool obtain interrupted."

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    const v2, 0x8d65

    .line 130
    iget v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->n:I

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->b:Lcom/tencent/liteav/base/util/q;

    iget v5, v4, Lcom/tencent/liteav/base/util/q;->a:I

    iget v4, v4, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    .line 131
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->m:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/l$b;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v3, 0x10

    new-array v3, v3, [F

    .line 133
    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    :cond_1
    const/4 v3, 0x0

    .line 134
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 135
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 136
    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->f:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v6, "updateImage"

    invoke-virtual {v5, v6}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "updateTexImage exception: "

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v4, 0x1

    .line 137
    iput-boolean v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->l:Z

    .line 138
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    .line 139
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 140
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result p1

    const/16 v6, 0x16

    if-gt p1, v6, :cond_7

    .line 141
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p1

    .line 142
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v6

    .line 143
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->w:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v7, :cond_4

    .line 144
    new-instance v8, Lcom/tencent/liteav/base/util/q;

    iget v9, v7, Lcom/tencent/liteav/videobase/frame/j;->a:I

    iget v7, v7, Lcom/tencent/liteav/videobase/frame/j;->b:I

    invoke-direct {v8, v9, v7}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 145
    iget v7, v8, Lcom/tencent/liteav/base/util/q;->a:I

    if-ne v7, p1, :cond_3

    iget v7, v8, Lcom/tencent/liteav/base/util/q;->b:I

    if-eq v7, v6, :cond_4

    .line 146
    :cond_3
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->w:Lcom/tencent/liteav/videobase/frame/j;

    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 147
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->w:Lcom/tencent/liteav/videobase/frame/j;

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->w:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v0, :cond_5

    .line 149
    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    invoke-direct {v0, p1, v6}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->w:Lcom/tencent/liteav/videobase/frame/j;

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->x:Lcom/tencent/liteav/videobase/frame/e;

    if-nez v0, :cond_6

    .line 151
    new-instance v0, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->x:Lcom/tencent/liteav/videobase/frame/e;

    .line 152
    :cond_6
    invoke-static {v3, v3, p1, v6}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 153
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->x:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, p1, v6}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->w:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v0, v2, v6, p1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 155
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->m:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    .line 156
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 157
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 158
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    move-object v2, v0

    .line 159
    :cond_7
    invoke-virtual {v2, v4, v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 160
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->i:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    invoke-interface {p1, v2, v4, v5}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onDecodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V

    .line 161
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 162
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 163
    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->u:Z

    if-eqz p1, :cond_8

    .line 164
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->b()V

    .line 165
    iput-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->u:Z

    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/decoder/s;Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-boolean p1, p1, Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;->enableVui:Z

    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/decoder/s;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->r:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoconsumer/decoder/s;Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/ba;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v1, "Start internal"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->m:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_0

    .line 313
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string p1, "Decoder already started."

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->i:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    .line 315
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 316
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/s$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/s$a;-><init>(B)V

    .line 317
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->y:Z

    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->z:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videoconsumer/decoder/s$a;ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    invoke-direct {p0, p1, p2, p2}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videoconsumer/decoder/s$a;ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p1, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decoder config fail, message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->d:Ljava/lang/Exception;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    .line 321
    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 322
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->a:Lcom/tencent/tmediacodec/b;

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    .line 323
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->i:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz p1, :cond_4

    .line 324
    iget-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->y:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onDecodeLatencyChanged(Z)V

    .line 325
    :cond_4
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p1, Lcom/tencent/liteav/videobase/videobase/h$b;->B:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Start decoder success"

    invoke-interface {p0, p1, v0, p2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/tencent/tmediacodec/b;)V
    .locals 6

    const-string v0, "release MediaCodec failed."

    const-string v1, "mediaCodec release"

    if-eqz p1, :cond_0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v3, "mediaCodec stop"

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/tencent/tmediacodec/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/tencent/tmediacodec/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 26
    :try_start_2
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Stop MediaCodec failed."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/tencent/tmediacodec/b;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 29
    :goto_0
    :try_start_4
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/tencent/tmediacodec/b;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 31
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_1
    throw v2

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->g:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 171
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 172
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private a(Lcom/tencent/liteav/videoconsumer/decoder/s$a;ZZ)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 173
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->v:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->e:Ljava/lang/String;

    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->b:Lcom/tencent/liteav/base/util/q;

    iget v4, v3, Lcom/tencent/liteav/base/util/q;->a:I

    iget v3, v3, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v0, v4, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    if-eqz p2, :cond_4

    .line 175
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v5, 0x1e

    if-lt v0, v5, :cond_1

    const-string v0, "low-latency"

    .line 176
    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 177
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v5, 0x1a

    if-lt v0, v5, :cond_2

    .line 178
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getHardware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "qcom"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "vendor.qti-ext-dec-low-latency.enable"

    .line 179
    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "vendor.qti-ext-dec-picture-order.enable"

    .line 180
    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v6, 0x1d

    if-lt v0, v6, :cond_3

    .line 182
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getHardware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "kirin"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req"

    .line 183
    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, -0x1

    const-string/jumbo v5, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy"

    .line 184
    invoke-virtual {v3, v5, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 186
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getHardware()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "exynos"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "vendor.rtc-ext-dec-low-latency.enable"

    .line 187
    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 188
    :cond_4
    :goto_0
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->d:Lorg/json/JSONArray;

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    const/4 v6, 0x0

    .line 189
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 190
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "key"

    .line 191
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "HardwareVideoDecoder"

    const-string v7, "set MediaCodec device related params failed."

    .line 192
    invoke-static {v6, v7, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_5
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mediaFormat:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "mime"

    .line 194
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v7, Lcom/tencent/tmediacodec/b;

    sget-object v8, Lcom/tencent/tmediacodec/b$a;->b:Lcom/tencent/tmediacodec/b$a;

    invoke-direct {v7, v0, v8}, Lcom/tencent/tmediacodec/b;-><init>(Ljava/lang/String;Lcom/tencent/tmediacodec/b$a;)V

    .line 196
    iput-object v7, v2, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->a:Lcom/tencent/tmediacodec/b;

    move/from16 v8, p3

    .line 197
    iput-boolean v8, v7, Lcom/tencent/tmediacodec/b;->f:Z

    .line 198
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->A:Lcom/tencent/tmediacodec/a/a;

    .line 199
    iput-object v0, v7, Lcom/tencent/tmediacodec/b;->d:Lcom/tencent/tmediacodec/a/a;

    .line 200
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->q:Landroid/view/Surface;

    .line 201
    iget-boolean v8, v7, Lcom/tencent/tmediacodec/b;->g:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v9, "TMediaCodec"

    if-eqz v8, :cond_6

    .line 202
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "configure ignored, mediaFormat:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " surface:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " crypto:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " flags:0 stack:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 203
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v9, v0}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 205
    :cond_6
    iput-boolean v4, v7, Lcom/tencent/tmediacodec/b;->g:Z

    .line 206
    invoke-static {}, Lcom/tencent/tmediacodec/a;->a()Lcom/tencent/tmediacodec/a;

    move-result-object v8

    .line 207
    iget-boolean v8, v8, Lcom/tencent/tmediacodec/a;->b:Z

    .line 208
    iget-boolean v10, v7, Lcom/tencent/tmediacodec/b;->f:Z

    .line 209
    iget-object v11, v7, Lcom/tencent/tmediacodec/b;->h:Ljava/lang/String;

    invoke-static {v11}, Lcom/tencent/tmediacodec/f/c;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v8, :cond_7

    if-eqz v10, :cond_7

    const/4 v12, 0x1

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    .line 210
    :goto_2
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v13, v14, :cond_8

    .line 211
    invoke-static {}, Lcom/tencent/tmediacodec/f/c;->a()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    .line 212
    :goto_3
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v15, "TCodecManager"

    if-eqz v14, :cond_9

    .line 213
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v6, "reuseEnable getCodec isVideo:"

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " reuseEnable:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "globalReuseEnable:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mediaCodecReuseEnable:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " canUseSetOutputSurfaceAPI:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ,surface:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v12, :cond_a

    if-eqz v11, :cond_a

    if-eqz v13, :cond_a

    if-eqz v0, :cond_a

    const/4 v6, 0x1

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    .line 214
    :goto_4
    iput-boolean v6, v7, Lcom/tencent/tmediacodec/b;->a:Z

    .line 215
    iget-object v6, v7, Lcom/tencent/tmediacodec/b;->e:Lcom/tencent/tmediacodec/e/a;

    const-string v8, ""

    .line 216
    iput-object v8, v6, Lcom/tencent/tmediacodec/e/a;->f:Ljava/lang/String;

    .line 217
    iget-object v8, v6, Lcom/tencent/tmediacodec/e/a;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/tencent/tmediacodec/e/a;->b:J

    .line 219
    iget-object v6, v7, Lcom/tencent/tmediacodec/b;->e:Lcom/tencent/tmediacodec/e/a;

    .line 220
    iget-object v8, v6, Lcom/tencent/tmediacodec/e/a;->a:Ljava/util/Map;

    const-string v10, "createCodec"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v6, Lcom/tencent/tmediacodec/e/a;->b:J

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v6, v7, Lcom/tencent/tmediacodec/b;->e:Lcom/tencent/tmediacodec/e/a;

    iget-boolean v8, v7, Lcom/tencent/tmediacodec/b;->a:Z

    .line 222
    iput-boolean v8, v6, Lcom/tencent/tmediacodec/e/a;->d:Z

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/tencent/tmediacodec/e/a;->b:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 224
    :try_start_4
    invoke-static {}, Lcom/tencent/tmediacodec/a;->a()Lcom/tencent/tmediacodec/a;

    move-result-object v6

    .line 225
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 226
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "configureStart videoPoolInfo:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/tencent/tmediacodec/a;->d:Lcom/tencent/tmediacodec/c/a;

    invoke-virtual {v10}, Lcom/tencent/tmediacodec/c/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_b
    iput-boolean v4, v6, Lcom/tencent/tmediacodec/a;->c:Z

    .line 228
    iput-boolean v4, v6, Lcom/tencent/tmediacodec/a;->e:Z

    .line 229
    iget-object v8, v7, Lcom/tencent/tmediacodec/b;->h:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/tmediacodec/f/c;->a(Ljava/lang/String;)Z

    move-result v8

    .line 230
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 231
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getCodec isVideo:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " codecFinalReuseEnable:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v7, Lcom/tencent/tmediacodec/b;->a:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_c
    iget-boolean v10, v7, Lcom/tencent/tmediacodec/b;->a:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v11, "CodecWrapperManager"

    if-nez v10, :cond_e

    .line 233
    :try_start_5
    iput-boolean v5, v7, Lcom/tencent/tmediacodec/b;->b:Z

    .line 234
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "getCodec return DirectCodecWrapper for mediaFormat:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " codecFinalReuseEnable:false surface:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_d
    invoke-static {v3, v7}, Lcom/tencent/tmediacodec/a;->a(Landroid/media/MediaFormat;Lcom/tencent/tmediacodec/b;)Lcom/tencent/tmediacodec/b/b;

    move-result-object v8

    goto/16 :goto_8

    :cond_e
    if-nez v8, :cond_10

    .line 237
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "getCodec isn\'t video mediaformat, return direct"

    .line 238
    invoke-static {v15, v8}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_f
    invoke-static {v3, v7}, Lcom/tencent/tmediacodec/a;->a(Landroid/media/MediaFormat;Lcom/tencent/tmediacodec/b;)Lcom/tencent/tmediacodec/b/b;

    move-result-object v8

    goto/16 :goto_8

    .line 240
    :cond_10
    invoke-static {v3}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;)Lcom/tencent/tmediacodec/b/d;

    move-result-object v10

    .line 241
    iget-object v12, v6, Lcom/tencent/tmediacodec/a;->d:Lcom/tencent/tmediacodec/c/a;

    .line 242
    iget-object v12, v12, Lcom/tencent/tmediacodec/c/a;->a:Lcom/tencent/tmediacodec/c/b;

    .line 243
    invoke-virtual {v12, v10}, Lcom/tencent/tmediacodec/c/b;->a(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/b/e;

    move-result-object v13

    .line 244
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "CodecWrapperPool"

    const-string v5, "obtain codecWrapper:"

    .line 245
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v13, :cond_12

    .line 246
    iget-object v4, v12, Lcom/tencent/tmediacodec/c/b;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    const/4 v13, 0x0

    .line 247
    :goto_5
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "obtainCodecWrapper codecWrapper:"

    .line 248
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_13
    iget-object v4, v10, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/tencent/tmediacodec/b/d;->a(Ljava/util/ArrayList;)V

    if-eqz v13, :cond_17

    .line 250
    invoke-interface {v13, v10}, Lcom/tencent/tmediacodec/b/b;->a(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/d/a$b;

    move-result-object v4

    .line 251
    sget-object v5, Lcom/tencent/tmediacodec/d/a$b;->d:Lcom/tencent/tmediacodec/d/a$b;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v10, " reuseType:"

    if-eq v4, v5, :cond_15

    :try_start_6
    sget-object v5, Lcom/tencent/tmediacodec/d/a$b;->c:Lcom/tencent/tmediacodec/d/a$b;

    if-ne v4, v5, :cond_14

    goto :goto_6

    .line 252
    :cond_14
    sget-object v5, Lcom/tencent/tmediacodec/d/a$b;->a:Lcom/tencent/tmediacodec/d/a$b;

    if-ne v4, v5, :cond_17

    .line 253
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "getCodec not reuse, isVideo:"

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 255
    :cond_15
    :goto_6
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "getCodec reuse, isVideo:"

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_16
    invoke-interface {v13}, Lcom/tencent/tmediacodec/b/b;->b()V

    .line 258
    invoke-interface {v13}, Lcom/tencent/tmediacodec/b/b;->c()V

    const/4 v4, 0x1

    .line 259
    iput-boolean v4, v7, Lcom/tencent/tmediacodec/b;->b:Z

    move-object v8, v13

    goto :goto_8

    .line 260
    :cond_17
    :goto_7
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "getCodec not reuse, for can\'t find reUseAble CodecWrapper. isVideo:"

    .line 261
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 v4, 0x0

    .line 262
    iput-boolean v4, v7, Lcom/tencent/tmediacodec/b;->b:Z

    .line 263
    invoke-static {v3, v7}, Lcom/tencent/tmediacodec/a;->b(Landroid/media/MediaFormat;Lcom/tencent/tmediacodec/b;)Lcom/tencent/tmediacodec/b/b;

    move-result-object v8

    .line 264
    invoke-interface {v8}, Lcom/tencent/tmediacodec/b/b;->b()V

    .line 265
    :goto_8
    iget-boolean v4, v6, Lcom/tencent/tmediacodec/a;->b:Z

    if-eqz v4, :cond_1a

    .line 266
    instance-of v4, v8, Lcom/tencent/tmediacodec/b/f;

    if-eqz v4, :cond_1a

    .line 267
    iget-object v4, v6, Lcom/tencent/tmediacodec/a;->d:Lcom/tencent/tmediacodec/c/a;

    move-object v5, v8

    check-cast v5, Lcom/tencent/tmediacodec/b/e;

    .line 268
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v10

    if-eqz v10, :cond_19

    const-string/jumbo v10, "transToRunning codecWrapper:"

    .line 269
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_19
    iget-object v10, v4, Lcom/tencent/tmediacodec/c/a;->a:Lcom/tencent/tmediacodec/c/b;

    invoke-virtual {v10, v5}, Lcom/tencent/tmediacodec/c/b;->b(Lcom/tencent/tmediacodec/b/e;)V

    .line 271
    iget-object v10, v4, Lcom/tencent/tmediacodec/c/a;->b:Lcom/tencent/tmediacodec/c/b;

    invoke-virtual {v10, v5}, Lcom/tencent/tmediacodec/c/b;->a(Lcom/tencent/tmediacodec/b/e;)V

    .line 272
    new-instance v10, Lcom/tencent/tmediacodec/c/a$1;

    invoke-direct {v10, v4, v5}, Lcom/tencent/tmediacodec/c/a$1;-><init>(Lcom/tencent/tmediacodec/c/a;Lcom/tencent/tmediacodec/b/e;)V

    invoke-static {v10}, Lcom/tencent/tmediacodec/f/d;->c(Ljava/lang/Runnable;)V

    .line 273
    :cond_1a
    iget-object v4, v7, Lcom/tencent/tmediacodec/b;->d:Lcom/tencent/tmediacodec/a/a;

    .line 274
    invoke-interface {v8, v4}, Lcom/tencent/tmediacodec/b/b;->a(Lcom/tencent/tmediacodec/a/a;)V

    .line 275
    invoke-interface {v8, v3, v0}, Lcom/tencent/tmediacodec/b/b;->a(Landroid/media/MediaFormat;Landroid/view/Surface;)V

    .line 276
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "configureEnd   videoPoolInfo:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/tencent/tmediacodec/a;->d:Lcom/tencent/tmediacodec/c/a;

    invoke-virtual {v4}, Lcom/tencent/tmediacodec/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_1b
    iput-object v8, v7, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    :catch_1
    move-exception v0

    :try_start_7
    const-string v4, "createCodec mediaFormat:"

    .line 279
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    :goto_9
    iget-object v0, v7, Lcom/tencent/tmediacodec/b;->e:Lcom/tencent/tmediacodec/e/a;

    iget-boolean v3, v7, Lcom/tencent/tmediacodec/b;->b:Z

    .line 281
    iput-boolean v3, v0, Lcom/tencent/tmediacodec/e/a;->c:Z

    const/4 v3, 0x1

    .line 282
    iput-boolean v3, v0, Lcom/tencent/tmediacodec/e/a;->e:Z

    .line 283
    iget-object v3, v0, Lcom/tencent/tmediacodec/e/a;->a:Ljava/util/Map;

    const-string v4, "configCodec"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v10, v0, Lcom/tencent/tmediacodec/e/a;->b:J

    sub-long/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v0, Lcom/tencent/tmediacodec/b$1;

    invoke-direct {v0, v7}, Lcom/tencent/tmediacodec/b$1;-><init>(Lcom/tencent/tmediacodec/b;)V

    invoke-static {v0}, Lcom/tencent/tmediacodec/f/d;->c(Ljava/lang/Runnable;)V

    .line 285
    :goto_a
    iget-object v0, v2, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->a:Lcom/tencent/tmediacodec/b;

    .line 286
    iget-object v0, v0, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v0, :cond_1c

    .line 287
    invoke-interface {v0}, Lcom/tencent/tmediacodec/b/b;->a()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v3, 0x1

    .line 288
    invoke-virtual {v0, v3}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 289
    :cond_1c
    iget-object v0, v2, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->a:Lcom/tencent/tmediacodec/b;

    .line 290
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start codecWrapper:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1d
    iget-object v3, v0, Lcom/tencent/tmediacodec/b;->e:Lcom/tencent/tmediacodec/e/a;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/tmediacodec/e/a;->b:J

    .line 294
    iget-object v3, v0, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v3, :cond_1e

    .line 295
    invoke-interface {v3}, Lcom/tencent/tmediacodec/b/b;->d()V

    .line 296
    :cond_1e
    iget-object v3, v0, Lcom/tencent/tmediacodec/b;->e:Lcom/tencent/tmediacodec/e/a;

    .line 297
    iget-object v4, v3, Lcom/tencent/tmediacodec/e/a;->a:Ljava/util/Map;

    const-string/jumbo v5, "startCodec"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Lcom/tencent/tmediacodec/e/a;->b:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v3, Lcom/tencent/tmediacodec/b$2;

    invoke-direct {v3, v0}, Lcom/tencent/tmediacodec/b$2;-><init>(Lcom/tencent/tmediacodec/b;)V

    invoke-static {v3}, Lcom/tencent/tmediacodec/f/d;->c(Ljava/lang/Runnable;)V

    .line 299
    iget-object v0, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v3, "Start MediaCodec success."

    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v2, 0x1

    return v2

    :catch_2
    move-exception v0

    .line 300
    iget-object v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v4, "Start MediaCodec failed."

    invoke-static {v3, v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    iget-object v3, v2, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->a:Lcom/tencent/tmediacodec/b;

    invoke-direct {v1, v3}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/tmediacodec/b;)V

    const/4 v3, 0x0

    .line 302
    iput-object v3, v2, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->a:Lcom/tencent/tmediacodec/b;

    .line 303
    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$c;->m:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 304
    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v4, :cond_1f

    .line 305
    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$c;->i:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v4, "VideoDecode: illegal argument, Start decoder failed"

    goto :goto_b

    .line 306
    :cond_1f
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    if-eqz v4, :cond_20

    .line 307
    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$c;->j:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v4, "VideoDecode: illegal state, Start decoder failed"

    goto :goto_b

    :cond_20
    const-string v4, "VideoDecode: Start decoder failed"

    .line 308
    :goto_b
    iput-object v3, v2, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 309
    iput-object v4, v2, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->c:Ljava/lang/String;

    .line 310
    iput-object v0, v2, Lcom/tencent/liteav/videoconsumer/decoder/s$a;->d:Ljava/lang/Exception;

    const/4 v2, 0x0

    return v2
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "initGL"

    .line 3
    new-instance v1, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->m:Lcom/tencent/liteav/videobase/b/e;

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v1, p1, v2, v3, v3}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->m:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->generateTextureOES()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->n:I

    .line 7
    new-instance p1, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->o:Lcom/tencent/liteav/videobase/frame/l;

    .line 8
    :try_start_1
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->n:I

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->p:Landroid/graphics/SurfaceTexture;

    .line 9
    new-instance p1, Landroid/view/Surface;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->p:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->q:Landroid/view/Surface;

    .line 10
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->p:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->f:Lcom/tencent/liteav/base/b/b;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "initialize gl components"

    invoke-static {p1, v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :catch_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->f:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "surface"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string v3, "create SurfaceTexture failed."

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->k:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoDecode: insufficient resource, Start decoder failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/Surface$OutOfResourcesException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    .line 15
    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :catch_1
    move-exception p1

    .line 16
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->f:Lcom/tencent/liteav/base/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string v3, "create EGLCore failed."

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->h:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoDecode: create EGLCore failed errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget p1, p1, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    .line 20
    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method static synthetic b(Lcom/tencent/liteav/videoconsumer/decoder/s;)Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->i:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onAbandonDecodingFramesCompleted()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoconsumer/decoder/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoconsumer/decoder/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a()V

    return-void
.end method

.method private d()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->m:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 3
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->f:Lcom/tencent/liteav/base/b/b;

    const-string v3, "makeCurrent"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const-string v1, "makeCurrent failed."

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method static synthetic e(Lcom/tencent/liteav/videoconsumer/decoder/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->c()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/tencent/tmediacodec/b/b;->e()V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->l:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->b()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->u:Z

    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/videoconsumer/decoder/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v1, "Stop internal"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Lcom/tencent/tmediacodec/b;)V

    .line 4
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->h:Lcom/tencent/tmediacodec/b;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->c()V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string/jumbo v2, "uninitialize gl components"

    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->o:Lcom/tencent/liteav/videobase/frame/l;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/h;->b()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->q:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 12
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->q:Landroid/view/Surface;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 15
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->p:Landroid/graphics/SurfaceTexture;

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->x:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 18
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->x:Lcom/tencent/liteav/videobase/frame/e;

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->w:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 21
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->w:Lcom/tencent/liteav/videobase/frame/j;

    .line 22
    :cond_5
    iget v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->n:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->n:I

    .line 24
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->m:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 25
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->m:Lcom/tencent/liteav/videobase/b/e;

    :cond_6
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->l:Z

    return-void
.end method


# virtual methods
.method public final abandonDecodingFrames()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string v1, "flush"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/x;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decode(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->k:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    .line 4
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/w;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/v;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/az$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    return-object v0
.end method

.method public final initialize()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HardwareVideoDecoder_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->g:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/aa;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;Landroid/graphics/SurfaceTexture;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setScene(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/t;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setServerConfig(Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/z;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start(Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/ba;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/u;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/ba;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/y;->a(Lcom/tencent/liteav/videoconsumer/decoder/s;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final uninitialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->g:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize quitLooper"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/s;->g:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    :cond_0
    return-void
.end method
