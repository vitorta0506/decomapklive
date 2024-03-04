.class final Ln2/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lc2/n;

.field private final b:Lc2/e0;

.field private final c:Ln2/c;

.field private final d:Lcom/google/android/exoplayer2/k1;

.field private final e:I

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lc2/n;Lc2/e0;Ln2/c;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln2/b$c;->a:Lc2/n;

    .line 3
    iput-object p2, p0, Ln2/b$c;->b:Lc2/e0;

    .line 4
    iput-object p3, p0, Ln2/b$c;->c:Ln2/c;

    .line 5
    iget p1, p3, Ln2/c;->b:I

    iget p2, p3, Ln2/c;->f:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 6
    iget p2, p3, Ln2/c;->e:I

    if-ne p2, p1, :cond_0

    .line 7
    iget p2, p3, Ln2/c;->c:I

    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    mul-int p2, p2, p1

    .line 8
    div-int/lit8 p2, p2, 0xa

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ln2/b$c;->e:I

    .line 10
    new-instance p2, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    .line 11
    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/k1$b;->G(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/k1$b;->Z(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/k1$b;->W(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    iget p2, p3, Ln2/c;->b:I

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    iget p2, p3, Ln2/c;->c:I

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/k1$b;->Y(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p1

    iput-object p1, p0, Ln2/b$c;->d:Lcom/google/android/exoplayer2/k1;

    return-void

    .line 19
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected block size: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Ln2/c;->e:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Ln2/b$c;->a:Lc2/n;

    new-instance v8, Ln2/e;

    iget-object v2, p0, Ln2/b$c;->c:Ln2/c;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Ln2/e;-><init>(Ln2/c;IJJ)V

    invoke-interface {v0, v8}, Lc2/n;->l(Lc2/b0;)V

    .line 2
    iget-object p1, p0, Ln2/b$c;->b:Lc2/e0;

    iget-object p2, p0, Ln2/b$c;->d:Lcom/google/android/exoplayer2/k1;

    invoke-interface {p1, p2}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    return-void
.end method

.method public b(Lc2/m;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    .line 1
    iget v7, v0, Ln2/b$c;->g:I

    iget v8, v0, Ln2/b$c;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v6, v8

    .line 2
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 3
    iget-object v6, v0, Ln2/b$c;->b:Lc2/e0;

    move-object/from16 v8, p1

    invoke-interface {v6, v8, v7, v3}, Lc2/e0;->b(Lj3/f;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v1, v4

    goto :goto_0

    .line 4
    :cond_0
    iget v4, v0, Ln2/b$c;->g:I

    add-int/2addr v4, v3

    iput v4, v0, Ln2/b$c;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Ln2/b$c;->c:Ln2/c;

    iget v2, v1, Ln2/c;->e:I

    .line 6
    iget v4, v0, Ln2/b$c;->g:I

    div-int/2addr v4, v2

    if-lez v4, :cond_2

    .line 7
    iget-wide v7, v0, Ln2/b$c;->f:J

    iget-wide v9, v0, Ln2/b$c;->h:J

    const-wide/32 v11, 0xf4240

    iget v1, v1, Ln2/c;->c:I

    int-to-long v13, v1

    .line 8
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/l0;->E0(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v4, v2

    .line 9
    iget v1, v0, Ln2/b$c;->g:I

    sub-int/2addr v1, v15

    .line 10
    iget-object v11, v0, Ln2/b$c;->b:Lc2/e0;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-interface/range {v11 .. v17}, Lc2/e0;->c(JIIILc2/e0$a;)V

    .line 11
    iget-wide v7, v0, Ln2/b$c;->h:J

    int-to-long v4, v4

    add-long/2addr v7, v4

    iput-wide v7, v0, Ln2/b$c;->h:J

    .line 12
    iput v1, v0, Ln2/b$c;->g:I

    :cond_2
    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln2/b$c;->f:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln2/b$c;->g:I

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Ln2/b$c;->h:J

    return-void
.end method
