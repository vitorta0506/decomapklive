.class final Lcom/google/android/gms/internal/recaptcha/ff;
.super Lcom/google/android/gms/internal/recaptcha/hf;
.source "SourceFile"


# instance fields
.field private final d:[B

.field private final e:I

.field private f:I


# direct methods
.method constructor <init>([BII)V
    .locals 2

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/hf;-><init>(Lcom/google/android/gms/internal/recaptcha/df;)V

    const-string p2, "buffer"

    .line 1
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length p2, p1

    sub-int v0, p2, p3

    or-int/2addr v0, p3

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    iput p3, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 5
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    .line 1
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzqh;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/recaptcha/zzqh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final B(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/ff;->C(J)V

    return-void
.end method

.method public final C(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 1
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 5
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 6
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 7
    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 9
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lcom/google/android/gms/internal/recaptcha/zzqh;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzqh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final D(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ff;->E(I)V

    return-void
.end method

.method public final E(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/recaptcha/ff;->N(J)V

    return-void
.end method

.method final F(ILcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/uh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/ge;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/ge;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/recaptcha/uh;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/recaptcha/ge;->i(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/hf;->a:Lcom/google/android/gms/internal/recaptcha/if;

    .line 5
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/recaptcha/uh;->g(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V

    return-void
.end method

.method public final G(Lcom/google/android/gms/internal/recaptcha/gh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/gh;->K()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/recaptcha/gh;->a(Lcom/google/android/gms/internal/recaptcha/hf;)V

    return-void
.end method

.method public final H(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ff;->I(Ljava/lang/String;)V

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v4, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    sub-int/2addr v4, v1

    .line 3
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/recaptcha/aj;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/aj;->c(Ljava/lang/CharSequence;)I

    move-result v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    sub-int/2addr v3, v2

    .line 7
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/aj;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/recaptcha/zi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzqh;

    .line 8
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzqh;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/recaptcha/hf;->q(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/zi;)V

    return-void
.end method

.method public final J(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    return-void
.end method

.method public final K(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    return-void
.end method

.method public final L(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/hf;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    sget v0, Lcom/google/android/gms/internal/recaptcha/ke;->a:I

    :cond_0
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    int-to-byte p1, p1

    .line 2
    aput-byte p1, v0, v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 3
    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzqh;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/recaptcha/zzqh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final M(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/ff;->N(J)V

    return-void
.end method

.method public final N(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/hf;->r()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    iget v6, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    sub-int/2addr v0, v6

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 1
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/vi;->s([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v6, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2
    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/recaptcha/vi;->s([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 3
    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v6, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 4
    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/zzqh;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/recaptcha/zzqh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final P([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzqh;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const-string p2, "Pos: %d, limit: %d, len: %d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/recaptcha/zzqh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/ff;->P([BII)V

    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final t(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 2
    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/zzqh;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/recaptcha/zzqh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final u(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ff;->t(B)V

    return-void
.end method

.method public final v([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/ff;->P([BII)V

    return-void
.end method

.method public final w()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ff;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ff;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final x(ILcom/google/android/gms/internal/recaptcha/zzpy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ff;->y(Lcom/google/android/gms/internal/recaptcha/zzpy;)V

    return-void
.end method

.method public final y(Lcom/google/android/gms/internal/recaptcha/zzpy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzi(Lcom/google/android/gms/internal/recaptcha/me;)V

    return-void
.end method

.method public final z(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ff;->L(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ff;->A(I)V

    return-void
.end method
