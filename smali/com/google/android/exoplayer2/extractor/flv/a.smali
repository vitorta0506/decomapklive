.class final Lcom/google/android/exoplayer2/extractor/flv/a;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "SourceFile"


# static fields
.field private static final e:[I


# instance fields
.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/a;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Lc2/e0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lc2/e0;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/exoplayer2/util/b0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    .line 4
    sget-object v0, Lcom/google/android/exoplayer2/extractor/flv/a;->e:[I

    aget p1, v0, p1

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    const-string v2, "audio/mpeg"

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lc2/e0;

    invoke-interface {v0, p1}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    .line 11
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->c:Z

    goto :goto_2

    :cond_0
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    if-ne v0, p1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio format not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    const-string p1, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string p1, "audio/g711-mlaw"

    .line 13
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    const/16 v0, 0x1f40

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lc2/e0;

    invoke-interface {v0, p1}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    .line 19
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->c:Z

    .line 20
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->b:Z

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/b0;->Q(I)V

    :goto_3
    return v1
.end method

.method protected c(Lcom/google/android/exoplayer2/util/b0;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v7

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lc2/e0;

    invoke-interface {v0, p1, v7}, Lc2/e0;->a(Lcom/google/android/exoplayer2/util/b0;I)V

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lc2/e0;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p2

    invoke-interface/range {v3 .. v9}, Lc2/e0;->c(JIIILc2/e0$a;)V

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->c:Z

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result p2

    new-array p3, p2, [B

    .line 8
    invoke-virtual {p1, p3, v2, p2}, Lcom/google/android/exoplayer2/util/b0;->j([BII)V

    .line 9
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/a;->e([B)Lcom/google/android/exoplayer2/audio/a$b;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/google/android/exoplayer2/k1$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/k1$b;-><init>()V

    const-string v0, "audio/mp4a-latm"

    .line 11
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/k1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/exoplayer2/audio/a$b;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/k1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    iget v0, p1, Lcom/google/android/exoplayer2/audio/a$b;->b:I

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/k1$b;->H(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p2

    iget p1, p1, Lcom/google/android/exoplayer2/audio/a$b;->a:I

    .line 14
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/k1$b;->f0(I)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    .line 15
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k1$b;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k1$b;->E()Lcom/google/android/exoplayer2/k1;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lc2/e0;

    invoke-interface {p2, p1}, Lc2/e0;->d(Lcom/google/android/exoplayer2/k1;)V

    .line 18
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->c:Z

    return v2

    .line 19
    :cond_1
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/a;->d:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v9

    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lc2/e0;

    invoke-interface {v0, p1, v9}, Lc2/e0;->a(Lcom/google/android/exoplayer2/util/b0;I)V

    .line 22
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lc2/e0;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, p2

    invoke-interface/range {v5 .. v11}, Lc2/e0;->c(JIIILc2/e0$a;)V

    return v1
.end method
