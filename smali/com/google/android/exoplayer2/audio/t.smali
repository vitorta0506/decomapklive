.class final Lcom/google/android/exoplayer2/audio/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/t$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:Z

.field private E:J

.field private F:J

.field private final a:Lcom/google/android/exoplayer2/audio/t$a;

.field private final b:[J

.field private c:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lcom/google/android/exoplayer2/audio/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:J

.field private j:F

.field private k:Z

.field private l:J

.field private m:J

.field private n:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:J

.field private p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:I

.field private w:I

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/t$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/t$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/t;->a:Lcom/google/android/exoplayer2/audio/t$a;

    .line 3
    sget p1, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    .line 4
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/t;->n:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/t;->b:[J

    return-void
.end method

.method private a()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/t;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->c:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/t;->g:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private e()J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 2
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/t;->x:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->x:J

    sub-long/2addr v0, v2

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/audio/t;->g:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 5
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->A:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/t;->z:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    :cond_1
    const-wide v7, 0xffffffffL

    .line 7
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v7, v9

    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/t;->h:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 9
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/t;->s:J

    iput-wide v9, p0, Lcom/google/android/exoplayer2/audio/t;->u:J

    .line 10
    :cond_2
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/t;->u:J

    add-long/2addr v7, v9

    .line 11
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_6

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    .line 12
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/t;->s:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    .line 13
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->y:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->y:J

    .line 15
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->s:J

    return-wide v0

    .line 16
    :cond_5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/t;->y:J

    .line 17
    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->s:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_7

    .line 18
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->t:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->t:J

    .line 19
    :cond_7
    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/t;->s:J

    .line 20
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->t:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method private f()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/t;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private l(JJ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->f:Lcom/google/android/exoplayer2/audio/s;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/s;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/s;->e(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->c()J

    move-result-wide v5

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->b()J

    move-result-wide v3

    sub-long v1, v5, p1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v9, v1, v7

    if-lez v9, :cond_1

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->a:Lcom/google/android/exoplayer2/audio/t$a;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/t$a;->e(JJJJ)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->f()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/audio/t;->b(J)J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v9, v1, v7

    if-lez v9, :cond_2

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->a:Lcom/google/android/exoplayer2/audio/t$a;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/t$a;->d(JJJJ)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->f()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->a()V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 3
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/t;->m:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    .line 4
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/t;->b:[J

    iget v7, p0, Lcom/google/android/exoplayer2/audio/t;->v:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    .line 5
    rem-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/audio/t;->v:I

    .line 6
    iget v7, p0, Lcom/google/android/exoplayer2/audio/t;->w:I

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 7
    iput v7, p0, Lcom/google/android/exoplayer2/audio/t;->w:I

    .line 8
    :cond_1
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/t;->m:J

    .line 9
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->l:J

    const/4 v2, 0x0

    .line 10
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/audio/t;->w:I

    if-ge v2, v3, :cond_2

    .line 11
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/t;->l:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/t;->b:[J

    aget-wide v9, v8, v2

    int-to-long v11, v3

    div-long/2addr v9, v11

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/t;->l:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/t;->h:Z

    if-eqz v2, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/audio/t;->l(JJ)V

    .line 14
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/audio/t;->n(J)V

    return-void
.end method

.method private n(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/t;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/t;->r:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/t;->c:Landroid/media/AudioTrack;

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->o:J

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->o:J

    const-wide/32 v4, 0x4c4b40

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/t;->a:Lcom/google/android/exoplayer2/audio/t$a;

    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer2/audio/t$a;->b(J)V

    .line 6
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->n:Ljava/lang/reflect/Method;

    .line 8
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/t;->r:J

    :cond_1
    return-void
.end method

.method private static o(I)Z
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private r()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->l:J

    const/4 v2, 0x0

    .line 2
    iput v2, p0, Lcom/google/android/exoplayer2/audio/t;->w:I

    .line 3
    iput v2, p0, Lcom/google/android/exoplayer2/audio/t;->v:I

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->m:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->C:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->F:J

    .line 7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/t;->k:Z

    return-void
.end method


# virtual methods
.method public c(J)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->e()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/t;->d:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    long-to-int p2, p1

    .line 2
    iget p1, p0, Lcom/google/android/exoplayer2/audio/t;->e:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public d(Z)J
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/t;->c:Landroid/media/AudioTrack;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/t;->m()V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 4
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/t;->f:Lcom/google/android/exoplayer2/audio/s;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/audio/s;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/s;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/s;->b()J

    move-result-wide v7

    .line 7
    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/audio/t;->b(J)J

    move-result-wide v7

    .line 8
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/s;->c()J

    move-result-wide v9

    sub-long v9, v1, v9

    .line 9
    iget v5, v0, Lcom/google/android/exoplayer2/audio/t;->j:F

    .line 10
    invoke-static {v9, v10, v5}, Lcom/google/android/exoplayer2/util/l0;->U(JF)J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_1

    .line 11
    :cond_1
    iget v5, v0, Lcom/google/android/exoplayer2/audio/t;->w:I

    if-nez v5, :cond_2

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/t;->f()J

    move-result-wide v7

    goto :goto_0

    .line 13
    :cond_2
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/t;->l:J

    add-long/2addr v7, v1

    :goto_0
    if-nez p1, :cond_3

    const-wide/16 v9, 0x0

    .line 14
    iget-wide v11, v0, Lcom/google/android/exoplayer2/audio/t;->o:J

    sub-long/2addr v7, v11

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 15
    :cond_3
    :goto_1
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/audio/t;->D:Z

    if-eq v5, v6, :cond_4

    .line 16
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/t;->C:J

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/t;->F:J

    .line 17
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/t;->B:J

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/t;->E:J

    .line 18
    :cond_4
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/t;->F:J

    sub-long v9, v1, v9

    const-wide/32 v11, 0xf4240

    cmp-long v5, v9, v11

    if-gez v5, :cond_5

    .line 19
    iget-wide v13, v0, Lcom/google/android/exoplayer2/audio/t;->E:J

    iget v5, v0, Lcom/google/android/exoplayer2/audio/t;->j:F

    .line 20
    invoke-static {v9, v10, v5}, Lcom/google/android/exoplayer2/util/l0;->U(JF)J

    move-result-wide v15

    add-long/2addr v13, v15

    mul-long v9, v9, v3

    .line 21
    div-long/2addr v9, v11

    mul-long v7, v7, v9

    sub-long v9, v3, v9

    mul-long v9, v9, v13

    add-long/2addr v7, v9

    .line 22
    div-long/2addr v7, v3

    .line 23
    :cond_5
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/t;->k:Z

    if-nez v3, :cond_6

    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/t;->B:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_6

    const/4 v5, 0x1

    .line 24
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/audio/t;->k:Z

    sub-long v3, v7, v3

    .line 25
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/l0;->P0(J)J

    move-result-wide v3

    .line 26
    iget v5, v0, Lcom/google/android/exoplayer2/audio/t;->j:F

    .line 27
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/l0;->Z(JF)J

    move-result-wide v3

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/l0;->P0(J)J

    move-result-wide v3

    sub-long/2addr v9, v3

    .line 29
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/t;->a:Lcom/google/android/exoplayer2/audio/t$a;

    invoke-interface {v3, v9, v10}, Lcom/google/android/exoplayer2/audio/t$a;->c(J)V

    .line 30
    :cond_6
    iput-wide v1, v0, Lcom/google/android/exoplayer2/audio/t;->C:J

    .line 31
    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/t;->B:J

    .line 32
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/audio/t;->D:Z

    return-wide v7
.end method

.method public g(J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->z:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->x:J

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/t;->A:J

    return-void
.end method

.method public h(J)Z
    .locals 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->e()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->y:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->y:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/t;->h:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/t;->p:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/t;->p:Z

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/t;->h(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/t;->p:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eq v0, v2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/t;->a:Lcom/google/android/exoplayer2/audio/t$a;

    iget p2, p0, Lcom/google/android/exoplayer2/audio/t;->e:I

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->i:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/l0;->P0(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/t$a;->a(IJ)V

    :cond_2
    return v2
.end method

.method public p()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->r()V

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->f:Lcom/google/android/exoplayer2/audio/s;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->g()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/t;->r()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->c:Landroid/media/AudioTrack;

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->f:Lcom/google/android/exoplayer2/audio/s;

    return-void
.end method

.method public s(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/t;->c:Landroid/media/AudioTrack;

    .line 2
    iput p4, p0, Lcom/google/android/exoplayer2/audio/t;->d:I

    .line 3
    iput p5, p0, Lcom/google/android/exoplayer2/audio/t;->e:I

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/audio/s;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/s;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->f:Lcom/google/android/exoplayer2/audio/s;

    .line 5
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/t;->g:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/t;->o(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/t;->h:Z

    .line 7
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/l0;->o0(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/t;->q:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_1

    .line 8
    div-int/2addr p5, p4

    int-to-long p2, p5

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/t;->b(J)J

    move-result-wide p2

    goto :goto_1

    :cond_1
    move-wide p2, v0

    :goto_1
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/t;->i:J

    const-wide/16 p2, 0x0

    .line 9
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/t;->s:J

    .line 10
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/t;->t:J

    .line 11
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/t;->u:J

    .line 12
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/t;->p:Z

    .line 13
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->x:J

    .line 14
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/t;->y:J

    .line 15
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/t;->r:J

    .line 16
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/t;->o:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Lcom/google/android/exoplayer2/audio/t;->j:F

    return-void
.end method

.method public t(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/audio/t;->j:F

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/t;->f:Lcom/google/android/exoplayer2/audio/s;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/s;->g()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->f:Lcom/google/android/exoplayer2/audio/s;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->g()V

    return-void
.end method
