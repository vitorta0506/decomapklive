.class public final Lm2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/m;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/a0;

.field private final b:Lcom/google/android/exoplayer2/util/b0;

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lc2/e0;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/exoplayer2/k1;

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lm2/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/a0;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/a0;-><init>([B)V

    iput-object v0, p0, Lm2/c;->a:Lcom/google/android/exoplayer2/util/a0;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/util/b0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/a0;->a:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    iput-object v1, p0, Lm2/c;->b:Lcom/google/android/exoplayer2/util/b0;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lm2/c;->f:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lm2/c;->l:J

    .line 7
    iput-object p1, p0, Lm2/c;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/b0;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v0

    iget v1, p0, Lm2/c;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Lm2/c;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/b0;->j([BII)V

    .line 3
    iget p1, p0, Lm2/c;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lm2/c;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm2/c;->a:Lcom/google/android/exoplayer2/util/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->p(I)V

    .line 2
    iget-object v0, p0, Lm2/c;->a:Lcom/google/android/exoplayer2/util/a0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b;->e(Lcom/google/android/exoplayer2/util/a0;)Lcom/google/android/exoplayer2/audio/b$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lm2/c;->j:Lcom/google/android/exoplayer2/k1;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->d:I

    iget v3, v1, Lcom/google/android/exoplayer2/k1;->y:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->c:I

    iget v3, v1, Lcom/google/android/exoplayer2/k1;->z:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    .line 4
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    iget-object v2, p0, Lm2/c;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->d:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->c:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    iget-object v2, p0, Lm2/c;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object v1

    iput-object v1, p0, Lm2/c;->j:Lcom/google/android/exoplayer2/k1;

    .line 12
    iget-object v2, p0, Lm2/c;->e:Lc2/e0;

    invoke-interface {v2, v1}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    .line 13
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/b$b;->e:I

    iput v1, p0, Lm2/c;->k:I

    const-wide/32 v1, 0xf4240

    .line 14
    iget v0, v0, Lcom/google/android/exoplayer2/audio/b$b;->f:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lm2/c;->j:Lcom/google/android/exoplayer2/k1;

    iget v0, v0, Lcom/google/android/exoplayer2/k1;->z:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lm2/c;->i:J

    return-void
.end method

.method private h(Lcom/google/android/exoplayer2/util/b0;)Z
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lm2/c;->h:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lm2/c;->h:Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 5
    iput-boolean v1, p0, Lm2/c;->h:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 6
    :cond_3
    iput-boolean v1, p0, Lm2/c;->h:Z

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/util/b0;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lm2/c;->e:Lc2/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v0

    if-lez v0, :cond_5

    .line 3
    iget v0, p0, Lm2/c;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v0

    iget v2, p0, Lm2/c;->k:I

    iget v3, p0, Lm2/c;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v2, p0, Lm2/c;->e:Lc2/e0;

    invoke-interface {v2, p1, v0}, Lc2/e0;->a(Lcom/google/android/exoplayer2/util/b0;I)V

    .line 6
    iget v2, p0, Lm2/c;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lm2/c;->g:I

    .line 7
    iget v7, p0, Lm2/c;->k:I

    if-ne v2, v7, :cond_0

    .line 8
    iget-wide v4, p0, Lm2/c;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 9
    iget-object v3, p0, Lm2/c;->e:Lc2/e0;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lc2/e0;->c(JIIILc2/e0$a;)V

    .line 10
    iget-wide v2, p0, Lm2/c;->l:J

    iget-wide v4, p0, Lm2/c;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lm2/c;->l:J

    .line 11
    :cond_2
    iput v1, p0, Lm2/c;->f:I

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lm2/c;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Lm2/c;->a(Lcom/google/android/exoplayer2/util/b0;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-direct {p0}, Lm2/c;->g()V

    .line 14
    iget-object v0, p0, Lm2/c;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 15
    iget-object v0, p0, Lm2/c;->e:Lc2/e0;

    iget-object v1, p0, Lm2/c;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-interface {v0, v1, v3}, Lc2/e0;->a(Lcom/google/android/exoplayer2/util/b0;I)V

    .line 16
    iput v2, p0, Lm2/c;->f:I

    goto :goto_0

    .line 17
    :cond_4
    invoke-direct {p0, p1}, Lm2/c;->h(Lcom/google/android/exoplayer2/util/b0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iput v3, p0, Lm2/c;->f:I

    .line 19
    iget-object v0, p0, Lm2/c;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 20
    iget-object v0, p0, Lm2/c;->b:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->d()[B

    move-result-object v0

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 21
    iput v2, p0, Lm2/c;->g:I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lm2/c;->f:I

    .line 2
    iput v0, p0, Lm2/c;->g:I

    .line 3
    iput-boolean v0, p0, Lm2/c;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lm2/c;->l:J

    return-void
.end method

.method public d(Lc2/n;Lm2/i0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lm2/i0$d;->a()V

    .line 2
    invoke-virtual {p2}, Lm2/i0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm2/c;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lm2/i0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lc2/n;->q(II)Lc2/e0;

    move-result-object p1

    iput-object p1, p0, Lm2/c;->e:Lc2/e0;

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lm2/c;->l:J

    :cond_0
    return-void
.end method
