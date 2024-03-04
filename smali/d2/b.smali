.class public final Ld2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/l;


# static fields
.field public static final p:Lc2/r;

.field private static final q:[I

.field private static final r:[I

.field private static final s:[B

.field private static final t:[B

.field private static final u:I


# instance fields
.field private final a:[B

.field private final b:I

.field private c:Z

.field private d:J

.field private e:I

.field private f:I

.field private g:Z

.field private h:J

.field private i:I

.field private j:I

.field private k:J

.field private l:Lc2/n;

.field private m:Lc2/e0;

.field private n:Lc2/b0;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ld2/a;->b:Ld2/a;

    sput-object v0, Ld2/b;->p:Lc2/r;

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Ld2/b;->q:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Ld2/b;->r:[I

    const-string v1, "#!AMR\n"

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/l0;->h0(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Ld2/b;->s:[B

    const-string v1, "#!AMR-WB\n"

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/l0;->h0(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Ld2/b;->t:[B

    const/16 v1, 0x8

    aget v0, v0, v1

    .line 6
    sput v0, Ld2/b;->u:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ld2/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 3
    :cond_0
    iput p1, p0, Ld2/b;->b:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 4
    iput-object p1, p0, Ld2/b;->a:[B

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Ld2/b;->i:I

    return-void
.end method

.method public static synthetic c()[Lc2/l;
    .locals 1

    invoke-static {}, Ld2/b;->m()[Lc2/l;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/b;->m:Lc2/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ld2/b;->l:Lc2/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static e(IJ)I
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private g(JZ)Lc2/b0;
    .locals 11

    .line 1
    iget v0, p0, Ld2/b;->i:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Ld2/b;->e(IJ)I

    move-result v8

    .line 2
    new-instance v0, Lc2/e;

    iget-wide v6, p0, Ld2/b;->h:J

    iget v9, p0, Ld2/b;->i:I

    move-object v3, v0

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lc2/e;-><init>(JJIIZ)V

    return-object v0
.end method

.method private i(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ld2/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal AMR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean v1, p0, Ld2/b;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "WB"

    goto :goto_0

    :cond_0
    const-string v1, "NB"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frame type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Ld2/b;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Ld2/b;->r:[I

    aget p1, v0, p1

    goto :goto_1

    :cond_2
    sget-object v0, Ld2/b;->q:[I

    aget p1, v0, p1

    :goto_1
    return p1
.end method

.method private j(I)Z
    .locals 1

    iget-boolean v0, p0, Ld2/b;->c:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private k(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    invoke-direct {p0, p1}, Ld2/b;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ld2/b;->j(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private l(I)Z
    .locals 1

    iget-boolean v0, p0, Ld2/b;->c:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic m()[Lc2/l;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lc2/l;

    new-instance v1, Ld2/b;

    invoke-direct {v1}, Ld2/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private n()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ld2/b;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld2/b;->o:Z

    .line 3
    iget-boolean v1, p0, Ld2/b;->c:Z

    if-eqz v1, :cond_0

    const-string v2, "audio/amr-wb"

    goto :goto_0

    :cond_0
    const-string v2, "audio/3gpp"

    :goto_0
    if-eqz v1, :cond_1

    const/16 v1, 0x3e80

    goto :goto_1

    :cond_1
    const/16 v1, 0x1f40

    .line 4
    :goto_1
    iget-object v3, p0, Ld2/b;->m:Lc2/e0;

    new-instance v4, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    .line 5
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    sget v4, Ld2/b;->u:I

    .line 6
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k1$b;->W(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object v0

    .line 10
    invoke-interface {v3, v0}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    :cond_2
    return-void
.end method

.method private o(JI)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ld2/b;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ld2/b;->b:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-eqz v1, :cond_4

    iget v1, p0, Ld2/b;->i:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v4, p0, Ld2/b;->e:I

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget v1, p0, Ld2/b;->j:I

    const/16 v4, 0x14

    if-ge v1, v4, :cond_2

    if-ne p3, v3, :cond_5

    :cond_2
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Ld2/b;->g(JZ)Lc2/b0;

    move-result-object p1

    iput-object p1, p0, Ld2/b;->n:Lc2/b0;

    .line 5
    iget-object p2, p0, Ld2/b;->l:Lc2/n;

    invoke-interface {p2, p1}, Lc2/n;->l(Lc2/b0;)V

    .line 6
    iput-boolean v2, p0, Ld2/b;->g:Z

    goto :goto_2

    .line 7
    :cond_4
    :goto_1
    new-instance p1, Lc2/b0$b;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Lc2/b0$b;-><init>(J)V

    iput-object p1, p0, Ld2/b;->n:Lc2/b0;

    .line 8
    iget-object p2, p0, Ld2/b;->l:Lc2/n;

    invoke-interface {p2, p1}, Lc2/n;->l(Lc2/b0;)V

    .line 9
    iput-boolean v2, p0, Ld2/b;->g:Z

    :cond_5
    :goto_2
    return-void
.end method

.method private static p(Lc2/m;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lc2/m;->f()V

    .line 2
    array-length v0, p1

    new-array v0, v0, [B

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lc2/m;->m([BII)V

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private q(Lc2/m;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc2/m;->f()V

    .line 2
    iget-object v0, p0, Ld2/b;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lc2/m;->m([BII)V

    .line 3
    iget-object p1, p0, Ld2/b;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 v0, p1, 0x83

    if-gtz v0, :cond_0

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0xf

    .line 4
    invoke-direct {p0, p1}, Ld2/b;->i(I)I

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid padding bits for frame header "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private r(Lc2/m;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ld2/b;->s:[B

    invoke-static {p1, v0}, Ld2/b;->p(Lc2/m;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v2, p0, Ld2/b;->c:Z

    .line 3
    array-length v0, v0

    invoke-interface {p1, v0}, Lc2/m;->k(I)V

    return v3

    .line 4
    :cond_0
    sget-object v0, Ld2/b;->t:[B

    invoke-static {p1, v0}, Ld2/b;->p(Lc2/m;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v3, p0, Ld2/b;->c:Z

    .line 6
    array-length v0, v0

    invoke-interface {p1, v0}, Lc2/m;->k(I)V

    return v3

    :cond_1
    return v2
.end method

.method private s(Lc2/m;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ld2/b;->f:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Ld2/b;->q(Lc2/m;)I

    move-result v0

    iput v0, p0, Ld2/b;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iput v0, p0, Ld2/b;->f:I

    .line 4
    iget v0, p0, Ld2/b;->i:I

    if-ne v0, v2, :cond_0

    .line 5
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Ld2/b;->h:J

    .line 6
    iget v0, p0, Ld2/b;->e:I

    iput v0, p0, Ld2/b;->i:I

    .line 7
    :cond_0
    iget v0, p0, Ld2/b;->i:I

    iget v3, p0, Ld2/b;->e:I

    if-ne v0, v3, :cond_1

    .line 8
    iget v0, p0, Ld2/b;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Ld2/b;->j:I

    goto :goto_0

    :catch_0
    return v2

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Ld2/b;->m:Lc2/e0;

    iget v3, p0, Ld2/b;->f:I

    .line 10
    invoke-interface {v0, p1, v3, v1}, Lc2/e0;->b(Lj3/f;IZ)I

    move-result p1

    if-ne p1, v2, :cond_2

    return v2

    .line 11
    :cond_2
    iget v0, p0, Ld2/b;->f:I

    sub-int/2addr v0, p1

    iput v0, p0, Ld2/b;->f:I

    const/4 p1, 0x0

    if-lez v0, :cond_3

    return p1

    .line 12
    :cond_3
    iget-object v1, p0, Ld2/b;->m:Lc2/e0;

    iget-wide v2, p0, Ld2/b;->k:J

    iget-wide v4, p0, Ld2/b;->d:J

    add-long/2addr v2, v4

    const/4 v4, 0x1

    iget v5, p0, Ld2/b;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lc2/e0;->c(JIIILc2/e0$a;)V

    .line 13
    iget-wide v0, p0, Ld2/b;->d:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld2/b;->d:J

    return p1
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 1
    iput-wide p3, p0, Ld2/b;->d:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld2/b;->e:I

    .line 3
    iput v0, p0, Ld2/b;->f:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ld2/b;->n:Lc2/b0;

    instance-of v1, v0, Lc2/e;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lc2/e;

    invoke-virtual {v0, p1, p2}, Lc2/e;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Ld2/b;->k:J

    goto :goto_0

    .line 6
    :cond_0
    iput-wide p3, p0, Ld2/b;->k:J

    :goto_0
    return-void
.end method

.method public b(Lc2/m;Lc2/a0;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ld2/b;->d()V

    .line 2
    invoke-interface {p1}, Lc2/m;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Ld2/b;->r(Lc2/m;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Could not find AMR header."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Ld2/b;->n()V

    .line 6
    invoke-direct {p0, p1}, Ld2/b;->s(Lc2/m;)I

    move-result p2

    .line 7
    invoke-interface {p1}, Lc2/m;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ld2/b;->o(JI)V

    return p2
.end method

.method public f(Lc2/n;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ld2/b;->l:Lc2/n;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lc2/n;->q(II)Lc2/e0;

    move-result-object v0

    iput-object v0, p0, Ld2/b;->m:Lc2/e0;

    .line 3
    invoke-interface {p1}, Lc2/n;->o()V

    return-void
.end method

.method public h(Lc2/m;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ld2/b;->r(Lc2/m;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
