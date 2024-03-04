.class public Lcom/google/android/exoplayer2/audio/a0;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/a0$b;
    }
.end annotation


# instance fields
.field private final k5:Landroid/content/Context;

.field private final l5:Lcom/google/android/exoplayer2/audio/r$a;

.field private final m5:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private n5:I

.field private o5:Z

.field private p5:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q5:J

.field private r5:Z

.field private s5:Z

.field private t5:Z

.field private u5:Z

.field private v5:Lcom/google/android/exoplayer2/u2$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 6
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/audio/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;ZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->k5:Landroid/content/Context;

    .line 4
    iput-object p7, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/audio/r$a;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplayer2/audio/r$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/audio/a0$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/a0$b;-><init>(Lcom/google/android/exoplayer2/audio/a0;Lcom/google/android/exoplayer2/audio/a0$a;)V

    invoke-interface {p7, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->j(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V

    return-void
.end method

.method static synthetic n1(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/audio/r$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    return-object p0
.end method

.method static synthetic o1(Lcom/google/android/exoplayer2/audio/a0;)Lcom/google/android/exoplayer2/u2$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/a0;->v5:Lcom/google/android/exoplayer2/u2$a;

    return-object p0
.end method

.method private static p1(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/l0;->c:Ljava/lang/String;

    const-string v0, "samsung"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/l0;->b:Ljava/lang/String;

    const-string/jumbo v0, "zeroflte"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "herolte"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroqlte"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static q1()Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/l0;->d:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->k5:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/l0;->r0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget p1, p2, Lcom/google/android/exoplayer2/k1;->m:I

    return p1
.end method

.method private static t1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/o;",
            "Lcom/google/android/exoplayer2/k1;",
            "Z",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k1;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->v()Lcom/google/android/exoplayer2/mediacodec/m;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 5
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p3, 0x0

    .line 6
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/o;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->m(Lcom/google/android/exoplayer2/k1;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/o;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$b;->h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList$b;->h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$b;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private w1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/a0;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->p(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/a0;->s5:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/a0;->q5:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/a0;->q5:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->s5:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected F()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->t5:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/r$a;->o(Lb2/e;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->o(Lb2/e;)V

    .line 5
    throw v0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->o(Lb2/e;)V

    .line 8
    throw v0

    :catchall_2
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->o(Lb2/e;)V

    .line 10
    throw v0
.end method

.method protected G(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G(ZZ)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/r$a;->p(Lb2/e;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->z()Lcom/google/android/exoplayer2/x2;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/x2;->a:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->r()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->g()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->C()La2/s1;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->o(La2/s1;)V

    return-void
.end method

.method protected H(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H(JZ)V

    .line 2
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/a0;->u5:Z

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->l()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 5
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/a0;->q5:J

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/a0;->r5:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/a0;->s5:Z

    return-void
.end method

.method protected H0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->k(Ljava/lang/Exception;)V

    return-void
.end method

.method protected I()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/a0;->t5:Z

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->t5:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/a0;->t5:Z

    if-eqz v2, :cond_1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->t5:Z

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 8
    :cond_1
    throw v1
.end method

.method protected I0(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/l$a;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/r$a;->m(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected J()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->play()V

    return-void
.end method

.method protected J0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/r$a;->n(Ljava/lang/String;)V

    return-void
.end method

.method protected K()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/a0;->w1()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K()V

    return-void
.end method

.method protected K0(Lcom/google/android/exoplayer2/l1;)Lb2/g;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K0(Lcom/google/android/exoplayer2/l1;)Lb2/g;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/a0;->l5:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/l1;->b:Lcom/google/android/exoplayer2/k1;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/audio/r$a;->q(Lcom/google/android/exoplayer2/k1;Lb2/g;)V

    return-object v0
.end method

.method protected L0(Lcom/google/android/exoplayer2/k1;Landroid/media/MediaFormat;)V
    .locals 5
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->p5:Lcom/google/android/exoplayer2/k1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n0()Lcom/google/android/exoplayer2/mediacodec/l;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget v0, p1, Lcom/google/android/exoplayer2/k1;->A:I

    goto :goto_0

    .line 5
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->W(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 9
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    .line 10
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/k1$b;->Y(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->B:I

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/k1$b;->N(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/k1;->C:I

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/k1$b;->O(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    const-string v3, "channel-count"

    .line 14
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    const-string v3, "sample-rate"

    .line 15
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p2

    .line 17
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->o5:Z

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/google/android/exoplayer2/k1;->y:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    iget v0, p1, Lcom/google/android/exoplayer2/k1;->y:I

    if-ge v0, v3, :cond_5

    .line 18
    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 19
    :goto_1
    iget v3, p1, Lcom/google/android/exoplayer2/k1;->y:I

    if-ge v0, v3, :cond_5

    .line 20
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object p1, p2

    .line 21
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->s(Lcom/google/android/exoplayer2/k1;I[I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/k1;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected N0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->q()V

    return-void
.end method

.method protected O0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->r5:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb2/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/a0;->q5:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/a0;->q5:J

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/a0;->r5:Z

    :cond_1
    return-void
.end method

.method protected Q0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/k1;)Z
    .locals 0
    .param p5    # Lcom/google/android/exoplayer2/mediacodec/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->p5:Lcom/google/android/exoplayer2/k1;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-interface {p1, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/l;->releaseOutputBuffer(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 4
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/l;->releaseOutputBuffer(IZ)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    iget p3, p1, Lb2/e;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lb2/e;->f:I

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->q()V

    return p2

    .line 7
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/exoplayer2/audio/AudioSink;->i(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 8
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/l;->releaseOutputBuffer(IZ)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f5:Lb2/e;

    iget p3, p1, Lb2/e;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lb2/e;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    .line 10
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplayer2/k1;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected R(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)Lb2/g;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/m;->e(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)Lb2/g;

    move-result-object v0

    .line 2
    iget v1, v0, Lb2/g;->e:I

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/audio/a0;->r1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/a0;->n5:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    .line 4
    new-instance v1, Lb2/g;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget p1, v0, Lb2/g;->d:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lb2/g;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;II)V

    return-object v1
.end method

.method protected V0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->n()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/k1;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public b()Lcom/google/android/exoplayer2/k2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->b()Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lcom/google/android/exoplayer2/k2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->d(Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method protected h1(Lcom/google/android/exoplayer2/k1;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k1;)Z

    move-result p1

    return p1
.end method

.method protected i1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->l(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p2, Lcom/google/android/exoplayer2/k1;->E:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j1(Lcom/google/android/exoplayer2/k1;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    .line 6
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 7
    invoke-interface {v7, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k1;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    .line 8
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->v()Lcom/google/android/exoplayer2/mediacodec/m;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    :cond_3
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/v2;->b(III)I

    move-result p1

    return p1

    .line 10
    :cond_4
    iget-object v2, p2, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    const-string v7, "audio/raw"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k1;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 11
    invoke-static {v3}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v7, p2, Lcom/google/android/exoplayer2/k1;->y:I

    iget v8, p2, Lcom/google/android/exoplayer2/k1;->z:I

    const/4 v9, 0x2

    .line 13
    invoke-static {v9, v7, v8}, Lcom/google/android/exoplayer2/util/l0;->X(III)Lcom/google/android/exoplayer2/k1;

    move-result-object v7

    .line 14
    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/k1;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 15
    invoke-static {v3}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1

    .line 16
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 17
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/exoplayer2/audio/a0;->t1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    invoke-static {v3}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1

    :cond_7
    if-nez v4, :cond_8

    .line 20
    invoke-static {v9}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1

    .line 21
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/m;

    .line 22
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/m;->m(Lcom/google/android/exoplayer2/k1;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v7, 0x1

    .line 23
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 24
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/mediacodec/m;

    .line 25
    invoke-virtual {v8, p2}, Lcom/google/android/exoplayer2/mediacodec/m;->m(Lcom/google/android/exoplayer2/k1;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v2, v8

    const/4 p1, 0x0

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    move v3, v4

    const/4 p1, 0x1

    :goto_3
    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x3

    :goto_4
    if-eqz v3, :cond_c

    .line 26
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/m;->p(Lcom/google/android/exoplayer2/k1;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 v5, 0x10

    .line 27
    :cond_c
    iget-boolean p2, v2, Lcom/google/android/exoplayer2/mediacodec/m;->h:Z

    if-eqz p2, :cond_d

    const/16 p2, 0x40

    goto :goto_5

    :cond_d
    const/4 p2, 0x0

    :goto_5
    if-eqz p1, :cond_e

    const/16 v1, 0x80

    .line 28
    :cond_e
    invoke-static {v6, v5, v0, p2, v1}, Lcom/google/android/exoplayer2/v2;->c(IIIII)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->k(ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :pswitch_0
    check-cast p2, Lcom/google/android/exoplayer2/u2$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/a0;->v5:Lcom/google/android/exoplayer2/u2$a;

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->f(I)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->t(Z)V

    goto :goto_0

    .line 5
    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/audio/u;

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->m(Lcom/google/android/exoplayer2/audio/u;)V

    goto :goto_0

    .line 7
    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/audio/e;

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->h(Lcom/google/android/exoplayer2/audio/e;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/a0;->w1()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/a0;->q5:J

    return-wide v0
.end method

.method protected q0(FLcom/google/android/exoplayer2/k1;[Lcom/google/android/exoplayer2/k1;)F
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/google/android/exoplayer2/k1;->z:I

    if-eq v3, v0, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1
    return p1
.end method

.method protected s0(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/o;",
            "Lcom/google/android/exoplayer2/k1;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/audio/a0;->t1(Lcom/google/android/exoplayer2/mediacodec/o;Lcom/google/android/exoplayer2/k1;ZLcom/google/android/exoplayer2/audio/AudioSink;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->u(Ljava/util/List;Lcom/google/android/exoplayer2/k1;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected s1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;[Lcom/google/android/exoplayer2/k1;)I
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/a0;->r1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;)I

    move-result v0

    .line 2
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 3
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 4
    invoke-virtual {p1, p2, v3}, Lcom/google/android/exoplayer2/mediacodec/m;->e(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)Lb2/g;

    move-result-object v4

    iget v4, v4, Lb2/g;->d:I

    if-eqz v4, :cond_1

    .line 5
    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/audio/a0;->r1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected u0(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/l$a;
    .locals 2
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->D()[Lcom/google/android/exoplayer2/k1;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/a0;->s1(Lcom/google/android/exoplayer2/mediacodec/m;Lcom/google/android/exoplayer2/k1;[Lcom/google/android/exoplayer2/k1;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/a0;->n5:I

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a0;->p1(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->o5:Z

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/m;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/a0;->n5:I

    .line 4
    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/google/android/exoplayer2/audio/a0;->u1(Lcom/google/android/exoplayer2/k1;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p4

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/m;->b:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/a0;->p5:Lcom/google/android/exoplayer2/k1;

    .line 9
    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/l$a;->a(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/k1;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/l$a;

    move-result-object p1

    return-object p1
.end method

.method protected u1(Lcom/google/android/exoplayer2/k1;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p2, p1, Lcom/google/android/exoplayer2/k1;->y:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4
    iget p2, p1, Lcom/google/android/exoplayer2/k1;->z:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    iget-object p2, p1, Lcom/google/android/exoplayer2/k1;->n:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/u;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    .line 6
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/util/u;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 7
    sget p2, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const/4 p3, 0x0

    const-string v1, "priority"

    .line 8
    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/exoplayer2/audio/a0;->q1()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "operating-rate"

    .line 10
    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    .line 11
    iget-object p3, p1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    const-string p4, "audio/ac4"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const-string p4, "ac4-is-sync"

    .line 12
    invoke-virtual {v0, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const/16 p3, 0x18

    if-lt p2, p3, :cond_2

    .line 13
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/a0;->m5:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget p4, p1, Lcom/google/android/exoplayer2/k1;->y:I

    iget p1, p1, Lcom/google/android/exoplayer2/k1;->z:I

    const/4 v1, 0x4

    .line 14
    invoke-static {v1, p4, p1}, Lcom/google/android/exoplayer2/util/l0;->X(III)Lcom/google/android/exoplayer2/k1;

    move-result-object p1

    .line 15
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->k(Lcom/google/android/exoplayer2/k1;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    const-string p1, "pcm-encoding"

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    const/16 p1, 0x20

    if-lt p2, p1, :cond_3

    const/16 p1, 0x63

    const-string p2, "max-output-channel-count"

    .line 17
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method protected v1()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/a0;->s5:Z

    return-void
.end method

.method public w()Lcom/google/android/exoplayer2/util/t;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method
