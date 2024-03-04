.class public abstract Lcom/google/android/exoplayer2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/l2;


# instance fields
.field protected final a:Lcom/google/android/exoplayer2/i3$d;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/e;->a:Lcom/google/android/exoplayer2/i3$d;

    return-void
.end method

.method private X()I
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private c0(J)V
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/e;->Y(J)V

    return-void
.end method


# virtual methods
.method public final G()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->W()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final L()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->a:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/i3$d;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Q()V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->I()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/e;->c0(J)V

    return-void
.end method

.method public final R()V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->T()J

    move-result-wide v0

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/e;->c0(J)V

    return-void
.end method

.method public final U()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->a:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3$d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final V()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/e;->X()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->O()Z

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/i3;->i(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final W()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/e;->X()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->O()Z

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/i3;->p(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final Y(J)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/l2;->y(IJ)V

    return-void
.end method

.method public final Z()V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/e;->a0(I)V

    return-void
.end method

.method public final a0(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/l2;->y(IJ)V

    return-void
.end method

.method public final b0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->V()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/e;->a0(I)V

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->a:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3$d;->f()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final d0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->W()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/e;->a0(I)V

    :cond_0
    return-void
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->s()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->G()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->L()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->d0()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->getCurrentPosition()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->D()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->d0()V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/e;->Y(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final n()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->V()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/l2;->l(Z)V

    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/l2;->l(Z)V

    return-void
.end method

.method public final q(I)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->z()Lcom/google/android/exoplayer2/l2$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l2$b;->c(I)Z

    move-result p1

    return p1
.end method

.method public final r()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->a:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/i3$d;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w()V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/l2;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->b0()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->Z()V

    :cond_2
    :goto_0
    return-void
.end method
