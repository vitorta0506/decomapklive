.class public Lpj/i;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lpj/o;


# static fields
.field private static final g:Ljava/math/BigInteger;


# instance fields
.field private a:Lpj/m;

.field private b:Lfk/e;

.field private c:Lpj/k;

.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lpj/i;->g:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lpj/i;->b:Lfk/e;

    iput-object p2, p0, Lpj/i;->c:Lpj/k;

    iput-object p3, p0, Lpj/i;->d:Ljava/math/BigInteger;

    iput-object p4, p0, Lpj/i;->e:Ljava/math/BigInteger;

    invoke-static {p5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lpj/i;->f:[B

    invoke-static {p1}, Lfk/c;->e(Lfk/e;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lpj/m;

    invoke-virtual {p1}, Lfk/e;->p()Lmk/a;

    move-result-object p1

    invoke-interface {p1}, Lmk/a;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Lpj/m;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p2, p0, Lpj/i;->a:Lpj/m;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lfk/c;->c(Lfk/e;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lfk/e;->p()Lmk/a;

    move-result-object p1

    check-cast p1, Lmk/f;

    invoke-interface {p1}, Lmk/f;->c()Lmk/e;

    move-result-object p1

    invoke-interface {p1}, Lmk/e;->a()[I

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p2, p5, :cond_1

    new-instance p2, Lpj/m;

    aget p4, p1, p4

    aget p1, p1, p3

    invoke-direct {p2, p4, p1}, Lpj/m;-><init>(II)V

    goto :goto_0

    :cond_1
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    new-instance p2, Lpj/m;

    const/4 v0, 0x4

    aget v0, p1, v0

    aget p3, p1, p3

    aget p4, p1, p4

    aget p1, p1, p5

    invoke-direct {p2, v0, p3, p4, p1}, Lpj/m;-><init>(IIII)V

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only trinomial and pentomial curves are supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'curve\' is of an unsupported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/k;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    sget-object v1, Lpj/i;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/k;->O(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lpj/i;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lpj/i;->e:Ljava/math/BigInteger;

    :cond_0
    new-instance v0, Lpj/h;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lpj/m;->y(Ljava/lang/Object;)Lpj/m;

    move-result-object v1

    iget-object v2, p0, Lpj/i;->d:Ljava/math/BigInteger;

    iget-object v3, p0, Lpj/i;->e:Ljava/math/BigInteger;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lpj/h;-><init>(Lpj/m;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/s;)V

    invoke-virtual {v0}, Lpj/h;->x()Lfk/e;

    move-result-object v1

    iput-object v1, p0, Lpj/i;->b:Lfk/e;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    instance-of v1, p1, Lpj/k;

    if-eqz v1, :cond_1

    check-cast p1, Lpj/k;

    iput-object p1, p0, Lpj/i;->c:Lpj/k;

    goto :goto_0

    :cond_1
    new-instance v1, Lpj/k;

    iget-object v2, p0, Lpj/i;->b:Lfk/e;

    check-cast p1, Lorg/bouncycastle/asn1/o;

    invoke-direct {v1, v2, p1}, Lpj/k;-><init>(Lfk/e;Lorg/bouncycastle/asn1/o;)V

    iput-object v1, p0, Lpj/i;->c:Lpj/k;

    :goto_0
    invoke-virtual {v0}, Lpj/h;->y()[B

    move-result-object p1

    iput-object p1, p0, Lpj/i;->f:[B

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad version in X9ECParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static B(Ljava/lang/Object;)Lpj/i;
    .locals 1

    instance-of v0, p0, Lpj/i;

    if-eqz v0, :cond_0

    check-cast p0, Lpj/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpj/i;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpj/i;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public F()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lpj/i;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public G()[B
    .locals 1

    iget-object v0, p0, Lpj/i;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    sget-object v2, Lpj/i;->g:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpj/i;->a:Lpj/m;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lpj/h;

    iget-object v2, p0, Lpj/i;->b:Lfk/e;

    iget-object v3, p0, Lpj/i;->f:[B

    invoke-direct {v1, v2, v3}, Lpj/h;-><init>(Lfk/e;[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpj/i;->c:Lpj/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget-object v2, p0, Lpj/i;->d:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpj/i;->e:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/k;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Lfk/e;
    .locals 1

    iget-object v0, p0, Lpj/i;->b:Lfk/e;

    return-object v0
.end method

.method public y()Lfk/i;
    .locals 1

    iget-object v0, p0, Lpj/i;->c:Lpj/k;

    invoke-virtual {v0}, Lpj/k;->x()Lfk/i;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lpj/i;->e:Ljava/math/BigInteger;

    return-object v0
.end method
