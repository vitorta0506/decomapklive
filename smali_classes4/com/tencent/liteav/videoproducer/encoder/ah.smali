.class public final Lcom/tencent/liteav/videoproducer/encoder/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/base/util/v$a;
.implements Lcom/tencent/liteav/videoproducer/encoder/be$a;


# static fields
.field private static final b:Lcom/tencent/liteav/videobase/frame/PixelFrame;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lcom/tencent/liteav/videobase/utils/h;

.field private final d:Landroid/os/Bundle;

.field private e:Z

.field private f:Lcom/tencent/liteav/base/util/CustomHandler;

.field private g:Lcom/tencent/liteav/base/util/v;

.field private h:Lcom/tencent/liteav/videoproducer/encoder/be;

.field private i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

.field private j:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private k:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private l:Z

.field private m:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:Z

.field private t:Z

.field private final u:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final v:Lcom/tencent/liteav/videoproducer/encoder/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w:Lcom/tencent/liteav/videobase/utils/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x:Lcom/tencent/liteav/videoproducer/encoder/bd;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final y:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    sput-object v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Z)V
    .locals 4
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->d:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->e:Z

    .line 4
    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->j:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 5
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->k:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 6
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->l:Z

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->q:J

    .line 8
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->r:Z

    .line 9
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->s:Z

    .line 10
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->t:Z

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoEncodeController_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->u:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 13
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b;

    .line 14
    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isHWHevcEncodeSupport()Z

    move-result v1

    .line 15
    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isSWHevcEncodeSupport()Z

    move-result v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/b;-><init>(ZZLcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    .line 16
    new-instance v0, Lcom/tencent/liteav/videobase/utils/f;

    .line 17
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/ai;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/encoder/ai;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ah;)V

    const-string v2, "VideoEncodeController"

    const/16 v3, 0x7d0

    .line 18
    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/liteav/videobase/utils/f;-><init>(Ljava/lang/String;ILcom/tencent/liteav/videobase/utils/f$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->w:Lcom/tencent/liteav/videobase/utils/f;

    .line 19
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/bd;

    invoke-direct {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/bd;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->x:Lcom/tencent/liteav/videoproducer/encoder/bd;

    .line 20
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->y:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    .line 21
    iput-boolean p3, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->z:Z

    if-eqz p3, :cond_0

    .line 22
    new-instance p1, Lcom/tencent/liteav/videobase/utils/b;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/utils/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/liteav/videobase/utils/j;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/tencent/liteav/videobase/utils/j;-><init>(I)V

    :goto_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->c:Lcom/tencent/liteav/videobase/utils/h;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object p0

    .line 87
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v0
.end method

.method private a(JJ)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->o:J

    .line 73
    iput-wide p3, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->p:J

    return-void
.end method

.method private a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;)V
    .locals 12
    .param p1    # Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 25
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->j()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    move-result-object v2

    .line 26
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->k()Lcom/tencent/liteav/videobase/common/CodecType;

    move-result-object v3

    .line 27
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->l()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    move-result-object v4

    .line 28
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->i()V

    .line 29
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->m:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 30
    invoke-virtual {v5}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isHardwareEncoderAllowed()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    .line 31
    sget-object v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v5, p1, :cond_2

    .line 32
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/o;

    iget-object v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->d:Landroid/os/Bundle;

    iget-object v9, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->u:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v10, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->y:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    invoke-direct {v5, v8, v9, v10}, Lcom/tencent/liteav/videoproducer/encoder/o;-><init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    .line 33
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v8, "create HardwareVideoEncoder"

    invoke-static {v5, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_2
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;

    iget-object v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->u:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v9, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->y:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    invoke-direct {v5, v8, v9}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    .line 35
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v8, "create SoftwareVideoEncoder"

    invoke-static {v5, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_2
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    invoke-interface {v5}, Lcom/tencent/liteav/videoproducer/encoder/be;->initialize()V

    .line 37
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    iget-object v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->m:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-interface {v5, v8}, Lcom/tencent/liteav/videoproducer/encoder/be;->setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    .line 38
    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {v5}, Lcom/tencent/liteav/videoproducer/encoder/b;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v5

    .line 39
    iget-wide v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->p:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    .line 40
    iget-wide v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->o:J

    const-wide/16 v10, 0x14

    add-long/2addr v8, v10

    iput-wide v8, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    .line 41
    iget-object v8, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    invoke-interface {v8, v5, p0}, Lcom/tencent/liteav/videoproducer/encoder/be;->start(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/be$a;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 42
    iget-object v7, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->u:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v8, Lcom/tencent/liteav/videobase/videobase/h$b;->p:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v9, "start encoder success."

    invoke-interface {v7, v8, v9, v6}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 43
    :cond_3
    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    .line 44
    iput-boolean v7, v6, Lcom/tencent/liteav/videoproducer/encoder/b;->h:Z

    :goto_3
    if-ne p1, v2, :cond_4

    .line 45
    iget-object v2, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v2, v3, :cond_4

    iget-object v2, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    if-eq v2, v4, :cond_6

    .line 46
    :cond_4
    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProperty;

    .line 47
    invoke-virtual {v5}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesRps()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    :goto_4
    iget-object v4, v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-direct {v2, p1, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProperty;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;Lcom/tencent/liteav/videobase/common/CodecType;)V

    .line 48
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->u:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/i;->G:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->y:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    .line 49
    iget v4, v4, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    .line 50
    invoke-interface {p1, v3, v4, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    .line 51
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open encoder cost time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;D)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "encoder input fps: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;I)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/be;->setRPSNearestREFSize(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;II)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/be;->ackRPSRecvFrameIndex(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/be;->takeSnapshot(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->k:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setEncodeRotation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->k:Lcom/tencent/liteav/videobase/utils/Rotation;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onEncodedFail: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->u:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$a;->h:Lcom/tencent/liteav/videobase/videobase/h$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "encode fail:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reconfig: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/b;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/b;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    .line 140
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/encoder/b;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object p1

    .line 141
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz v1, :cond_0

    .line 142
    iget v2, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-interface {v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/be;->setFps(I)V

    .line 143
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    iget v2, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    invoke-interface {v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/be;->setBitrate(I)V

    .line 144
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eq p1, v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->n()V

    .line 146
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->m()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 147
    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->gop:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    .line 149
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videoproducer/encoder/b;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    .line 150
    iget-wide v0, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    iget-wide p1, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(JJ)V

    .line 151
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->m()V

    return-void

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->n()V

    return-void

    .line 154
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string p1, "invalid params, Start failed."

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, p1, :cond_2

    .line 55
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "strategy = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    .line 58
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->setRPSEncodeSupported(Z)V

    .line 60
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->q:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->K:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->r:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    .line 61
    iget p0, p0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    .line 62
    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getEncodeAbility()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    move-result-object v1

    .line 63
    invoke-interface {p1, v0, p0, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->m:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;Ljava/lang/String;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEncodeError: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;ZI)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    .line 92
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->s:Z

    .line 93
    iput p2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->t:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/ah;ZLcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 94
    iget-boolean v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->s:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 95
    iput-boolean v4, v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->s:Z

    .line 96
    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "encode first frame cost time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->q:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v3, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v1, :cond_6

    .line 99
    iget-wide v5, v2, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    iget-wide v7, v2, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(JJ)V

    .line 100
    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    .line 101
    iget-wide v5, v3, Lcom/tencent/liteav/videoproducer/encoder/b;->b:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/tencent/liteav/videoproducer/encoder/b;->b:J

    .line 102
    iget-object v3, v3, Lcom/tencent/liteav/videoproducer/encoder/b;->u:Lcom/tencent/liteav/videoproducer/encoder/v;

    .line 103
    iget-object v5, v2, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_1

    .line 104
    iget-object v3, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->a:Ljava/lang/String;

    const-string v4, "encodedVideoFrame is null."

    invoke-static {v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 105
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 106
    iget-wide v9, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->c:J

    iget v11, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->i:I

    int-to-long v11, v11

    add-long/2addr v11, v9

    cmp-long v13, v5, v11

    if-gtz v13, :cond_2

    .line 107
    iget-wide v5, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->d:J

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->d:J

    goto :goto_0

    .line 108
    :cond_2
    iget-wide v11, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->d:J

    long-to-double v11, v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double v11, v11, v13

    sub-long v9, v5, v9

    long-to-double v9, v9

    div-double/2addr v11, v9

    iput-wide v11, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->b:D

    .line 109
    iput-wide v7, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->d:J

    .line 110
    iput-wide v5, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->c:J

    .line 111
    iget-object v5, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->h:Lcom/tencent/liteav/videoproducer/encoder/v$a;

    if-eqz v5, :cond_3

    .line 112
    invoke-interface {v5, v11, v12}, Lcom/tencent/liteav/videoproducer/encoder/v$a;->a(D)V

    .line 113
    :cond_3
    :goto_0
    iget-object v5, v2, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    sget-object v6, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v2, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    if-eqz v4, :cond_5

    .line 116
    iget-wide v11, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->f:J

    iget v4, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->j:I

    int-to-long v13, v4

    add-long/2addr v13, v11

    cmp-long v4, v9, v13

    if-lez v4, :cond_5

    .line 117
    iget-wide v13, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->g:J

    long-to-double v13, v13

    const-wide v15, 0x40bf400000000000L    # 8000.0

    mul-double v13, v13, v15

    sub-long v11, v9, v11

    long-to-double v11, v11

    div-double/2addr v13, v11

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    div-double/2addr v13, v11

    double-to-long v11, v13

    iput-wide v11, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->e:J

    const-wide/16 v13, 0x0

    .line 118
    iput-wide v13, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->g:J

    .line 119
    iput-wide v9, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->f:J

    .line 120
    iget-object v4, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->h:Lcom/tencent/liteav/videoproducer/encoder/v$a;

    if-eqz v4, :cond_5

    .line 121
    invoke-interface {v4, v11, v12}, Lcom/tencent/liteav/videoproducer/encoder/v$a;->a(J)V

    .line 122
    :cond_5
    iget-wide v9, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->g:J

    add-long/2addr v9, v5

    iput-wide v9, v3, Lcom/tencent/liteav/videoproducer/encoder/v;->g:J

    .line 123
    :goto_2
    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->x:Lcom/tencent/liteav/videoproducer/encoder/bd;

    .line 124
    iget-object v4, v3, Lcom/tencent/liteav/videoproducer/encoder/bd;->c:Ljava/util/Map;

    iget-wide v5, v2, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 125
    iget-object v4, v3, Lcom/tencent/liteav/videoproducer/encoder/bd;->c:Ljava/util/Map;

    iget-wide v5, v2, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    .line 127
    iget-wide v4, v3, Lcom/tencent/liteav/videoproducer/encoder/bd;->e:J

    add-long/2addr v4, v7

    iput-wide v4, v3, Lcom/tencent/liteav/videoproducer/encoder/bd;->e:J

    .line 128
    iget-wide v4, v3, Lcom/tencent/liteav/videoproducer/encoder/bd;->d:J

    add-long/2addr v4, v9

    iput-wide v4, v3, Lcom/tencent/liteav/videoproducer/encoder/bd;->d:J

    .line 129
    iget-object v3, v3, Lcom/tencent/liteav/videoproducer/encoder/bd;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v4, Lcom/tencent/liteav/videobase/videobase/i;->I:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    goto :goto_3

    .line 130
    :cond_6
    iget-object v3, v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v4, "got eos"

    invoke-static {v3, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_7
    :goto_3
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    if-eqz v0, :cond_8

    .line 132
    invoke-interface {v0, v2, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_8
    return-void
.end method

.method private b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/ah;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/tencent/liteav/videoproducer/encoder/be;->signalEndOfStream()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->c(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/be;->encodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/encoder/ah;)V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p0}, Lcom/tencent/liteav/videoproducer/encoder/be;->restartIDRFrame()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/encoder/ah;I)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz p0, :cond_0

    .line 15
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/be;->setRPSIFrameFPS(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->j:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "set camera rotation to: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->j:Lcom/tencent/liteav/videobase/utils/Rotation;

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 2

    .line 32
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 33
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->j:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->postRotate(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 34
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->k:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->postRotate(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 35
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->l:Z

    if-nez p1, :cond_0

    return-object v0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->j:Lcom/tencent/liteav/videobase/utils/Rotation;

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    :goto_1
    return-object v0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/encoder/ah;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->n()V

    .line 5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->i()V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->c:Lcom/tencent/liteav/videobase/utils/h;

    invoke-interface {v0}, Lcom/tencent/liteav/videobase/utils/h;->b()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->r:Z

    .line 8
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->s:Z

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->w:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    .line 11
    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/b;->b()V

    const/4 v2, 0x0

    .line 12
    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 13
    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const-wide/16 v3, 0x0

    .line 14
    iput-wide v3, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->c:J

    const/4 v5, 0x0

    .line 15
    iput v5, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->d:F

    .line 16
    iput v5, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->e:F

    .line 17
    iput v5, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->f:F

    const-wide/16 v5, 0x0

    .line 18
    iput-wide v5, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->g:D

    .line 19
    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->h:Z

    .line 20
    sget-object v5, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    iput-object v5, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    .line 21
    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->i:Z

    .line 22
    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    .line 23
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->l:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 24
    iput v0, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->m:I

    .line 25
    iput v0, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->n:I

    .line 26
    iput-boolean v0, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->s:Z

    .line 27
    iput v0, v1, Lcom/tencent/liteav/videoproducer/encoder/b;->t:I

    .line 28
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->x:Lcom/tencent/liteav/videoproducer/encoder/bd;

    .line 29
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    iput-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->e:J

    .line 31
    iput-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/bd;->d:J

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/encoder/ah;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->g()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/encoder/ah;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->r:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v1, "encoder receive first frame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->q:J

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->m()V

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->r:Z

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->w:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->a()V

    return-void
.end method

.method private f()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/encoder/ah;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->t:Z

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->c:Lcom/tencent/liteav/videobase/utils/h;

    invoke-interface {v0}, Lcom/tencent/liteav/videobase/utils/h;->a()Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->x:Lcom/tencent/liteav/videoproducer/encoder/bd;

    .line 4
    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bd;->f:Lcom/tencent/liteav/base/util/v;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Lcom/tencent/liteav/base/util/v;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/tencent/liteav/base/util/v;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/v$a;)V

    iput-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bd;->f:Lcom/tencent/liteav/base/util/v;

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/base/util/v;->a(II)V

    .line 7
    :cond_1
    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bd;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bd;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Duplicate timestamp!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/bd;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    .line 11
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoproducer/encoder/b;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videoproducer/encoder/b$d;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/ah$2;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 13
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/ah;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eq v0, v1, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v1, "encode ask instruction return default."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_4
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/ah;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eq v0, v1, :cond_6

    .line 17
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->x:Lcom/tencent/liteav/videoproducer/encoder/bd;

    .line 18
    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/bd;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/bd;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 21
    :cond_6
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$a;->i:Lcom/tencent/liteav/videobase/videobase/h$a;

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V

    return-void

    .line 22
    :cond_7
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;)V

    .line 23
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void

    .line 24
    :cond_8
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;)V

    .line 25
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void

    .line 26
    :cond_9
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->h()V

    .line 27
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void

    .line 28
    :cond_a
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->b(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method static synthetic h(Lcom/tencent/liteav/videoproducer/encoder/ah;)Lcom/tencent/liteav/base/util/CustomHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->j()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/be;->stop()V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/be;->uninitialize()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->u:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->w:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "stop encoder success"

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/tencent/liteav/videoproducer/encoder/ah;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->t:Z

    return v0
.end method

.method static synthetic j(Lcom/tencent/liteav/videoproducer/encoder/ah;)Lcom/tencent/liteav/base/util/CustomHandler;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    return-object v0
.end method

.method private j()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/be;->getEncoderType()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/tencent/liteav/videobase/common/CodecType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/be;->getEncodeParams()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/liteav/videoproducer/encoder/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->h()V

    return-void
.end method

.method private l()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->h:Lcom/tencent/liteav/videoproducer/encoder/be;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/be;->getEncodeParams()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    return-object v0
.end method

.method private m()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->g:Lcom/tencent/liteav/base/util/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string/jumbo v1, "timer is not null before start."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string/jumbo v1, "startInternal handler is null."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance v1, Lcom/tencent/liteav/base/util/v;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/tencent/liteav/base/util/v;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/v$a;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->g:Lcom/tencent/liteav/base/util/v;

    const/4 v0, 0x0

    const/16 v2, 0xf

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/tencent/liteav/base/util/v;->a(II)V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/b;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v0

    .line 10
    iget v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    int-to-long v6, v0

    div-long/2addr v1, v6

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->n:J

    return-void

    .line 12
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x14

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->n:J

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->g:Lcom/tencent/liteav/base/util/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/v;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->g:Lcom/tencent/liteav/base/util/v;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->t:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v1, "already initialzied"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v1, "initialzie"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "video-encoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->t:Z

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 19
    :cond_1
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ay;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 20
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->e:Z

    if-eqz v0, :cond_2

    return-void

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->c:Lcom/tencent/liteav/videobase/utils/h;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videobase/utils/h;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 22
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->f()Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/az;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "encodeFrameInternal"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 1

    .line 64
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/bc;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/utils/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "setCameraRotation"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 1

    .line 74
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ao;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "reconfig"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ax;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)Ljava/lang/Runnable;

    move-result-object p1

    const-string p2, "Start"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V
    .locals 1

    .line 52
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/bb;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "setEncodeStrategy"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 1

    .line 15
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/aw;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "setServerConfig"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->t:Z

    if-nez v0, :cond_0

    .line 77
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v0, "runOnEncodeThread before initialize! "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->f:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 81
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v0, "ignore runnable: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 83
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 84
    :cond_2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 85
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ah$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/ah$1;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ah;)V

    const-string/jumbo v1, "uninitialize"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 1

    .line 11
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/aj;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/utils/Rotation;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "setEncodeRotation"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->e:Z

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->c:Lcom/tencent/liteav/videobase/utils/h;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/ah;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videobase/utils/h;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ba;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "Stop"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final e()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 4

    .line 8
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/ap;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const-string v1, "getEncodeParams"

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 10
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    instance-of v1, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v2, "getEncodeParams future task timeout:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v2, "getEncodeParams future task error: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_0
    monitor-enter p0

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/b;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v0

    .line 16
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    .line 17
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 18
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final onEncodeError(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ar;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "onEncodeError"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/av;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/videobase/h$a;)Ljava/lang/Runnable;

    move-result-object p1

    const-string v0, "onEncodedFail"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string p2, "onEncodedNAL encoded frame is null."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->t:Z

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string p2, "onEncodedNAL called when uninitialized!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/videoproducer/encoder/au;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;ZLcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Ljava/lang/Runnable;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onOutputFormatChanged: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public final onRequestRestart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v1, "onRequestRestart"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/aq;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/lang/Runnable;

    move-result-object v0

    const-string v1, "restartEncoder"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final onRpsFrameRateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/at;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;ZI)Ljava/lang/Runnable;

    move-result-object p1

    const-string p2, "onRpsFrameRateChanged"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final onTimeout()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->n:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->v:Lcom/tencent/liteav/videoproducer/encoder/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/b;->a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eqz v1, :cond_1

    .line 4
    iget-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->n:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    int-to-long v5, v0

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->n:J

    .line 5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->g()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah;->a:Ljava/lang/String;

    const-string v1, "onTimeout: encode param is null."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
