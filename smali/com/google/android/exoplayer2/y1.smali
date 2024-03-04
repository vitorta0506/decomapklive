.class final Lcom/google/android/exoplayer2/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv2/n;

.field public final b:Ljava/lang/Object;

.field public final c:[Lv2/i0;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/exoplayer2/z1;

.field public g:Z

.field private final h:[Z

.field private final i:[Lcom/google/android/exoplayer2/w2;

.field private final j:Lh3/b0;

.field private final k:Lcom/google/android/exoplayer2/e2;

.field private l:Lcom/google/android/exoplayer2/y1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Lv2/q0;

.field private n:Lh3/c0;

.field private o:J


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/w2;JLh3/b0;Lj3/b;Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/z1;Lh3/c0;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/y1;->i:[Lcom/google/android/exoplayer2/w2;

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/y1;->o:J

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/y1;->j:Lh3/b0;

    .line 5
    iput-object p6, p0, Lcom/google/android/exoplayer2/y1;->k:Lcom/google/android/exoplayer2/e2;

    .line 6
    iget-object v0, p7, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-object p2, v0, Lv2/o;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/y1;->b:Ljava/lang/Object;

    .line 7
    iput-object p7, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    .line 8
    sget-object p2, Lv2/q0;->d:Lv2/q0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/y1;->m:Lv2/q0;

    .line 9
    iput-object p8, p0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    .line 10
    array-length p2, p1

    new-array p2, p2, [Lv2/i0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    .line 11
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/y1;->h:[Z

    .line 12
    iget-wide v3, p7, Lcom/google/android/exoplayer2/z1;->b:J

    iget-wide v5, p7, Lcom/google/android/exoplayer2/z1;->d:J

    move-object v1, p6

    move-object v2, p5

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/y1;->e(Lv2/q$b;Lcom/google/android/exoplayer2/e2;Lj3/b;JJ)Lv2/n;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    return-void
.end method

.method private c([Lv2/i0;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/y1;->i:[Lcom/google/android/exoplayer2/w2;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/w2;->f()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    .line 3
    invoke-virtual {v1, v0}, Lh3/c0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lv2/g;

    invoke-direct {v1}, Lv2/g;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static e(Lv2/q$b;Lcom/google/android/exoplayer2/e2;Lj3/b;JJ)Lv2/n;
    .locals 7

    .line 1
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/google/android/exoplayer2/e2;->h(Lv2/q$b;Lj3/b;J)Lv2/n;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p5, p0

    if-eqz p2, :cond_0

    .line 2
    new-instance p0, Lv2/c;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lv2/c;-><init>(Lv2/n;ZJJ)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private f()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    iget v2, v1, Lh3/c0;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Lh3/c0;->c(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    iget-object v2, v2, Lh3/c0;->c:[Lh3/s;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lh3/s;->e()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g([Lv2/i0;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/y1;->i:[Lcom/google/android/exoplayer2/w2;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/w2;->f()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    iget v2, v1, Lh3/c0;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Lh3/c0;->c(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    iget-object v2, v2, Lh3/c0;->c:[Lh3/s;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2}, Lh3/s;->j()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->l:Lcom/google/android/exoplayer2/y1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static u(Lcom/google/android/exoplayer2/e2;Lv2/n;)V
    .locals 1

    .line 1
    :try_start_0
    instance-of v0, p1, Lv2/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lv2/c;

    iget-object p1, p1, Lv2/c;->a:Lv2/n;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/e2;->z(Lv2/n;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/e2;->z(Lv2/n;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaPeriodHolder"

    const-string v0, "Period release failed."

    .line 4
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    instance-of v1, v0, Lv2/c;

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/z1;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    .line 3
    :cond_0
    check-cast v0, Lv2/c;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lv2/c;->o(JJ)V

    :cond_1
    return-void
.end method

.method public a(Lh3/c0;JZ)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->i:[Lcom/google/android/exoplayer2/w2;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/y1;->b(Lh3/c0;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Lh3/c0;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget v4, v1, Lh3/c0;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v0, Lcom/google/android/exoplayer2/y1;->h:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    .line 3
    invoke-virtual {p1, v6, v3}, Lh3/c0;->b(Lh3/c0;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/y1;->g([Lv2/i0;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->f()V

    .line 6
    iput-object v1, v0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->h()V

    .line 8
    iget-object v6, v0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    iget-object v7, v1, Lh3/c0;->c:[Lh3/s;

    iget-object v8, v0, Lcom/google/android/exoplayer2/y1;->h:[Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    move-object/from16 v10, p5

    move-wide v11, p2

    .line 9
    invoke-interface/range {v6 .. v12}, Lv2/n;->g([Lh3/s;[Z[Lv2/i0;[ZJ)J

    move-result-wide v3

    .line 10
    iget-object v6, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/y1;->c([Lv2/i0;)V

    .line 11
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/y1;->e:Z

    const/4 v6, 0x0

    .line 12
    :goto_2
    iget-object v7, v0, Lcom/google/android/exoplayer2/y1;->c:[Lv2/i0;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 13
    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    .line 14
    invoke-virtual {p1, v6}, Lh3/c0;->c(I)Z

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 15
    iget-object v7, v0, Lcom/google/android/exoplayer2/y1;->i:[Lcom/google/android/exoplayer2/w2;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lcom/google/android/exoplayer2/w2;->f()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4

    .line 16
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/y1;->e:Z

    goto :goto_4

    .line 17
    :cond_2
    iget-object v7, v1, Lh3/c0;->c:[Lh3/s;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public d(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->r()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/y1;->y(J)J

    move-result-wide p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-interface {v0, p1, p2}, Lv2/n;->n(J)Z

    return-void
.end method

.method public i()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/y1;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z1;->b:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/y1;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-interface {v0}, Lv2/n;->r()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/z1;->e:J

    :cond_2
    return-wide v3
.end method

.method public j()Lcom/google/android/exoplayer2/y1;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->l:Lcom/google/android/exoplayer2/y1;

    return-object v0
.end method

.method public k()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/y1;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-interface {v0}, Lv2/n;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/y1;->o:J

    return-wide v0
.end method

.method public m()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z1;->b:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/y1;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public n()Lv2/q0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->m:Lv2/q0;

    return-object v0
.end method

.method public o()Lh3/c0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->n:Lh3/c0;

    return-object v0
.end method

.method public p(FLcom/google/android/exoplayer2/i3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/y1;->d:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-interface {v0}, Lv2/n;->p()Lv2/q0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/y1;->m:Lv2/q0;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/y1;->v(FLcom/google/android/exoplayer2/i3;)Lh3/c0;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v0, p2, Lcom/google/android/exoplayer2/z1;->b:J

    .line 5
    iget-wide v2, p2, Lcom/google/android/exoplayer2/z1;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/y1;->a(Lh3/c0;JZ)J

    move-result-wide p1

    .line 8
    iget-wide v0, p0, Lcom/google/android/exoplayer2/y1;->o:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v3, v2, Lcom/google/android/exoplayer2/z1;->b:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/y1;->o:J

    .line 9
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/z1;->b(J)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    return-void
.end method

.method public q()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/y1;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    .line 2
    invoke-interface {v0}, Lv2/n;->r()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->r()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/y1;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/y1;->y(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lv2/n;->t(J)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->f()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->k:Lcom/google/android/exoplayer2/e2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/y1;->u(Lcom/google/android/exoplayer2/e2;Lv2/n;)V

    return-void
.end method

.method public v(FLcom/google/android/exoplayer2/i3;)Lh3/c0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->j:Lh3/b0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/y1;->i:[Lcom/google/android/exoplayer2/w2;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y1;->n()Lv2/q0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-virtual {v0, v1, v2, v3, p2}, Lh3/b0;->h([Lcom/google/android/exoplayer2/w2;Lv2/q0;Lv2/q$b;Lcom/google/android/exoplayer2/i3;)Lh3/c0;

    move-result-object p2

    .line 3
    iget-object v0, p2, Lh3/c0;->c:[Lh3/s;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v3, p1}, Lh3/s;->d(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public w(Lcom/google/android/exoplayer2/y1;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/y1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/y1;->l:Lcom/google/android/exoplayer2/y1;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->f()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/y1;->l:Lcom/google/android/exoplayer2/y1;

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/y1;->h()V

    return-void
.end method

.method public x(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/y1;->o:J

    return-void
.end method

.method public y(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y1;->l()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public z(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/y1;->l()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method
