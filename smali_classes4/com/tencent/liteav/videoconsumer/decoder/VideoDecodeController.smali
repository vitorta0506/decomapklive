.class public final Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;,
        Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final c:Lcom/tencent/liteav/videoconsumer/decoder/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/tencent/liteav/videoconsumer/decoder/ax;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final e:Z

.field final f:Lcom/tencent/liteav/base/util/j;

.field g:Lcom/tencent/liteav/base/util/p;

.field h:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;

.field i:Ljava/lang/Object;

.field j:Lcom/tencent/liteav/videobase/b/e;

.field k:Z

.field l:Lcom/tencent/liteav/videoconsumer/decoder/az;

.field m:Lorg/json/JSONArray;

.field final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field final o:Lcom/tencent/liteav/videobase/utils/j;

.field p:Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;

.field final q:Lcom/tencent/liteav/videobase/utils/k;

.field private final r:Lcom/tencent/liteav/base/b/b;

.field private s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

.field private final t:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/tencent/liteav/videoconsumer/decoder/d$d;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Z)V
    .locals 4
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoDecodeController"

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Z

    .line 5
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    .line 6
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance v0, Lcom/tencent/liteav/videobase/utils/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/utils/j;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->o:Lcom/tencent/liteav/videobase/utils/j;

    .line 9
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/ab;->a()Lcom/tencent/liteav/videoconsumer/decoder/d$d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->u:Lcom/tencent/liteav/videoconsumer/decoder/d$d;

    .line 10
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 11
    iput-boolean p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->e:Z

    .line 12
    new-instance v1, Lcom/tencent/liteav/videoconsumer/decoder/d;

    .line 13
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    .line 14
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/ExternalDecodeFactoryManager;->a()Z

    move-result v2

    .line 15
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b$a;->a()Lcom/tencent/liteav/videoconsumer/decoder/b;

    .line 16
    invoke-static {}, Lcom/tencent/liteav/videoconsumer/decoder/b;->b()Z

    move-result v3

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/tencent/liteav/videoconsumer/decoder/d;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d$d;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;ZZ)V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    .line 17
    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/ax;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ax;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/ax;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    .line 19
    new-instance p1, Lcom/tencent/liteav/videobase/utils/k;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "decoder"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/liteav/videobase/utils/k;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->q:Lcom/tencent/liteav/videobase/utils/k;

    .line 20
    new-instance p1, Lcom/tencent/liteav/base/util/j;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-direct {p1, v1, v0}, Lcom/tencent/liteav/base/util/j;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f:Lcom/tencent/liteav/base/util/j;

    .line 21
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsTranscodingMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/az$a;)V
    .locals 11

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const-string/jumbo p2, "updateDecoderType mEGLCore is null"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h()V

    .line 14
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->u:Lcom/tencent/liteav/videoconsumer/decoder/d$d;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v3

    iget-object v4, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, v4}, Lcom/tencent/liteav/videoconsumer/decoder/d$d;->a(ZLjava/nio/ByteBuffer;)Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;

    move-result-object v2

    .line 15
    sget-object v3, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    if-ne p2, v3, :cond_1

    .line 16
    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v3, v4}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    goto :goto_0

    .line 17
    :cond_1
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    .line 18
    iget-boolean v7, v3, Lcom/tencent/liteav/videoconsumer/decoder/d;->x:Z

    .line 19
    invoke-virtual {v3}, Lcom/tencent/liteav/videoconsumer/decoder/d;->c()Z

    move-result v8

    .line 20
    iget-object v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->videoFormat:Landroid/media/MediaFormat;

    if-eqz v5, :cond_2

    .line 21
    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/s;

    iget-object v9, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->m:Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    move-object v4, v3

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/tencent/liteav/videoconsumer/decoder/s;-><init>(Landroid/media/MediaFormat;ZZLorg/json/JSONArray;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    goto :goto_0

    .line 22
    :cond_2
    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/s;

    new-instance v5, Lcom/tencent/liteav/base/util/q;

    iget v4, v2, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->width:I

    iget v6, v2, Lcom/tencent/liteav/videoconsumer/decoder/SpsInfo;->height:I

    invoke-direct {v5, v4, v6}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 23
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v6

    iget-object v9, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->m:Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/tencent/liteav/videoconsumer/decoder/s;-><init>(Lcom/tencent/liteav/base/util/q;ZZZLorg/json/JSONArray;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    invoke-interface {v3}, Lcom/tencent/liteav/videoconsumer/decoder/az;->initialize()V

    .line 25
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->p:Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;

    invoke-interface {v3, v4}, Lcom/tencent/liteav/videoconsumer/decoder/az;->setServerConfig(Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;)V

    .line 26
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    invoke-interface {v3, v4}, Lcom/tencent/liteav/videoconsumer/decoder/az;->setScene(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V

    .line 27
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/tencent/liteav/videoconsumer/decoder/az;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/ba;)V

    .line 28
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 29
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "open decoder cost time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",update decoder type to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", video "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {v3, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/ax;

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/az;->getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    move-result-object v0

    iget-object p1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {p2, v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a(Lcom/tencent/liteav/videoconsumer/decoder/az$a;Lcom/tencent/liteav/videobase/common/CodecType;)V

    return-void
.end method

.method private c(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    if-nez v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const-string/jumbo v0, "video decoder is null!"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/az;->decode(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    .line 10
    iget-boolean v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/ax;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    .line 12
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 13
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->e()I

    move-result v0

    add-int/2addr p1, v0

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->Q:Lcom/tencent/liteav/videobase/videobase/i;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 16
    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 1

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ak;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    .line 6
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/av;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ad;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/at;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 1

    .line 7
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->s:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    .line 9
    iput-object p1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->z:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/aq;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f:Lcom/tencent/liteav/base/util/j;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 36
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "runnable:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is failed to post, handler:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "initializeEGLCoreInternal"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->i:Ljava/lang/Object;

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v1, v4, v4}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->q:Lcom/tencent/liteav/videobase/utils/k;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/utils/k;->a(Lcom/tencent/liteav/videobase/frame/e;)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/base/b/b;

    const-string v4, "initGLError"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "create egl core failed."

    invoke-static {v3, v4, v0, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$c;->h:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "VideoDecode: create EGLCore failed"

    invoke-interface {v0, v3, v4, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method final b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "uninitializeEGLCoreInternal()"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->q:Lcom/tencent/liteav/videobase/utils/k;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/k;->a()V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method final d()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    .line 4
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-boolean v3, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    if-eqz v3, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->updateNALTypeAccordingNALHeader()V

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    .line 9
    iget-boolean v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->e:Z

    if-nez v5, :cond_2

    .line 10
    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    iget-wide v6, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v8, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v3

    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    .line 11
    iput-wide v6, v5, Lcom/tencent/liteav/videoconsumer/decoder/d;->E:J

    .line 12
    iput v2, v5, Lcom/tencent/liteav/videoconsumer/decoder/d;->F:I

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    .line 14
    iget-wide v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->k:J

    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmp-long v11, v5, v3

    if-eqz v11, :cond_3

    iget-wide v11, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    cmp-long v13, v11, v5

    if-nez v13, :cond_3

    .line 15
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    goto/16 :goto_5

    .line 16
    :cond_3
    iget-wide v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->A:J

    cmp-long v11, v5, v3

    if-nez v11, :cond_4

    .line 17
    iget-wide v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-wide v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->A:J

    .line 18
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->B:Lcom/tencent/liteav/base/b/a;

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v5, Lcom/tencent/liteav/base/b/a;->a:J

    .line 20
    :cond_4
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->B:Lcom/tencent/liteav/base/b/a;

    invoke-virtual {v5}, Lcom/tencent/liteav/base/b/a;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    iget-wide v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v11, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->A:J

    sub-long/2addr v5, v11

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->C:F

    .line 23
    iget-wide v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-wide v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->A:J

    .line 24
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isIDRFrame()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 25
    iget-boolean v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->p:Z

    if-nez v5, :cond_6

    .line 26
    iput-boolean v10, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->p:Z

    .line 27
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x9

    new-array v6, v6, [Lcom/tencent/liteav/videoconsumer/decoder/d$a;

    .line 28
    new-instance v11, Lcom/tencent/liteav/videoconsumer/decoder/e;

    invoke-direct {v11, v1}, Lcom/tencent/liteav/videoconsumer/decoder/e;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v11, v6, v9

    .line 29
    new-instance v11, Lcom/tencent/liteav/videoconsumer/decoder/h;

    invoke-direct {v11, v1}, Lcom/tencent/liteav/videoconsumer/decoder/h;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v11, v6, v10

    .line 30
    new-instance v11, Lcom/tencent/liteav/videoconsumer/decoder/i;

    invoke-direct {v11, v1}, Lcom/tencent/liteav/videoconsumer/decoder/i;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v11, v6, v8

    .line 31
    new-instance v11, Lcom/tencent/liteav/videoconsumer/decoder/j;

    invoke-direct {v11, v1}, Lcom/tencent/liteav/videoconsumer/decoder/j;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v11, v6, v7

    .line 32
    new-instance v11, Lcom/tencent/liteav/videoconsumer/decoder/k;

    invoke-direct {v11, v1}, Lcom/tencent/liteav/videoconsumer/decoder/k;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v11, v6, v2

    const/4 v11, 0x5

    .line 33
    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/l;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/l;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v12, v6, v11

    const/4 v11, 0x6

    .line 34
    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/m;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/m;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v12, v6, v11

    const/4 v11, 0x7

    .line 35
    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/n;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/n;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v12, v6, v11

    const/16 v11, 0x8

    .line 36
    new-instance v12, Lcom/tencent/liteav/videoconsumer/decoder/o;

    invoke-direct {v12, v1}, Lcom/tencent/liteav/videoconsumer/decoder/o;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v12, v6, v11

    .line 37
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    iget-object v6, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->g:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    sget-object v11, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    if-eq v6, v11, :cond_7

    new-array v6, v8, [Lcom/tencent/liteav/videoconsumer/decoder/d$a;

    .line 39
    new-instance v11, Lcom/tencent/liteav/videoconsumer/decoder/f;

    invoke-direct {v11, v1}, Lcom/tencent/liteav/videoconsumer/decoder/f;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v11, v6, v9

    .line 40
    new-instance v11, Lcom/tencent/liteav/videoconsumer/decoder/g;

    invoke-direct {v11, v1}, Lcom/tencent/liteav/videoconsumer/decoder/g;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d;)V

    aput-object v11, v6, v10

    .line 41
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    const/4 v6, 0x0

    .line 42
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tencent/liteav/videoconsumer/decoder/d$a;

    .line 43
    invoke-interface {v11, v0}, Lcom/tencent/liteav/videoconsumer/decoder/d$a;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Lcom/tencent/liteav/videoconsumer/decoder/d$b;

    move-result-object v11

    if-eqz v11, :cond_8

    if-eqz v6, :cond_b

    .line 44
    iget-object v12, v11, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    invoke-static {v12}, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a(Lcom/tencent/liteav/videoconsumer/decoder/d$c;)I

    move-result v12

    iget-object v13, v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    invoke-static {v13}, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a(Lcom/tencent/liteav/videoconsumer/decoder/d$c;)I

    move-result v13

    if-gt v12, v13, :cond_a

    iget-object v12, v11, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    .line 45
    invoke-static {v12}, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a(Lcom/tencent/liteav/videoconsumer/decoder/d$c;)I

    move-result v12

    iget-object v13, v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    invoke-static {v13}, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a(Lcom/tencent/liteav/videoconsumer/decoder/d$c;)I

    move-result v13

    if-ne v12, v13, :cond_9

    iget-object v12, v11, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 46
    iget v12, v12, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->mPriority:I

    .line 47
    iget-object v13, v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 48
    iget v13, v13, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->mPriority:I

    if-le v12, v13, :cond_9

    goto :goto_1

    :cond_9
    const/4 v12, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_8

    :cond_b
    move-object v6, v11

    goto :goto_0

    :cond_c
    if-eqz v6, :cond_d

    .line 49
    iget-object v5, v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v11, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    if-eq v5, v11, :cond_d

    .line 50
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", mUsingDecoderType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", mSwitchReason = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->j:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v6, :cond_e

    goto :goto_3

    .line 51
    :cond_e
    new-instance v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;

    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v11, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    invoke-direct {v6, v5, v11}, Lcom/tencent/liteav/videoconsumer/decoder/d$b;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/d$c;Lcom/tencent/liteav/videoconsumer/decoder/d$e;)V

    .line 52
    :goto_3
    iget-object v5, v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    sget-object v11, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->d:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    if-ne v5, v11, :cond_10

    .line 53
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    sget-object v11, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    if-eq v5, v11, :cond_f

    iget-object v5, v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 54
    iget v12, v5, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->mPriority:I

    .line 55
    iget-object v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->j:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 56
    iget v13, v13, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->mPriority:I

    if-lt v12, v13, :cond_f

    .line 57
    iput-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->j:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 58
    iput-object v11, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    .line 59
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v11, Lcom/tencent/liteav/videobase/videobase/h$b;->g:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "UsingDecoderType:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    invoke-interface {v5, v11, v12, v13}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 60
    :cond_f
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    goto :goto_5

    .line 61
    :cond_10
    sget-object v11, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    if-ne v5, v11, :cond_12

    .line 62
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    sget-object v11, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    if-eq v5, v11, :cond_11

    iget-object v5, v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->b:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 63
    iget v12, v5, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->mPriority:I

    .line 64
    iget-object v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->j:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 65
    iget v13, v13, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->mPriority:I

    if-lt v12, v13, :cond_11

    .line 66
    iput-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->j:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 67
    iput-object v11, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    .line 68
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v11, Lcom/tencent/liteav/videobase/videobase/h$b;->g:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "UsingDecoderType:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    invoke-interface {v5, v11, v12, v13}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 69
    :cond_11
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    goto :goto_5

    .line 70
    :cond_12
    :goto_4
    iget-object v5, v6, Lcom/tencent/liteav/videoconsumer/decoder/d$b;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    goto :goto_5

    .line 71
    :cond_13
    iget-boolean v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->G:Z

    if-nez v5, :cond_15

    .line 72
    iget-boolean v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->p:Z

    if-eqz v5, :cond_14

    .line 73
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    goto :goto_5

    .line 74
    :cond_14
    iget v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->q:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->q:I

    const/16 v6, 0x28

    if-le v5, v6, :cond_15

    .line 75
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    const-string v6, "decoding too many frame(>40) without output! request key frame now."

    invoke-static {v5, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput v9, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->q:I

    .line 77
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->f:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    goto :goto_5

    .line 78
    :cond_15
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->b:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    .line 79
    :goto_5
    sget-object v6, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->a:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    if-ne v5, v6, :cond_1b

    .line 80
    iget-wide v11, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->D:J

    cmp-long v5, v11, v3

    if-eqz v5, :cond_1a

    .line 81
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->c()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->D:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x5dc

    cmp-long v5, v11, v13

    if-gez v5, :cond_16

    goto :goto_7

    .line 82
    :cond_16
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isIDRFrame()Z

    move-result v5

    if-nez v5, :cond_17

    .line 83
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->b:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    goto :goto_8

    .line 84
    :cond_17
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    sget-object v6, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    if-ne v5, v6, :cond_18

    .line 85
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/d;->b(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->u:I

    iget v11, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->H:I

    if-le v5, v11, :cond_18

    .line 86
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    iput-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    .line 87
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$e;->f:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    iput-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->j:Lcom/tencent/liteav/videoconsumer/decoder/d$e;

    .line 88
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->c:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v6, Lcom/tencent/liteav/videobase/videobase/h$b;->g:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "UsingDecoderType:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v11, v12}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->e:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    goto :goto_6

    .line 90
    :cond_18
    iget-object v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->h:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    if-ne v5, v6, :cond_19

    .line 91
    iget v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->u:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->u:I

    .line 92
    :cond_19
    sget-object v5, Lcom/tencent/liteav/videoconsumer/decoder/d$c;->c:Lcom/tencent/liteav/videoconsumer/decoder/d$c;

    .line 93
    :goto_6
    iget-object v6, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->a:Ljava/lang/String;

    const-string v11, "decoder thread stuck, switch decode type, instruction:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    :goto_7
    move-object v5, v6

    .line 94
    :cond_1b
    :goto_8
    sget-object v6, Lcom/tencent/liteav/videoconsumer/decoder/d$1;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v6, v6, v11

    if-eq v6, v10, :cond_1e

    if-eq v6, v8, :cond_1e

    if-eq v6, v7, :cond_1e

    if-eq v6, v2, :cond_1c

    goto :goto_9

    .line 95
    :cond_1c
    iget-wide v6, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->k:J

    iget-wide v11, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    cmp-long v2, v6, v11

    if-eqz v2, :cond_1d

    .line 96
    iget v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->r:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->r:I

    .line 97
    iput-wide v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->D:J

    goto :goto_9

    .line 98
    :cond_1d
    iget-wide v6, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->D:J

    cmp-long v2, v6, v3

    if-nez v2, :cond_1f

    .line 99
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->D:J

    goto :goto_9

    .line 100
    :cond_1e
    iput v10, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->r:I

    .line 101
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v2

    iput-boolean v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->i:Z

    .line 102
    iput-wide v3, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->D:J

    .line 103
    :cond_1f
    :goto_9
    iget-wide v2, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iput-wide v2, v1, Lcom/tencent/liteav/videoconsumer/decoder/d;->k:J

    .line 104
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$1;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_a

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;

    if-eqz v0, :cond_20

    .line 106
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onDecodeFailed()V

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->p:Lcom/tencent/liteav/videobase/videobase/h$c;

    const-string v2, "decoder error"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;

    if-eqz v0, :cond_20

    .line 109
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onRequestKeyFrame()V

    return-void

    .line 110
    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f()Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/az$a;)V

    .line 112
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    .line 113
    :pswitch_3
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/az$a;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    .line 115
    :pswitch_4
    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->b:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Lcom/tencent/liteav/videoconsumer/decoder/az$a;)V

    .line 116
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    .line 117
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    .line 118
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    .line 119
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    :cond_20
    :goto_a
    return-void

    :catchall_0
    move-exception v0

    .line 120
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final e()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final f()Lcom/tencent/liteav/videoconsumer/decoder/az$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/az;->getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ac;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/az;->stop()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/az;->uninitialize()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->o:Lcom/tencent/liteav/videobase/utils/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/j;->b()V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ag;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    .line 3
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ah;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final j()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final k()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 2
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->r:Lcom/tencent/liteav/base/b/b;

    const-string v3, "makeCurrentError"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const-string v1, "make current failed."

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public final onAbandonDecodingFramesCompleted()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/am;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDecodeCompleted()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ao;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDecodeFailed()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/aj;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDecodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->o:Lcom/tencent/liteav/videobase/utils/j;

    invoke-virtual {v2, p1}, Lcom/tencent/liteav/videobase/utils/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 3
    invoke-static {p0, v0, v1, p2, p3}, Lcom/tencent/liteav/videoconsumer/decoder/ai;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;JJ)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->o:Lcom/tencent/liteav/videobase/utils/j;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videobase/utils/j;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    :cond_0
    return-void
.end method

.method public final onDecodeLatencyChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/ap;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onFrameEnqueuedToDecoder()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/an;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onRequestKeyFrame()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/al;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
