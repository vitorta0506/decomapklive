.class public final Lcom/tencent/liteav/videoproducer/encoder/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/base/util/v$a;
.implements Lcom/tencent/liteav/videoproducer/encoder/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/encoder/b$c;,
        Lcom/tencent/liteav/videoproducer/encoder/b$a;,
        Lcom/tencent/liteav/videoproducer/encoder/b$b;,
        Lcom/tencent/liteav/videoproducer/encoder/b$e;,
        Lcom/tencent/liteav/videoproducer/encoder/b$d;
    }
.end annotation


# static fields
.field private static final v:Lcom/tencent/liteav/videoproducer/encoder/b$b;


# instance fields
.field private A:Z

.field private B:Z

.field final a:Ljava/lang/String;

.field b:J

.field c:J

.field d:F

.field e:F

.field f:F

.field g:D

.field h:Z

.field i:Z

.field j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

.field k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

.field l:Lcom/tencent/liteav/videoproducer/encoder/b$e;

.field m:I

.field n:I

.field o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field final q:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final r:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

.field s:Z

.field t:I

.field final u:Lcom/tencent/liteav/videoproducer/encoder/v;

.field private w:J

.field private x:J

.field private y:J

.field private z:Lcom/tencent/liteav/base/util/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    sput-object v0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-void
.end method

.method public constructor <init>(ZZLcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2
    .param p3    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->w:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->b:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->x:J

    .line 5
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->y:J

    .line 6
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->c:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->d:F

    .line 8
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->e:F

    .line 9
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->f:F

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->g:D

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->h:Z

    .line 12
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->i:Z

    .line 13
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    .line 15
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->l:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 16
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->m:I

    .line 17
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->n:I

    .line 18
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->s:Z

    .line 19
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->t:I

    .line 20
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->q:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 21
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->A:Z

    .line 22
    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->B:Z

    .line 23
    iput-object p4, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->r:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    .line 24
    new-instance p1, Lcom/tencent/liteav/videoproducer/encoder/v;

    invoke-direct {p1, p0, p4}, Lcom/tencent/liteav/videoproducer/encoder/v;-><init>(Lcom/tencent/liteav/videoproducer/encoder/v$a;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->u:Lcom/tencent/liteav/videoproducer/encoder/v;

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "EncoderSupervisor_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    .line 80
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object p0

    .line 81
    :cond_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    .line 82
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v2, :cond_2

    .line 83
    new-instance v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    .line 84
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseFrameIndex:J

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setBaseFrameIndex(J)V

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-wide v3, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->baseGopIndex:J

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setBaseGopIndex(J)V

    .line 86
    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getReferenceStrategy()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    move-result-object v0

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    if-ne v0, v3, :cond_1

    .line 87
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setEncoderProfile(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getReferenceStrategy()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setReferenceStrategy(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setFps(I)V

    .line 90
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    .line 91
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setBitrate(I)V

    .line 92
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 93
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    :cond_2
    return-object v1
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v3, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v4, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_4
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->A:Z

    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->B:Z

    if-eqz v2, :cond_6

    .line 7
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->h()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object p0

    if-nez p0, :cond_5

    if-nez v0, :cond_5

    .line 8
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    :cond_5
    return-object p0

    .line 9
    :cond_6
    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->B:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v1, v2, :cond_8

    if-eqz v0, :cond_7

    .line 11
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 12
    :cond_7
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 13
    :cond_8
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->j:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    :cond_9
    if-nez v1, :cond_c

    if-eqz v2, :cond_c

    .line 15
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v1, v2, :cond_b

    if-eqz v0, :cond_a

    .line 16
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 17
    :cond_a
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 18
    :cond_b
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 19
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->j:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 20
    :cond_c
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkEncodeH265, enable h265 failed because encode strategy conflict, mIsHWSupportH265:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSwSupportH265:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mUsingEncodeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUsingEncodeStrategy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->c()V

    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    .line 23
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->g()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    .line 7
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object p0

    .line 8
    :cond_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    .line 9
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eq v2, v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne p0, v0, :cond_1

    .line 11
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    :cond_1
    return-object v1
.end method

.method private c()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->setHevcEncodeSupported(Z)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->q:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->K:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->r:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    .line 3
    iget v2, v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->mValue:I

    .line 4
    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getEncodeAbility()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    move-result-object v3

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->g()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object p0

    return-object p0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->w:J

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkFrameInOutDifference in frame:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->w:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " out frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->d:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object p0
.end method

.method private e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private f()Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->h:Z

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    const/4 v3, 0x5

    if-ne v1, v2, :cond_7

    .line 4
    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->m:I

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v1, :cond_1

    .line 6
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object v0

    .line 7
    :cond_1
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v2, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v1, v2, :cond_5

    .line 8
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->A:Z

    .line 9
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->B:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->n:I

    if-ge v1, v3, :cond_2

    .line 10
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->j:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    .line 11
    :cond_2
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->m:I

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->c()V

    .line 16
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->h()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object v0

    if-nez v0, :cond_4

    .line 17
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->i:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    :cond_4
    return-object v0

    .line 18
    :cond_5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->n:I

    if-ge v0, v3, :cond_6

    .line 19
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->i:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    .line 20
    :cond_6
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->e:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    .line 21
    :cond_7
    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->n:I

    .line 22
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v1, :cond_8

    .line 23
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object v0

    .line 24
    :cond_8
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v2, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v1, v2, :cond_c

    .line 25
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->B:Z

    .line 26
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->A:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->m:I

    if-gtz v1, :cond_9

    .line 27
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->j:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    .line 28
    :cond_9
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->n:I

    .line 29
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setCodecType(Lcom/tencent/liteav/videobase/common/CodecType;)V

    .line 32
    :cond_a
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->c()V

    .line 33
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->h()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object v0

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->i:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    :cond_b
    return-object v0

    .line 35
    :cond_c
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->m:I

    if-gtz v0, :cond_d

    .line 36
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->i:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    .line 37
    :cond_d
    iget v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->n:I

    if-lt v0, v3, :cond_e

    .line 38
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->e:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    .line 39
    :cond_e
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->i:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->f()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object p0

    return-object p0
.end method

.method private g()Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v3, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v4, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->h()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object v1

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 4
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    :cond_6
    return-object v1
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v1, :cond_1

    .line 6
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->x:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->x:J

    .line 9
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->y:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 10
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->e:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->b:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->y:J

    .line 12
    :cond_1
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object p0
.end method

.method private h()Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->d:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v1, v2, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->b:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-nez v2, :cond_4

    if-eq v0, v1, :cond_3

    .line 4
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->b:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    .line 6
    :cond_3
    :goto_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->b:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->i:Z

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->m:I

    if-gtz p0, :cond_0

    .line 10
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->f:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_6

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    mul-int v2, v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x1

    const/16 v3, 0x2710

    if-eqz v2, :cond_2

    if-gt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz p0, :cond_3

    iget v4, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v5, p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    mul-int v4, v4, v5

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    if-gt v4, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    if-nez p0, :cond_6

    if-eqz v2, :cond_6

    .line 5
    :cond_5
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->c:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 6
    :cond_6
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object p0
.end method

.method static synthetic j(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesRps()Z

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesRps()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eq v0, v2, :cond_5

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_2

    .line 8
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq p0, v1, :cond_2

    .line 9
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$e;->h:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 10
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v2, p0, :cond_3

    .line 11
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$e;->h:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$e;->h:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkRpsStatus, enable rps failed while current encode strategy is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->e:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->h:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    .line 15
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setReferenceStrategy(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;)V

    :cond_5
    :goto_1
    return-object v1
.end method

.method static synthetic k(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b;->v:Lcom/tencent/liteav/videoproducer/encoder/b$b;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesSvc()Z

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isEnablesSvc()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eq v0, v2, :cond_5

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_2

    .line 8
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq p0, v1, :cond_2

    .line 9
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->g:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    .line 10
    sget-object p0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-ne v2, p0, :cond_3

    .line 11
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->g:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    .line 12
    :cond_3
    new-instance p0, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->g:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/lang/String;

    const-string v1, "Can\'t use svc mode in use hardware only strategy!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/b$e;->g:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    .line 15
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setReferenceStrategy(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;)V

    :cond_5
    return-object v1
.end method

.method static synthetic l(Lcom/tencent/liteav/videoproducer/encoder/b;)Lcom/tencent/liteav/videoproducer/encoder/b$b;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->f()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 60
    :goto_0
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v1
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videoproducer/encoder/b$d;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->w:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->w:J

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/tencent/liteav/videoproducer/encoder/b$a;

    .line 3
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/c;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/encoder/c;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/g;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/encoder/g;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 5
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/h;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/encoder/h;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 6
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/i;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoproducer/encoder/i;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v5, v0, v1

    const/4 v1, 0x4

    .line 7
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/j;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoproducer/encoder/j;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v5, v0, v1

    const/4 v1, 0x5

    .line 8
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/k;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoproducer/encoder/k;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v5, v0, v1

    const/4 v1, 0x6

    .line 9
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/l;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoproducer/encoder/l;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v5, v0, v1

    const/4 v1, 0x7

    .line 10
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/m;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoproducer/encoder/m;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v5, v0, v1

    const/16 v1, 0x8

    .line 11
    new-instance v5, Lcom/tencent/liteav/videoproducer/encoder/n;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoproducer/encoder/n;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v5, v0, v1

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v0, v1, :cond_1

    new-array v0, v4, [Lcom/tencent/liteav/videoproducer/encoder/b$a;

    .line 14
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/d;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/encoder/d;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v1, v0, v2

    .line 15
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/e;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/encoder/e;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v1, v0, v3

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p1, v3, [Lcom/tencent/liteav/videoproducer/encoder/b$a;

    .line 18
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/f;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/f;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b;)V

    aput-object v0, p1, v2

    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 20
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/liteav/videoproducer/encoder/b$a;

    .line 21
    invoke-interface {v4}, Lcom/tencent/liteav/videoproducer/encoder/b$a;->a()Lcom/tencent/liteav/videoproducer/encoder/b$b;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_6

    .line 22
    iget-object v5, v4, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    invoke-static {v5}, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a(Lcom/tencent/liteav/videoproducer/encoder/b$d;)I

    move-result v5

    iget-object v6, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    invoke-static {v6}, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a(Lcom/tencent/liteav/videoproducer/encoder/b$d;)I

    move-result v6

    if-gt v5, v6, :cond_5

    iget-object v5, v4, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    iget-object v6, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    if-ne v5, v6, :cond_4

    iget-object v5, v4, Lcom/tencent/liteav/videoproducer/encoder/b$b;->b:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 23
    iget v5, v5, Lcom/tencent/liteav/videoproducer/encoder/b$e;->mPriority:I

    .line 24
    iget-object v6, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->b:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 25
    iget v6, v6, Lcom/tencent/liteav/videoproducer/encoder/b$e;->mPriority:I

    if-le v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_3

    :cond_6
    move-object v1, v4

    goto :goto_0

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz p1, :cond_8

    .line 27
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 28
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    :cond_8
    if-eqz v1, :cond_9

    goto :goto_3

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-nez p1, :cond_a

    .line 30
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, p1, v3}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    goto :goto_3

    .line 31
    :cond_a
    new-instance v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;

    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/b$e;->a:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-direct {v1, p1, v3}, Lcom/tencent/liteav/videoproducer/encoder/b$b;-><init>(Lcom/tencent/liteav/videoproducer/encoder/b$d;Lcom/tencent/liteav/videoproducer/encoder/b$e;)V

    .line 32
    :goto_3
    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/b$d;->c:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    if-ne p1, v3, :cond_c

    .line 33
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq p1, v3, :cond_b

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->l:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 34
    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->mPriority:I

    .line 35
    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->b:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 36
    iget v5, v4, Lcom/tencent/liteav/videoproducer/encoder/b$e;->mPriority:I

    if-gt p1, v5, :cond_b

    .line 37
    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    .line 38
    iput-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->l:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 39
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->f:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    if-ne v4, p1, :cond_f

    .line 40
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->q:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$b;->x:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v3, v0, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 41
    :cond_b
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    return-object p1

    .line 42
    :cond_c
    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/b$d;->d:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    if-ne p1, v3, :cond_f

    .line 43
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    sget-object v3, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    if-eq p1, v3, :cond_e

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->l:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 44
    iget p1, p1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->mPriority:I

    .line 45
    iget-object v4, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->b:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 46
    iget v5, v4, Lcom/tencent/liteav/videoproducer/encoder/b$e;->mPriority:I

    if-gt p1, v5, :cond_e

    .line 47
    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->k:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    .line 48
    iput-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->l:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    .line 49
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/b$e;->i:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    if-ne v4, p1, :cond_d

    .line 50
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->q:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$b;->y:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v3, v0, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_d
    new-instance p1, Lcom/tencent/liteav/base/util/v;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/liteav/base/util/v;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/v$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->z:Lcom/tencent/liteav/base/util/v;

    const/16 v0, 0x3e8

    .line 52
    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/v;->a(II)V

    goto :goto_4

    .line 53
    :cond_e
    sget-object p1, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    return-object p1

    .line 54
    :cond_f
    :goto_4
    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    if-eq p1, v0, :cond_10

    .line 55
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "instruction: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->b:Lcom/tencent/liteav/videoproducer/encoder/b$e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_10
    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/b$d;->b:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    if-ne p1, v0, :cond_11

    .line 57
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/b;->b()V

    .line 58
    :cond_11
    iget-object p1, v1, Lcom/tencent/liteav/videoproducer/encoder/b$b;->a:Lcom/tencent/liteav/videoproducer/encoder/b$d;

    return-object p1
.end method

.method public final a(D)V
    .locals 2

    .line 61
    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->g:D

    .line 62
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->q:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->j:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->q:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->i:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 3

    .line 64
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    .line 65
    new-instance p1, Lcom/tencent/liteav/videoproducer/encoder/b$c;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/tencent/liteav/videoproducer/encoder/b$c;-><init>(B)V

    .line 66
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->j:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->referenceStrategy:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    sget-object v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$ReferenceStrategy;

    if-ne v1, v2, :cond_1

    .line 67
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->r:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    sget-object v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->c:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-ne v1, v2, :cond_3

    .line 68
    :cond_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v1, p1, Lcom/tencent/liteav/videoproducer/encoder/b$c;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    goto :goto_0

    .line 69
    :cond_1
    iget-boolean v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->enableBFrame:Z

    if-nez v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->r:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    sget-object v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->c:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-ne v1, v2, :cond_3

    .line 71
    :cond_2
    sget-object v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->c:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v1, p1, Lcom/tencent/liteav/videoproducer/encoder/b$c;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 72
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    if-nez v1, :cond_4

    .line 73
    iget-object p1, p1, Lcom/tencent/liteav/videoproducer/encoder/b$c;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object p1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->encoderProfile:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    .line 74
    :cond_4
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->s:Z

    if-eqz p1, :cond_5

    .line 75
    iget p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->t:I

    iput p1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    .line 76
    :cond_5
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 77
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set expected encoded params: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->p:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EncoderSupervisor"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method final b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->b:J

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->w:J

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->y:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->x:J

    return-void
.end method

.method public final onTimeout()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v0

    const-string v1, "Video"

    const-string v2, "SWToHWThreshold_CheckCount"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 2
    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->c:J

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/util/t;->a()[I

    move-result-object v1

    .line 4
    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->c:J

    .line 5
    iget v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->d:F

    const/4 v3, 0x0

    aget v3, v1, v3

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->d:F

    .line 6
    iget v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->e:F

    aget v0, v1, v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->e:F

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->o:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_0

    .line 8
    iget v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    if-eqz v0, :cond_0

    .line 9
    iget v1, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->f:F

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->g:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    int-to-double v5, v0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v0, v1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->f:F

    :cond_0
    return-void

    .line 10
    :cond_1
    iget v4, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->d:F

    long-to-float v2, v2

    div-float/2addr v4, v2

    .line 11
    iget v3, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->f:F

    div-float/2addr v3, v2

    .line 12
    iget v5, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->e:F

    div-float/2addr v5, v2

    .line 13
    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    const-string v6, "SWToHWThreshold_CPU_MAX"

    invoke-virtual {v2, v1, v6}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v2, v6

    cmpl-float v2, v4, v2

    if-gez v2, :cond_2

    .line 14
    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    const-string v4, "SWToHWThreshold_FPS_MIN"

    invoke-virtual {v2, v1, v4}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v2, v6

    cmpg-float v2, v3, v2

    if-lez v2, :cond_2

    .line 15
    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    const-string v4, "SWToHWThreshold_CPU"

    invoke-virtual {v2, v1, v4}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v2, v6

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_3

    .line 16
    invoke-static {}, Lcom/tencent/liteav/base/a/a;->a()Lcom/tencent/liteav/base/a/a;

    move-result-object v2

    const-string v4, "SWToHWThreshold_FPS"

    invoke-virtual {v2, v1, v4}, Lcom/tencent/liteav/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    long-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_3

    .line 17
    :cond_2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->i:Z

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->z:Lcom/tencent/liteav/base/util/v;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/v;->a()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->z:Lcom/tencent/liteav/base/util/v;

    :cond_4
    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->c:J

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->d:F

    .line 23
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->e:F

    .line 24
    iput v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->f:F

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b;->g:D

    return-void
.end method
