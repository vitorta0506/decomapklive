.class public final Lcom/tencent/liteav/videoconsumer/decoder/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoconsumer/decoder/ax$a;,
        Lcom/tencent/liteav/videoconsumer/decoder/ax$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final c:Lcom/tencent/liteav/videoconsumer/decoder/ax$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/tencent/liteav/videoconsumer/decoder/ax$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final e:Lcom/tencent/liteav/videobase/utils/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field f:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

.field g:Z

.field h:J

.field i:J

.field j:J

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 3
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoDecodeControllerStatistics"

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->h:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->i:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->k:Z

    .line 6
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->j:J

    .line 7
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->l:J

    .line 8
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 9
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/ax$a;

    invoke-direct {p1, p0, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ax$a;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/ax;B)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->c:Lcom/tencent/liteav/videoconsumer/decoder/ax$a;

    .line 10
    new-instance p1, Lcom/tencent/liteav/videoconsumer/decoder/ax$b;

    invoke-direct {p1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ax$b;-><init>(B)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->d:Lcom/tencent/liteav/videoconsumer/decoder/ax$b;

    .line 11
    new-instance p1, Lcom/tencent/liteav/videobase/utils/f;

    .line 12
    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/ay;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/ay;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/ax;)V

    const-string/jumbo v1, "videoDecoder"

    const/16 v2, 0x3e8

    .line 13
    invoke-direct {p1, v1, v2, v0}, Lcom/tencent/liteav/videobase/utils/f;-><init>(Ljava/lang/String;ILcom/tencent/liteav/videobase/utils/f$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->e:Lcom/tencent/liteav/videobase/utils/f;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->c:Lcom/tencent/liteav/videoconsumer/decoder/ax$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ax$a;->a()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->d:Lcom/tencent/liteav/videoconsumer/decoder/ax$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ax$b;->a()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->e:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->f:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->g:Z

    .line 6
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->k:Z

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->i:J

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 4

    .line 8
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isIDRFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->h:J

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->k:Z

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->A:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Start decode first frame"

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a:Ljava/lang/String;

    const-string v1, "received first I frame."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->g:Z

    if-nez v0, :cond_1

    .line 14
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->i:J

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->c:Lcom/tencent/liteav/videoconsumer/decoder/ax$a;

    iget-wide v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/ax$a;->a(J)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoconsumer/decoder/az$a;Lcom/tencent/liteav/videobase/common/CodecType;)V
    .locals 1

    .line 16
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->f:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    .line 17
    sget-object v0, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    if-ne p1, v0, :cond_0

    .line 18
    sget-object p1, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->c:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    .line 19
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecoderProperty;

    invoke-direct {v0, p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$DecoderProperty;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/az$a;Lcom/tencent/liteav/videobase/common/CodecType;)V

    .line 20
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/i;->L:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-interface {p1, p2, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method final b()V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->l:J

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->l:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    .line 5
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->l:J

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->B:Lcom/tencent/liteav/videobase/videobase/i;

    iget-wide v4, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 7
    iput-wide v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/ax;->j:J

    :cond_1
    return-void
.end method
