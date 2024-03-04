.class public Lpk/n;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:[B

.field private final d:[B

.field private final e:[B

.field private final f:[B

.field private final g:I

.field private final h:[B


# direct methods
.method public constructor <init>(I[B[B[B[B[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lpk/n;->a:I

    iput p1, p0, Lpk/n;->b:I

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->c:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->d:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->e:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->f:[B

    invoke-static {p6}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->h:[B

    const/4 p1, -0x1

    iput p1, p0, Lpk/n;->g:I

    return-void
.end method

.method public constructor <init>(I[B[B[B[B[BI)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lpk/n;->a:I

    iput p1, p0, Lpk/n;->b:I

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->c:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->d:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->e:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->f:[B

    invoke-static {p6}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->h:[B

    iput p7, p0, Lpk/n;->g:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 8

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/util/b;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/k;->O(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/bouncycastle/util/b;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/k;->O(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown version of sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v1

    iput v1, p0, Lpk/n;->a:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key sequence wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v5

    iput v5, p0, Lpk/n;->b:I

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Lpk/n;->c:[B

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Lpk/n;->d:[B

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Lpk/n;->e:[B

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Lpk/n;->f:[B

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-ne v5, v6, :cond_5

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/y;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/y;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/k;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in XMSSPrivateKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    const/4 v0, -0x1

    :goto_2
    iput v0, p0, Lpk/n;->g:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/y;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/y;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/o;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/o;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/n;->h:[B

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Lpk/n;->h:[B

    :goto_3
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keySeq should be 5 or 6 in length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static z(Ljava/lang/Object;)Lpk/n;
    .locals 1

    instance-of v0, p0, Lpk/n;

    if-eqz v0, :cond_0

    check-cast p0, Lpk/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpk/n;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpk/n;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, Lpk/n;->g:I

    return v0
.end method

.method public F()[B
    .locals 1

    iget-object v0, p0, Lpk/n;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public G()[B
    .locals 1

    iget-object v0, p0, Lpk/n;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public H()[B
    .locals 1

    iget-object v0, p0, Lpk/n;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public I()[B
    .locals 1

    iget-object v0, p0, Lpk/n;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lpk/n;->a:I

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 8

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    iget v1, p0, Lpk/n;->g:I

    if-ltz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/k;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/k;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/f;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/k;

    iget v3, p0, Lpk/n;->b:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    iget-object v3, p0, Lpk/n;->c:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    iget-object v3, p0, Lpk/n;->d:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    iget-object v3, p0, Lpk/n;->e:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    iget-object v3, p0, Lpk/n;->f:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget v2, p0, Lpk/n;->g:I

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    new-instance v4, Lorg/bouncycastle/asn1/d1;

    new-instance v5, Lorg/bouncycastle/asn1/k;

    int-to-long v6, v2

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-direct {v4, v3, v3, v5}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    const/4 v2, 0x1

    new-instance v4, Lorg/bouncycastle/asn1/w0;

    iget-object v5, p0, Lpk/n;->h:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, Lpk/n;->h:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lpk/n;->b:I

    return v0
.end method
