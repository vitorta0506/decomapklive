.class public final Lcom/tencent/liteav/videoproducer/encoder/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:J

.field private B:Z

.field private C:D

.field private D:J

.field private E:J

.field private F:J

.field private G:J

.field private H:J

.field private final I:Ljava/util/concurrent/atomic/AtomicLong;

.field private final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Ljava/util/concurrent/atomic/AtomicLong;

.field a:Ljava/lang/String;

.field final b:Landroid/os/Bundle;

.field c:Lcom/tencent/liteav/base/util/CustomHandler;

.field d:Landroid/media/MediaCodec;

.field e:Lcom/tencent/liteav/videoproducer/encoder/be$a;

.field f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field g:J

.field h:Lcom/tencent/liteav/base/util/v;

.field i:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field j:Z

.field final k:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field final m:Ljava/lang/Runnable;

.field final n:Ljava/lang/Runnable;

.field private final o:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

.field private q:[B

.field private r:Z

.field private s:J

.field private t:J

.field private u:J

.field private v:I

.field private final w:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 6
    .param p2    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->q:[B

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->r:Z

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->g:J

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->h:Lcom/tencent/liteav/base/util/v;

    .line 6
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->s:J

    .line 7
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->t:J

    .line 8
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->u:J

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->v:I

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    .line 11
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->x:J

    .line 12
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->y:J

    .line 13
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->z:J

    const-wide/high16 v4, -0x8000000000000000L

    .line 14
    iput-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->A:J

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->B:Z

    const-wide/16 v4, 0x0

    .line 16
    iput-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->C:D

    .line 17
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->D:J

    .line 18
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->E:J

    .line 19
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->F:J

    .line 20
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->G:J

    .line 21
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->H:J

    .line 22
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->j:Z

    .line 23
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->k:Ljava/util/Deque;

    .line 24
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->l:I

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->I:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->J:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->K:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/x;->a(Lcom/tencent/liteav/videoproducer/encoder/w;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->m:Ljava/lang/Runnable;

    .line 29
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/z;->a(Lcom/tencent/liteav/videoproducer/encoder/w;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->n:Ljava/lang/Runnable;

    .line 30
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->o:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 31
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->b:Landroid/os/Bundle;

    .line 32
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->p:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SurfaceInputVideoEncoder_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 7

    .line 66
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->B:Z

    if-nez v1, :cond_0

    iget-wide v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->A:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 67
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->A:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v0, 0x2

    iget-wide v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v0

    const-string v0, "has B frame,isEnablesBframe=%b,mLastPresentationTimestamp=%d,packet.pts=%d"

    .line 69
    invoke-static {v1, v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-boolean v4, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->B:Z

    .line 71
    new-instance v0, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string v1, "com.liteav.storage.global"

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    const-string v1, "Liteav.Video.android.local.rtc.enable.high.profile"

    .line 72
    invoke-virtual {v0, v1, v3}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {v0}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    .line 74
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->e:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/be$a;->onRequestRestart()V

    .line 76
    :cond_0
    iget-wide v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->A:J

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/w;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->g()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 77
    iput p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->v:I

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->v:I

    iget v1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    mul-int v1, v1, p1

    if-ne v0, v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->f()V

    :cond_1
    return-void
.end method

.method private a(ZJ)V
    .locals 8

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 136
    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->G:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v2

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    .line 137
    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->H:J

    long-to-double v4, v4

    const-wide v6, 0x40bf400000000000L    # 8000.0

    mul-double v4, v4, v6

    sub-long v2, v0, v2

    long-to-double v2, v2

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v2

    double-to-long v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->F:J

    const-wide/16 v2, 0x0

    .line 138
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->H:J

    .line 139
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->G:J

    .line 140
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->j()V

    .line 141
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->H:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->H:J

    return-void
.end method

.method private a([BLandroid/media/MediaCodec$BufferInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 28
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 29
    :goto_0
    invoke-direct {v0, v3}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Z)V

    .line 30
    array-length v6, v1

    int-to-long v6, v6

    invoke-direct {v0, v3, v6, v7}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(ZJ)V

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->h()V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    if-eqz v3, :cond_1

    .line 32
    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->t:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->t:J

    .line 33
    iput-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->u:J

    goto :goto_1

    .line 34
    :cond_1
    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->u:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->u:J

    .line 35
    :goto_1
    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->s:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->s:J

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->i()J

    move-result-wide v10

    .line 37
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v13, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 38
    iget-wide v14, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->x:J

    cmp-long v16, v14, v6

    if-nez v16, :cond_2

    .line 39
    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->x:J

    .line 40
    :cond_2
    iget-wide v14, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->y:J

    cmp-long v16, v14, v6

    if-nez v16, :cond_3

    .line 41
    iput-wide v12, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->y:J

    .line 42
    :cond_3
    iget-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->x:J

    iget-wide v14, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->y:J

    sub-long/2addr v6, v14

    add-long/2addr v12, v6

    .line 43
    iget-wide v6, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->z:J

    cmp-long v14, v10, v6

    if-gtz v14, :cond_4

    add-long v10, v6, v8

    :cond_4
    cmp-long v6, v10, v12

    if-lez v6, :cond_5

    move-wide v10, v12

    .line 44
    :cond_5
    iput-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->z:J

    .line 45
    new-instance v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-direct {v6}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;-><init>()V

    if-eqz v3, :cond_6

    .line 46
    sget-object v7, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/tencent/liteav/videobase/common/a;->c:Lcom/tencent/liteav/videobase/common/a;

    :goto_2
    iput-object v7, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    .line 47
    array-length v7, v1

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v1, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50
    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    .line 51
    iput-wide v12, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    .line 52
    iput-object v2, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 53
    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->t:J

    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    .line 54
    iget-wide v10, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->u:J

    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    .line 55
    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    sub-long/2addr v10, v8

    .line 56
    :goto_3
    iput-wide v10, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    .line 57
    sget-object v1, Lcom/tencent/liteav/videobase/common/b;->b:Lcom/tencent/liteav/videobase/common/b;

    iput-object v1, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/b;

    .line 58
    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    iput-object v3, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 59
    iget v3, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iput v3, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    .line 60
    iget v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    iput v1, v6, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    .line 61
    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_8

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->e()V

    goto :goto_4

    .line 63
    :cond_8
    invoke-direct {v0, v6}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    const/4 v4, 0x0

    .line 64
    :goto_4
    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->e:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v1, :cond_9

    .line 65
    invoke-interface {v1, v6, v4}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_9
    return-void
.end method

.method private a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 132
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v2, "configure format: %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v1, v2, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1, p2, v1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 134
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v1, "configure failed."

    invoke-static {p2, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static a([B)[B
    .locals 5

    .line 142
    array-length v0, p0

    const/4 v1, 0x5

    if-le v0, v1, :cond_5

    const/4 v0, 0x0

    aget-byte v2, p0, v0

    if-nez v2, :cond_5

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    if-nez v3, :cond_5

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_5

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    if-nez v3, :cond_5

    const/4 v3, 0x4

    aget-byte v3, p0, v3

    if-nez v3, :cond_5

    aget-byte v1, p0, v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v1, 0x3

    .line 143
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 144
    aget-byte v4, p0, v1

    if-nez v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    if-nez v4, :cond_1

    aget-byte v3, p0, v3

    if-eq v3, v2, :cond_4

    :cond_1
    aget-byte v3, p0, v1

    if-nez v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 145
    array-length v2, p0

    sub-int/2addr v2, v1

    new-array v3, v2, [B

    .line 146
    invoke-static {p0, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_5
    :goto_2
    return-object p0
.end method

.method private b(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "mediaCodec getName failed."

    invoke-static {v1, v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "codecName="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "OMX.google.h264.encoder"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string/jumbo v2, "will be destroyed codecName="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Landroid/media/MediaCodec;)V

    .line 21
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "this is a Google H264 soft encoder. cancel use MediaCodec."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    return-object p1
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/encoder/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->g()V

    return-void
.end method

.method private static b([B)[B
    .locals 12

    .line 2
    array-length v0, p0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    const/4 v7, 0x1

    if-gt v3, v0, :cond_5

    add-int/lit8 v8, v3, 0x2

    const/4 v9, 0x3

    if-ge v8, v0, :cond_0

    .line 4
    aget-byte v10, p0, v3

    if-nez v10, :cond_0

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, p0, v10

    if-nez v10, :cond_0

    aget-byte v10, p0, v8

    if-ne v10, v7, :cond_0

    const/4 v8, 0x3

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v3, 0x3

    if-ge v10, v0, :cond_1

    .line 5
    aget-byte v11, p0, v3

    if-nez v11, :cond_1

    add-int/lit8 v11, v3, 0x1

    aget-byte v11, p0, v11

    if-nez v11, :cond_1

    aget-byte v8, p0, v8

    if-nez v8, :cond_1

    aget-byte v8, p0, v10

    if-ne v8, v7, :cond_1

    const/4 v8, 0x4

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    :goto_1
    if-eq v8, v9, :cond_2

    if-eq v8, v6, :cond_2

    if-ne v3, v0, :cond_4

    :cond_2
    if-eq v5, v3, :cond_3

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v2

    aput v3, v6, v7

    .line 6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v5, v3, v5

    add-int/2addr v4, v5

    :cond_3
    add-int v5, v3, v8

    :cond_4
    add-int/2addr v3, v8

    goto :goto_0

    .line 7
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v4, v0

    new-array v0, v4, [B

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 9
    aget v5, v4, v7

    aget v8, v4, v2

    sub-int/2addr v5, v8

    new-array v8, v6, [B

    .line 10
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 11
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-static {v8, v2, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    aget v4, v4, v2

    add-int/2addr v3, v6

    invoke-static {p0, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    .line 4
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v1, "encoder output buffers changed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->e:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v2, "encoder output format changed: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v2, "getOutputFormat failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_3
    if-gez v1, :cond_4

    const-string v0, "dequeueOutputBuffer return "

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 13
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 14
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->J:Ljava/util/List;

    iget-object v7, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->I:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :try_start_2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v2

    const/16 v5, 0x15

    if-lt v2, v5, :cond_5

    .line 16
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_5
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v2, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    if-eqz v2, :cond_12

    .line 18
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_6

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_6

    goto/16 :goto_8

    .line 19
    :cond_6
    new-array v5, v5, [B

    .line 20
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 23
    invoke-static {v5}, Lcom/tencent/liteav/videoproducer/encoder/w;->a([B)[B

    move-result-object v2

    .line 24
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v5, :cond_7

    iget-boolean v5, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    if-nez v5, :cond_7

    .line 25
    invoke-static {v2}, Lcom/tencent/liteav/videoproducer/encoder/w;->b([B)[B

    move-result-object v2

    .line 26
    :cond_7
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v5, 0x2

    if-lez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    .line 27
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v5, :cond_b

    iget-object v6, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v7, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v6, v7, :cond_a

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v5, :cond_d

    .line 28
    iget-boolean v5, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->annexb:Z

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    .line 29
    :cond_d
    :goto_6
    invoke-static {v2, v6, v3}, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->nativeGetSpsPps([BZZ)[B

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->q:[B

    .line 30
    invoke-direct {p0, v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a([BLandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_9

    :cond_e
    if-eqz v6, :cond_f

    .line 31
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->q:[B

    goto :goto_9

    .line 32
    :cond_f
    iget-boolean v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->r:Z

    if-eqz v3, :cond_11

    if-eqz v5, :cond_11

    .line 33
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->q:[B

    if-eqz v3, :cond_10

    .line 34
    array-length v5, v3

    array-length v6, v2

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 35
    array-length v6, v3

    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->q:[B

    array-length v3, v3

    array-length v6, v2

    invoke-static {v2, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    goto :goto_7

    :cond_10
    const-string v3, "mSpsPps is null."

    .line 37
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    .line 38
    :cond_11
    :goto_7
    invoke-direct {p0, v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a([BLandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_9

    :cond_12
    :goto_8
    const-string/jumbo v0, "size is zero, but it isn\'t end of stream"

    .line 39
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    .line 40
    :goto_9
    :try_start_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v2, "releaseOutputBuffer failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_2
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v2, "getOutputBuffer failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v2, "dequeueOutputBuffer failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :cond_13
    :goto_a
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    monitor-enter v0

    .line 48
    :try_start_4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-eqz v1, :cond_16

    .line 49
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eqz v1, :cond_14

    const/16 v2, 0x1f4

    div-int/2addr v2, v1

    goto :goto_b

    :cond_14
    const/16 v2, 0xa

    .line 50
    :goto_b
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_15

    .line 51
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 52
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->n:Ljava/lang/Runnable;

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 53
    :cond_15
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->n:Ljava/lang/Runnable;

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :cond_16
    :goto_c
    monitor-exit v0

    return-void

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1
.end method

.method private h()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->D:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->E:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->E:J

    return-void

    .line 4
    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->E:J

    long-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v6

    iget-wide v6, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->D:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->C:D

    .line 5
    iput-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->E:J

    .line 6
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->D:J

    const-wide/16 v0, -0x1

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->J:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    move-wide v0, v3

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->K:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private i()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->k:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iget-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->C:D

    double-to-int v1, v1

    sub-int v1, v0, v1

    .line 3
    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v1, v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->k:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->k:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 6
    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->l:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->F:J

    sub-long/2addr v0, v2

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "need_restart_when_down_bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->k:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/be$a;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;",
            "Lcom/tencent/liteav/videoproducer/encoder/be$a;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Lcom/tencent/liteav/base/util/q;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/Surface;

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p2, v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ab;->a(Lcom/tencent/liteav/videoproducer/encoder/w;Lcom/tencent/liteav/videoproducer/encoder/be$a;[Landroid/view/Surface;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;J)Z

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "startCodecInternal success: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/tencent/liteav/base/util/q;

    const/16 p2, 0x2d0

    const/16 v1, 0x500

    invoke-direct {p1, p2, v1}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 10
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz p2, :cond_0

    .line 11
    iget v1, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget p2, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-virtual {p1, v1, p2}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 12
    :cond_0
    new-instance p2, Landroid/util/Pair;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Landroid/view/Surface;
    .locals 7

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->g:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 81
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->A:J

    .line 82
    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    if-nez v0, :cond_0

    .line 83
    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    mul-int v0, v0, v0

    iget v1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    mul-int v1, v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    .line 85
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 86
    iget-wide v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->s:J

    .line 87
    iget-wide v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->t:J

    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->u:J

    .line 89
    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object p1

    const-string v2, "Video"

    const-string v3, "CheckVideoEncDownBps"

    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 90
    :goto_0
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->j:Z

    .line 91
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v2, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "video/hevc"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "video/avc"

    .line 92
    :goto_1
    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-ne v2, v3, :cond_3

    .line 93
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 94
    :cond_3
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-eq v0, v2, :cond_4

    if-ne v0, v3, :cond_6

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->i:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isHardwareEncoderHighProfileAllowed()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v5, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 97
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v5, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-eq v5, v2, :cond_7

    if-ne v5, v3, :cond_9

    .line 98
    :cond_7
    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    if-nez v0, :cond_9

    .line 99
    new-instance v0, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string v2, "com.liteav.storage.global"

    invoke-direct {v0, v2}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    const-string v2, "Liteav.Video.android.local.rtc.enable.high.profile"

    .line 100
    invoke-virtual {v0, v2}, Lcom/tencent/liteav/base/storage/PersistStorage;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "enable high profile from persist storage:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 103
    :cond_8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    :cond_9
    :goto_3
    const/4 v0, 0x0

    .line 104
    :try_start_0
    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->b(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 105
    :try_start_1
    new-instance v3, Lcom/tencent/liteav/videoproducer/encoder/u;

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->i:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-direct {v3, v2, v1, v5, v6}, Lcom/tencent/liteav/videoproducer/encoder/u;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    .line 106
    iput-boolean p1, v3, Lcom/tencent/liteav/videoproducer/encoder/u;->a:Z

    .line 107
    invoke-virtual {v3}, Lcom/tencent/liteav/videoproducer/encoder/u;->a()Landroid/media/MediaFormat;

    move-result-object v1

    .line 108
    invoke-direct {p0, v2, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 109
    iput-boolean v4, v3, Lcom/tencent/liteav/videoproducer/encoder/u;->b:Z

    .line 110
    invoke-virtual {v3}, Lcom/tencent/liteav/videoproducer/encoder/u;->a()Landroid/media/MediaFormat;

    move-result-object v1

    .line 111
    invoke-direct {p0, v2, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_c

    .line 112
    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 113
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    :try_start_3
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const-string/jumbo v6, "width"

    invoke-virtual {v1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    .line 115
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const-string v6, "height"

    invoke-virtual {v1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    .line 116
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const-string v6, "bitrate"

    invoke-virtual {v1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    iput v1, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    .line 117
    :try_start_4
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v6, "MediaFormat get key fail"

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v4

    invoke-static {v5, v6, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :goto_6
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start MediaCodec with encode params:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 119
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    return-object v3

    :catch_1
    move-exception p1

    goto :goto_7

    .line 120
    :cond_c
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string v1, "configure encoder failed."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    move-object v3, v0

    goto :goto_7

    :catch_3
    move-exception p1

    move-object v2, v0

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_d

    .line 121
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 122
    :cond_d
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Landroid/media/MediaCodec;)V

    .line 123
    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->c:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start encoder failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v3

    const/16 v5, 0x17

    if-lt v3, v5, :cond_e

    instance-of v3, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_e

    .line 126
    move-object v3, p1

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    .line 127
    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result v3

    const/16 v5, 0x44c

    if-ne v3, v5, :cond_e

    .line 128
    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->b:Lcom/tencent/liteav/videobase/videobase/h$c;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Insufficient resource, Start encoder failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    :cond_e
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->o:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v1, v2, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start MediaCodec failed,encode params:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "hw-video-encoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ad;->a(Lcom/tencent/liteav/videoproducer/encoder/w;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ac;->a(Lcom/tencent/liteav/videoproducer/encoder/w;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;)Z

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->I:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->w:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    const/16 p2, 0x1e

    if-le p1, p2, :cond_2

    .line 20
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string/jumbo p2, "too much unencoded frame, hw encoder error"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->n:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Landroid/media/MediaCodec;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v2, "destroy mediaCodec stop failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 150
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v1, "destroy mediaCodec release failed."

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/aa;->a(Lcom/tencent/liteav/videoproducer/encoder/w;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/af;->a(Lcom/tencent/liteav/videoproducer/encoder/w;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ae;->a(Lcom/tencent/liteav/videoproducer/encoder/w;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ag;->a(Lcom/tencent/liteav/videoproducer/encoder/w;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    return-void
.end method

.method final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->h:Lcom/tencent/liteav/base/util/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopEosTimer"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->h:Lcom/tencent/liteav/base/util/v;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/v;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->h:Lcom/tencent/liteav/base/util/v;

    :cond_0
    return-void
.end method

.method final f()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/w;->a:Ljava/lang/String;

    const-string v2, "requestSyncFrame failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
