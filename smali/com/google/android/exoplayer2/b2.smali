.class final Lcom/google/android/exoplayer2/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/i3$b;

.field private final b:Lcom/google/android/exoplayer2/i3$d;

.field private final c:La2/a;

.field private final d:Landroid/os/Handler;

.field private e:J

.field private f:I

.field private g:Z

.field private h:Lcom/google/android/exoplayer2/y1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/google/android/exoplayer2/y1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/y1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:I

.field private l:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:J


# direct methods
.method public constructor <init>(La2/a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/b2;->c:La2/a;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/b2;->d:Landroid/os/Handler;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/i3$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/i3$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    return-void
.end method

.method private static A(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;JJLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Lv2/q$b;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p7}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 2
    iget v0, p7, Lcom/google/android/exoplayer2/i3$b;->c:I

    invoke-virtual {p0, v0, p6}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v0

    move-object v2, p1

    .line 4
    :goto_0
    iget-wide v3, p7, Lcom/google/android/exoplayer2/i3$b;->d:J

    const/4 p1, -0x1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p7}, Lcom/google/android/exoplayer2/i3$b;->f()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-virtual {p7}, Lcom/google/android/exoplayer2/i3$b;->r()I

    move-result v1

    invoke-virtual {p7, v1}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p7, v5, v6}, Lcom/google/android/exoplayer2/i3$b;->h(J)I

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget v3, p6, Lcom/google/android/exoplayer2/i3$d;->p:I

    if-ge v0, v3, :cond_0

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v1, p7, p1}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    .line 9
    iget-object p1, p7, Lcom/google/android/exoplayer2/i3$b;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move v0, v1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v2, p7}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 11
    invoke-virtual {p7, p2, p3}, Lcom/google/android/exoplayer2/i3$b;->h(J)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 12
    invoke-virtual {p7, p2, p3}, Lcom/google/android/exoplayer2/i3$b;->g(J)I

    move-result p0

    .line 13
    new-instance p1, Lv2/q$b;

    invoke-direct {p1, v2, p4, p5, p0}, Lv2/q$b;-><init>(Ljava/lang/Object;JI)V

    return-object p1

    .line 14
    :cond_1
    invoke-virtual {p7, v3}, Lcom/google/android/exoplayer2/i3$b;->n(I)I

    move-result v4

    .line 15
    new-instance p0, Lv2/q$b;

    move-object v1, p0

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lv2/q$b;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private C(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->l:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, v1, v3}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/i3$b;->c:I

    if-ne v1, v0, :cond_0

    .line 5
    iget-wide p1, p0, Lcom/google/android/exoplayer2/b2;->m:J

    return-wide p1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget-object v3, v1, Lcom/google/android/exoplayer2/y1;->b:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object p1, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-wide p1, p1, Lv2/o;->d:J

    return-wide p1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    :goto_1
    if-eqz v1, :cond_4

    .line 11
    iget-object v3, v1, Lcom/google/android/exoplayer2/y1;->b:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 12
    iget-object v4, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/i3$b;->c:I

    if-ne v3, v0, :cond_3

    .line 13
    iget-object p1, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-wide p1, p1, Lv2/o;->d:J

    return-wide p1

    .line 14
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/b2;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/b2;->e:J

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    if-nez p1, :cond_5

    .line 17
    iput-object p2, p0, Lcom/google/android/exoplayer2/b2;->l:Ljava/lang/Object;

    .line 18
    iput-wide v0, p0, Lcom/google/android/exoplayer2/b2;->m:J

    :cond_5
    return-wide v0
.end method

.method private E(Lcom/google/android/exoplayer2/i3;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/y1;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    iget v6, p0, Lcom/google/android/exoplayer2/b2;->f:I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/b2;->g:Z

    move-object v2, p1

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/i3;->h(ILcom/google/android/exoplayer2/i3$b;Lcom/google/android/exoplayer2/i3$d;IZ)I

    move-result v3

    .line 5
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/z1;->g:Z

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v4, v2, Lcom/google/android/exoplayer2/y1;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b2;->z(Lcom/google/android/exoplayer2/y1;)Z

    move-result v2

    .line 10
    iget-object v3, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/b2;->r(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/z1;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/b2;Lcom/google/common/collect/ImmutableList$b;Lv2/q$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/b2;->w(Lcom/google/common/collect/ImmutableList$b;Lv2/q$b;)V

    return-void
.end method

.method private d(JJ)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

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

.method private e(Lcom/google/android/exoplayer2/z1;Lcom/google/android/exoplayer2/z1;)Z
    .locals 5

    iget-wide v0, p1, Lcom/google/android/exoplayer2/z1;->b:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/z1;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-object p2, p2, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-virtual {p1, p2}, Lv2/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/z1;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v1, p1, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    iget-object v2, p1, Lcom/google/android/exoplayer2/i2;->b:Lv2/q$b;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/i2;->c:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/i2;->r:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/b2;->k(Lcom/google/android/exoplayer2/i3;Lv2/q$b;JJ)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    return-object p1
.end method

.method private i(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/y1;J)Lcom/google/android/exoplayer2/z1;
    .locals 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    .line 1
    iget-object v11, v10, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/y1;->l()J

    move-result-wide v0

    iget-wide v2, v11, Lcom/google/android/exoplayer2/z1;->e:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    .line 3
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/z1;->g:Z

    const/4 v13, -0x1

    const/4 v14, 0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    if-eqz v0, :cond_7

    .line 4
    iget-object v0, v11, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-object v0, v0, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v1

    .line 5
    iget-object v2, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-object v3, v9, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    iget v0, v9, Lcom/google/android/exoplayer2/b2;->f:I

    iget-boolean v5, v9, Lcom/google/android/exoplayer2/b2;->g:Z

    move v4, v0

    move-object/from16 v0, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/i3;->h(ILcom/google/android/exoplayer2/i3$b;Lcom/google/android/exoplayer2/i3$d;IZ)I

    move-result v0

    if-ne v0, v13, :cond_0

    return-object v17

    .line 7
    :cond_0
    iget-object v1, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 8
    invoke-virtual {v8, v0, v1, v14}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 9
    iget-object v1, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i3$b;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget-object v2, v11, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-wide v4, v2, Lv2/o;->d:J

    .line 11
    iget-object v2, v9, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {v8, v3, v2}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/i3$d;->o:I

    if-ne v2, v0, :cond_3

    .line 12
    iget-object v1, v9, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    iget-object v2, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    .line 13
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 14
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/i3;->o(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v17

    .line 15
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v2, v0, Lcom/google/android/exoplayer2/y1;->b:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-wide v2, v0, Lv2/o;->d:J

    goto :goto_0

    .line 20
    :cond_2
    iget-wide v2, v9, Lcom/google/android/exoplayer2/b2;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iput-wide v6, v9, Lcom/google/android/exoplayer2/b2;->e:J

    :goto_0
    move-wide v12, v4

    move-wide/from16 v17, v15

    move-wide v4, v2

    goto :goto_1

    :cond_3
    const-wide/16 v12, 0x0

    move-wide/from16 v17, v12

    .line 21
    :goto_1
    iget-object v6, v9, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    iget-object v7, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    move-object/from16 v0, p1

    move-wide v2, v12

    .line 22
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/b2;->A(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;JJLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Lv2/q$b;

    move-result-object v2

    cmp-long v0, v17, v15

    if-eqz v0, :cond_6

    .line 23
    iget-wide v0, v11, Lcom/google/android/exoplayer2/z1;->c:J

    cmp-long v3, v0, v15

    if-eqz v3, :cond_6

    .line 24
    iget-object v0, v11, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-object v0, v0, Lv2/o;->a:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 25
    invoke-virtual {v8, v0, v1}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3$b;->f()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3$b;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    .line 27
    :goto_2
    invoke-virtual {v2}, Lv2/o;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v14, :cond_5

    .line 28
    iget-wide v0, v11, Lcom/google/android/exoplayer2/z1;->c:J

    move-wide v3, v0

    move-wide v5, v12

    goto :goto_4

    :cond_5
    if-eqz v14, :cond_6

    .line 29
    iget-wide v0, v11, Lcom/google/android/exoplayer2/z1;->c:J

    move-wide v5, v0

    goto :goto_3

    :cond_6
    move-wide v5, v12

    :goto_3
    move-wide/from16 v3, v17

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/b2;->k(Lcom/google/android/exoplayer2/i3;Lv2/q$b;JJ)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, -0x1

    const-wide/16 v12, 0x0

    .line 31
    iget-object v10, v11, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    .line 32
    iget-object v1, v10, Lv2/o;->a:Ljava/lang/Object;

    iget-object v2, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v8, v1, v2}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 33
    invoke-virtual {v10}, Lv2/o;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 34
    iget v3, v10, Lv2/o;->b:I

    .line 35
    iget-object v1, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/i3$b;->d(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    return-object v17

    .line 36
    :cond_8
    iget-object v0, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v2, v10, Lv2/o;->c:I

    .line 37
    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/i3$b;->o(II)I

    move-result v4

    if-ge v4, v1, :cond_9

    .line 38
    iget-object v2, v10, Lv2/o;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/exoplayer2/z1;->c:J

    iget-wide v10, v10, Lv2/o;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/b2;->l(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    return-object v0

    .line 39
    :cond_9
    iget-wide v0, v11, Lcom/google/android/exoplayer2/z1;->c:J

    cmp-long v2, v0, v15

    if-nez v2, :cond_b

    .line 40
    iget-object v1, v9, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    iget-object v2, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v3, v2, Lcom/google/android/exoplayer2/i3$b;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 42
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/i3;->o(Lcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v17

    .line 43
    :cond_a
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 44
    :cond_b
    iget-object v2, v10, Lv2/o;->a:Ljava/lang/Object;

    iget v3, v10, Lv2/o;->b:I

    .line 45
    invoke-direct {v9, v8, v2, v3}, Lcom/google/android/exoplayer2/b2;->n(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;I)J

    move-result-wide v2

    .line 46
    iget-object v4, v10, Lv2/o;->a:Ljava/lang/Object;

    .line 47
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v11, v11, Lcom/google/android/exoplayer2/z1;->c:J

    iget-wide v13, v10, Lv2/o;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v11

    move-wide v7, v13

    .line 48
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/b2;->m(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    return-object v0

    .line 49
    :cond_c
    iget-object v0, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v1, v10, Lv2/o;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i3$b;->n(I)I

    move-result v4

    .line 50
    iget-object v0, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v1, v10, Lv2/o;->e:I

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v1, v10, Lv2/o;->e:I

    .line 52
    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/i3$b;->k(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v12, 0x1

    goto :goto_5

    :cond_d
    const/4 v12, 0x0

    .line 53
    :goto_5
    iget-object v0, v9, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v1, v10, Lv2/o;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i3$b;->d(I)I

    move-result v0

    if-eq v4, v0, :cond_f

    if-eqz v12, :cond_e

    goto :goto_6

    .line 54
    :cond_e
    iget-object v2, v10, Lv2/o;->a:Ljava/lang/Object;

    iget v3, v10, Lv2/o;->e:I

    iget-wide v5, v11, Lcom/google/android/exoplayer2/z1;->e:J

    iget-wide v10, v10, Lv2/o;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/b2;->l(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    return-object v0

    .line 55
    :cond_f
    :goto_6
    iget-object v0, v10, Lv2/o;->a:Ljava/lang/Object;

    iget v1, v10, Lv2/o;->e:I

    .line 56
    invoke-direct {v9, v8, v0, v1}, Lcom/google/android/exoplayer2/b2;->n(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 57
    iget-object v2, v10, Lv2/o;->a:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/google/android/exoplayer2/z1;->e:J

    iget-wide v10, v10, Lv2/o;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/b2;->m(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    return-object v0
.end method

.method private k(Lcom/google/android/exoplayer2/i3;Lv2/q$b;JJ)Lcom/google/android/exoplayer2/z1;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p2

    .line 1
    iget-object v1, v0, Lv2/o;->a:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 2
    invoke-virtual {p2}, Lv2/o;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v4, v0, Lv2/o;->a:Ljava/lang/Object;

    iget v5, v0, Lv2/o;->b:I

    iget v6, v0, Lv2/o;->c:I

    iget-wide v9, v0, Lv2/o;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/b2;->l(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v4, v0, Lv2/o;->a:Ljava/lang/Object;

    iget-wide v9, v0, Lv2/o;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/b2;->m(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/z1;

    move-result-object v0

    return-object v0
.end method

.method private l(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;IIJJ)Lcom/google/android/exoplayer2/z1;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Lv2/q$b;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lv2/q$b;-><init>(Ljava/lang/Object;IIJ)V

    .line 2
    iget-object v1, v7, Lv2/o;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    move-object/from16 v3, p1

    .line 3
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v1

    iget v2, v7, Lv2/o;->b:I

    iget v3, v7, Lv2/o;->c:I

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/i3$b;->e(II)J

    move-result-wide v9

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/i3$b;->n(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v4, v1, :cond_0

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i3$b;->j()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v6, v7, Lv2/o;->b:I

    .line 8
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v11

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v9, v12

    if-eqz v1, :cond_1

    cmp-long v1, v4, v9

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x1

    sub-long v4, v9, v4

    .line 9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    move-wide v3, v4

    .line 10
    :goto_1
    new-instance v15, Lcom/google/android/exoplayer2/z1;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v15

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v12

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/z1;-><init>(Lv2/q$b;JJJJZZZZ)V

    return-object v15
.end method

.method private m(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;JJJ)Lcom/google/android/exoplayer2/z1;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 2
    iget-object v5, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/i3$b;->g(J)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-ne v5, v7, :cond_0

    .line 3
    iget-object v9, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 4
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/i3$b;->f()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 5
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/i3$b;->r()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v9, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 7
    invoke-virtual {v9, v5}, Lcom/google/android/exoplayer2/i3$b;->i(I)J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-wide v12, v11, Lcom/google/android/exoplayer2/i3$b;->d:J

    cmp-long v14, v9, v12

    if-nez v14, :cond_1

    .line 8
    invoke-virtual {v11, v5}, Lcom/google/android/exoplayer2/i3$b;->s(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, -0x1

    :goto_0
    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 9
    :goto_1
    new-instance v11, Lv2/q$b;

    move-wide/from16 v12, p7

    invoke-direct {v11, v2, v12, v13, v5}, Lv2/q$b;-><init>(Ljava/lang/Object;JI)V

    .line 10
    invoke-direct {v0, v11}, Lcom/google/android/exoplayer2/b2;->s(Lv2/q$b;)Z

    move-result v2

    .line 11
    invoke-direct {v0, v1, v11}, Lcom/google/android/exoplayer2/b2;->u(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Z

    move-result v22

    .line 12
    invoke-direct {v0, v1, v11, v2}, Lcom/google/android/exoplayer2/b2;->t(Lcom/google/android/exoplayer2/i3;Lv2/q$b;Z)Z

    move-result v23

    if-eq v5, v7, :cond_2

    .line 13
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 14
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v20, 0x1

    goto :goto_2

    :cond_2
    const/16 v20, 0x0

    :goto_2
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v7, :cond_3

    .line 15
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/i3$b;->i(I)J

    move-result-wide v14

    :goto_3
    move-wide/from16 v16, v14

    goto :goto_4

    :cond_3
    if-eqz v9, :cond_4

    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-wide v14, v1, Lcom/google/android/exoplayer2/i3$b;->d:J

    goto :goto_3

    :cond_4
    move-wide/from16 v16, v12

    :goto_4
    cmp-long v1, v16, v12

    if-eqz v1, :cond_6

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v1, v16, v14

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    move-wide/from16 v18, v16

    goto :goto_6

    .line 17
    :cond_6
    :goto_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-wide v14, v1, Lcom/google/android/exoplayer2/i3$b;->d:J

    move-wide/from16 v18, v14

    :goto_6
    cmp-long v1, v18, v12

    if-eqz v1, :cond_9

    cmp-long v1, v3, v18

    if-ltz v1, :cond_9

    if-nez v23, :cond_8

    if-nez v9, :cond_7

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    :cond_8
    :goto_7
    const-wide/16 v3, 0x0

    int-to-long v5, v6

    sub-long v5, v18, v5

    .line 18
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_9
    move-wide v12, v3

    .line 19
    new-instance v1, Lcom/google/android/exoplayer2/z1;

    move-object v10, v1

    move-wide/from16 v14, p5

    move/from16 v21, v2

    invoke-direct/range {v10 .. v23}, Lcom/google/android/exoplayer2/z1;-><init>(Lv2/q$b;JJJJZZZZ)V

    return-object v1
.end method

.method private n(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/i3$b;->i(I)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/i3$b;->d:J

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/i3$b;->l(I)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private s(Lv2/q$b;)Z
    .locals 1

    invoke-virtual {p1}, Lv2/o;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lv2/o;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private t(Lcom/google/android/exoplayer2/i3;Lv2/q$b;Z)Z
    .locals 6

    .line 1
    iget-object p2, p2, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v1

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/exoplayer2/i3$d;->i:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    iget v4, p0, Lcom/google/android/exoplayer2/b2;->f:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/b2;->g:Z

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/i3;->v(ILcom/google/android/exoplayer2/i3$b;Lcom/google/android/exoplayer2/i3$d;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private u(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/b2;->s(Lv2/q$b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p2, Lv2/o;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 3
    iget-object p2, p2, Lv2/o;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result p2

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/i3$d;->p:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic w(Lcom/google/common/collect/ImmutableList$b;Lv2/q$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->c:La2/a;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {v0, p1, p2}, La2/a;->V(Ljava/util/List;Lv2/q$b;)V

    return-void
.end method

.method private x()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    :goto_0
    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    .line 6
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->d:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/a2;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/exoplayer2/a2;-><init>(Lcom/google/android/exoplayer2/b2;Lcom/google/common/collect/ImmutableList$b;Lv2/q$b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;J)Lv2/q$b;
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/b2;->C(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;)J

    move-result-wide v4

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/i3;->r(ILcom/google/android/exoplayer2/i3$d;)Lcom/google/android/exoplayer2/i3$d;

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    iget v3, v3, Lcom/google/android/exoplayer2/i3$d;->o:I

    if-lt v0, v3, :cond_3

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    const/4 v6, 0x1

    invoke-virtual {p1, v0, v3, v6}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/i3$b;->f()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v2, v6

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-wide v7, v3, Lcom/google/android/exoplayer2/i3$b;->d:J

    invoke-virtual {v3, v7, v8}, Lcom/google/android/exoplayer2/i3$b;->h(J)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    .line 8
    iget-object p2, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-object p2, p2, Lcom/google/android/exoplayer2/i3$b;->b:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v6, :cond_3

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/i3$b;->d:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    move-object v1, p2

    .line 10
    iget-object v6, p0, Lcom/google/android/exoplayer2/b2;->b:Lcom/google/android/exoplayer2/i3$d;

    iget-object v7, p0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    move-object v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/b2;->A(Lcom/google/android/exoplayer2/i3;Ljava/lang/Object;JJLcom/google/android/exoplayer2/i3$d;Lcom/google/android/exoplayer2/i3$b;)Lv2/q$b;

    move-result-object p1

    return-object p1
.end method

.method public D()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/z1;->i:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z1;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/b2;->k:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

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

.method public F(Lcom/google/android/exoplayer2/i3;JJ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, v3}, Lcom/google/android/exoplayer2/b2;->r(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/z1;)Lcom/google/android/exoplayer2/z1;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/android/exoplayer2/b2;->i(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/y1;J)Lcom/google/android/exoplayer2/z1;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/b2;->z(Lcom/google/android/exoplayer2/y1;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 6
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/b2;->e(Lcom/google/android/exoplayer2/z1;Lcom/google/android/exoplayer2/z1;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/b2;->z(Lcom/google/android/exoplayer2/y1;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    move-object v1, v4

    .line 8
    :goto_1
    iget-wide v4, v3, Lcom/google/android/exoplayer2/z1;->c:J

    .line 9
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/z1;->a(J)Lcom/google/android/exoplayer2/z1;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    .line 10
    iget-wide v3, v3, Lcom/google/android/exoplayer2/z1;->e:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/z1;->e:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/b2;->d(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->A()V

    .line 12
    iget-wide p1, v1, Lcom/google/android/exoplayer2/z1;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v3

    if-nez p3, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/y1;->z(J)J

    move-result-wide p1

    .line 14
    :goto_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_5

    iget-object p3, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-boolean p3, p3, Lcom/google/android/exoplayer2/z1;->f:Z

    if-nez p3, :cond_5

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p3, p4, v3

    if-eqz p3, :cond_4

    cmp-long p3, p4, p1

    if-ltz p3, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 15
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/b2;->z(Lcom/google/android/exoplayer2/y1;)Z

    move-result p2

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    return v2

    .line 16
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_8
    return v2
.end method

.method public G(Lcom/google/android/exoplayer2/i3;I)Z
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/exoplayer2/b2;->f:I

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/b2;->E(Lcom/google/android/exoplayer2/i3;)Z

    move-result p1

    return p1
.end method

.method public H(Lcom/google/android/exoplayer2/i3;Z)Z
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/b2;->g:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/b2;->E(Lcom/google/android/exoplayer2/i3;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/google/android/exoplayer2/y1;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->t()V

    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/b2;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/b2;->k:I

    if-nez v0, :cond_2

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    iget-object v1, v0, Lcom/google/android/exoplayer2/y1;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b2;->l:Ljava/lang/Object;

    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-wide v0, v0, Lv2/o;->d:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/b2;->m:J

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/b2;->x()V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    return-object v0
.end method

.method public c()Lcom/google/android/exoplayer2/y1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/b2;->x()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    return-object v0
.end method

.method public f()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/b2;->k:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/y1;

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/y1;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b2;->l:Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-wide v1, v1, Lv2/o;->d:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/b2;->m:J

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->t()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/b2;->k:I

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/b2;->x()V

    return-void
.end method

.method public g([Lcom/google/android/exoplayer2/w2;Lh3/b0;Lj3/b;Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/z1;Lh3/c0;)Lcom/google/android/exoplayer2/y1;
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    if-nez v1, :cond_0

    const-wide v1, 0xe8d4a51000L

    move-object/from16 v10, p5

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y1;->l()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    iget-object v3, v3, Lcom/google/android/exoplayer2/y1;->f:Lcom/google/android/exoplayer2/z1;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/z1;->e:J

    add-long/2addr v1, v3

    move-object/from16 v10, p5

    iget-wide v3, v10, Lcom/google/android/exoplayer2/z1;->b:J

    sub-long/2addr v1, v3

    :goto_0
    move-wide v5, v1

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/y1;

    move-object v3, v1

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/y1;-><init>([Lcom/google/android/exoplayer2/w2;JLh3/b0;Lj3/b;Lcom/google/android/exoplayer2/e2;Lcom/google/android/exoplayer2/z1;Lh3/c0;)V

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/y1;->w(Lcom/google/android/exoplayer2/y1;)V

    goto :goto_1

    .line 6
    :cond_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    .line 7
    iput-object v1, v0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    :goto_1
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/google/android/exoplayer2/b2;->l:Ljava/lang/Object;

    .line 9
    iput-object v1, v0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    .line 10
    iget v2, v0, Lcom/google/android/exoplayer2/b2;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/b2;->k:I

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/b2;->x()V

    return-object v1
.end method

.method public j()Lcom/google/android/exoplayer2/y1;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    return-object v0
.end method

.method public o(JLcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/z1;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/b2;->h(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p3, Lcom/google/android/exoplayer2/i2;->a:Lcom/google/android/exoplayer2/i3;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/android/exoplayer2/b2;->i(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/y1;J)Lcom/google/android/exoplayer2/z1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public p()Lcom/google/android/exoplayer2/y1;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    return-object v0
.end method

.method public q()Lcom/google/android/exoplayer2/y1;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    return-object v0
.end method

.method public r(Lcom/google/android/exoplayer2/i3;Lcom/google/android/exoplayer2/z1;)Lcom/google/android/exoplayer2/z1;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    .line 2
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/b2;->s(Lv2/q$b;)Z

    move-result v12

    .line 3
    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/b2;->u(Lcom/google/android/exoplayer2/i3;Lv2/q$b;)Z

    move-result v13

    .line 4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/exoplayer2/b2;->t(Lcom/google/android/exoplayer2/i3;Lv2/q$b;Z)Z

    move-result v14

    .line 5
    iget-object v4, v2, Lcom/google/android/exoplayer2/z1;->a:Lv2/q$b;

    iget-object v4, v4, Lv2/o;->a:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/i3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    .line 6
    invoke-virtual {v3}, Lv2/o;->b()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget v1, v3, Lv2/o;->e:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/i3$b;->i(I)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v5

    .line 8
    :goto_1
    invoke-virtual {v3}, Lv2/o;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v5, v3, Lv2/o;->b:I

    iget v6, v3, Lv2/o;->c:I

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/i3$b;->e(II)J

    move-result-wide v5

    :goto_2
    move-wide v9, v5

    goto :goto_4

    :cond_2
    cmp-long v1, v7, v5

    if-eqz v1, :cond_4

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v7, v5

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v9, v7

    goto :goto_4

    .line 10
    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/i3$b;->m()J

    move-result-wide v5

    goto :goto_2

    .line 11
    :goto_4
    invoke-virtual {v3}, Lv2/o;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    iget v4, v3, Lv2/o;->b:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v1

    move v11, v1

    goto :goto_5

    .line 13
    :cond_5
    iget v1, v3, Lv2/o;->e:I

    if-eq v1, v4, :cond_6

    iget-object v4, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 14
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/i3$b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 15
    :goto_5
    new-instance v15, Lcom/google/android/exoplayer2/z1;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/z1;->b:J

    iget-wide v1, v2, Lcom/google/android/exoplayer2/z1;->c:J

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/z1;-><init>(Lv2/q$b;JJJJZZZZ)V

    return-object v15
.end method

.method public v(Lv2/n;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/y1;->a:Lv2/n;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/y1;->s(J)V

    :cond_0
    return-void
.end method

.method public z(Lcom/google/android/exoplayer2/y1;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    .line 4
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y1;->j()Lcom/google/android/exoplayer2/y1;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    if-ne p1, v2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/y1;

    iput-object v1, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/y1;

    const/4 v1, 0x1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/y1;->t()V

    .line 9
    iget v2, p0, Lcom/google/android/exoplayer2/b2;->k:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/b2;->k:I

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/b2;->j:Lcom/google/android/exoplayer2/y1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/y1;->w(Lcom/google/android/exoplayer2/y1;)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/b2;->x()V

    return v1
.end method
