.class final Lcom/google/android/gms/internal/recaptcha/gf;
.super Lcom/google/android/gms/internal/recaptcha/ef;
.source "SourceFile"


# instance fields
.field private final h:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ef;-><init>(I)V

    const-string p2, "out"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/gf;->h:Ljava/io/OutputStream;

    return-void
.end method

.method private final U()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/gf;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    return-void
.end method

.method private final V(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/gf;->U()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->Q(I)V

    return-void
.end method

.method public final B(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/ef;->R(J)V

    return-void
.end method

.method public final C(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/ef;->R(J)V

    return-void
.end method

.method public final D(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    if-ltz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/ef;->T(J)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/recaptcha/gf;->N(J)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/gf;->I(Ljava/lang/String;)V

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/ef;->e:I

    if-le v2, v3, :cond_0

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/recaptcha/aj;->b(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->W([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/gf;->U()V

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/hf;->l(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/recaptcha/zi; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/ef;->d:[B

    iget v4, p0, Lcom/google/android/gms/internal/recaptcha/ef;->e:I

    sub-int/2addr v4, v1

    .line 8
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/recaptcha/aj;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/aj;->c(Ljava/lang/CharSequence;)I

    move-result v3

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    .line 12
    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/recaptcha/aj;->b(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    .line 13
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/recaptcha/zi; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/recaptcha/zzqh;

    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/recaptcha/zzqh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    .line 17
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/recaptcha/zi; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/hf;->q(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/zi;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

    return-void
.end method

.method public final K(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    return-void
.end method

.method public final L(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    return-void
.end method

.method public final M(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/ef;->T(J)V

    return-void
.end method

.method public final N(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/ef;->T(J)V

    return-void
.end method

.method public final W([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p2, p0, Lcom/google/android/gms/internal/recaptcha/ef;->e:I

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    if-lt p2, p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ef;->d:[B

    .line 1
    invoke-static {p1, v1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/ef;->d:[B

    .line 2
    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, p2

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/gf;->U()V

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->e:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->d:[B

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/gf;->h:Ljava/io/OutputStream;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->g:I

    return-void
.end method

.method public final a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/gf;->W([BII)V

    return-void
.end method

.method public final s()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/gf;->U()V

    :cond_0
    return-void
.end method

.method public final t(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ef;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ef;->e:I

    if-ne v0, v1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/gf;->U()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->P(B)V

    return-void
.end method

.method public final u(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ef;->P(B)V

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
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/gf;->W([BII)V

    return-void
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/gf;->y(Lcom/google/android/gms/internal/recaptcha/zzpy;)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->L(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzi(Lcom/google/android/gms/internal/recaptcha/me;)V

    return-void
.end method

.method public final z(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/gf;->V(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/ef;->S(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/recaptcha/ef;->Q(I)V

    return-void
.end method
