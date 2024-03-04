.class public abstract Lcom/google/android/exoplayer2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/u2;
.implements Lcom/google/android/exoplayer2/w2;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/l1;

.field private c:Lcom/google/android/exoplayer2/x2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:La2/s1;

.field private f:I

.field private g:Lv2/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:[Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/f;->a:I

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/l1;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/l1;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/l1;

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->k:J

    return-void
.end method

.method private N(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->j:J

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/f;->H(JZ)V

    return-void
.end method


# virtual methods
.method protected final A()Lcom/google/android/exoplayer2/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/l1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l1;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/l1;

    return-object v0
.end method

.method protected final B()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->d:I

    return v0
.end method

.method protected final C()La2/s1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->e:La2/s1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/s1;

    return-object v0
.end method

.method protected final D()[Lcom/google/android/exoplayer2/k1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->h:[Lcom/google/android/exoplayer2/k1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/k1;

    return-object v0
.end method

.method protected final E()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lv2/i0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i0;

    invoke-interface {v0}, Lv2/i0;->isReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected abstract F()V
.end method

.method protected G(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected abstract H(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected I()V
    .locals 0

    return-void
.end method

.method protected J()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected abstract L([Lcom/google/android/exoplayer2/k1;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected final M(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lv2/i0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i0;

    invoke-interface {v0, p1, p2, p3}, Lv2/i0;->b(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lb2/a;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 4
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/f;->l:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 5
    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 6
    iget-wide p1, p0, Lcom/google/android/exoplayer2/f;->k:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->k:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 7
    iget-object p2, p1, Lcom/google/android/exoplayer2/l1;->b:Lcom/google/android/exoplayer2/k1;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/k1;

    .line 8
    iget-wide v0, p2, Lcom/google/android/exoplayer2/k1;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k1;->b()Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/k1;->p:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/f;->i:J

    add-long/2addr v1, v3

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k1$b;->i0(J)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p2

    .line 12
    iput-object p2, p1, Lcom/google/android/exoplayer2/l1;->b:Lcom/google/android/exoplayer2/k1;

    :cond_3
    :goto_1
    return p3
.end method

.method protected O(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lv2/i0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/f;->i:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lv2/i0;->c(J)I

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/l1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l1;->a()V

    .line 3
    iput v2, p0, Lcom/google/android/exoplayer2/f;->f:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lv2/i0;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->h:[Lcom/google/android/exoplayer2/k1;

    .line 6
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/f;->l:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->F()V

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->a:I

    return v0
.end method

.method public final g()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->f:I

    return v0
.end method

.method public final h([Lcom/google/android/exoplayer2/k1;Lv2/i0;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/f;->g:Lv2/i0;

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->h:[Lcom/google/android/exoplayer2/k1;

    .line 6
    iput-wide p5, p0, Lcom/google/android/exoplayer2/f;->i:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/f;->L([Lcom/google/android/exoplayer2/k1;JJ)V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    return-void
.end method

.method public final j(ILa2/s1;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/f;->d:I

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/f;->e:La2/s1;

    return-void
.end method

.method public k(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final l(Lcom/google/android/exoplayer2/x2;[Lcom/google/android/exoplayer2/k1;Lv2/i0;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object v7, p0

    move v8, p6

    .line 1
    iget v0, v7, Lcom/google/android/exoplayer2/f;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    move-object v0, p1

    .line 2
    iput-object v0, v7, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x2;

    .line 3
    iput v1, v7, Lcom/google/android/exoplayer2/f;->f:I

    move/from16 v0, p7

    .line 4
    invoke-virtual {p0, p6, v0}, Lcom/google/android/exoplayer2/f;->G(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/f;->h([Lcom/google/android/exoplayer2/k1;Lv2/i0;JJ)V

    move-wide v0, p4

    .line 6
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/f;->N(JZ)V

    return-void
.end method

.method public final m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lv2/i0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i0;

    invoke-interface {v0}, Lv2/i0;->a()V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    return v0
.end method

.method public final o()Lcom/google/android/exoplayer2/w2;
    .locals 0

    return-object p0
.end method

.method public synthetic q(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/t2;->a(Lcom/google/android/exoplayer2/u2;FF)V

    return-void
.end method

.method public r()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/l1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l1;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->I()V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/f;->f:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->J()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/f;->f:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->K()V

    return-void
.end method

.method public final t()Lv2/i0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:Lv2/i0;

    return-object v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->k:J

    return-wide v0
.end method

.method public final v(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/f;->N(JZ)V

    return-void
.end method

.method public w()Lcom/google/android/exoplayer2/util/t;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method protected final y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/k1;ZI)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 9
    .param p2    # Lcom/google/android/exoplayer2/k1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->m:Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/w2;->a(Lcom/google/android/exoplayer2/k1;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/v2;->f(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->m:Z

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->m:Z

    .line 5
    throw p1

    .line 6
    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->m:Z

    :cond_0
    const/4 v1, 0x4

    const/4 v6, 0x4

    .line 7
    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/u2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->B()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .line 8
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/k1;IZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method protected final z()Lcom/google/android/exoplayer2/x2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/x2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/x2;

    return-object v0
.end method
