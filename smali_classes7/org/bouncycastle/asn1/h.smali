.class public abstract Lorg/bouncycastle/asn1/h;
.super Lorg/bouncycastle/asn1/r;
.source "SourceFile"


# instance fields
.field protected a:Lorg/bouncycastle/asn1/n;

.field protected b:Lorg/bouncycastle/asn1/k;

.field protected c:Lorg/bouncycastle/asn1/r;

.field protected d:I

.field protected e:Lorg/bouncycastle/asn1/r;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/f;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/h;->P(Lorg/bouncycastle/asn1/f;I)Lorg/bouncycastle/asn1/r;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/n;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/n;

    iput-object v1, p0, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/asn1/h;->P(Lorg/bouncycastle/asn1/f;I)Lorg/bouncycastle/asn1/r;

    move-result-object v1

    const/4 v0, 0x1

    :cond_0
    instance-of v2, v1, Lorg/bouncycastle/asn1/k;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/k;

    iput-object v1, p0, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/h;->P(Lorg/bouncycastle/asn1/f;I)Lorg/bouncycastle/asn1/r;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/y;

    if-nez v2, :cond_2

    iput-object v1, p0, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/h;->P(Lorg/bouncycastle/asn1/f;I)Lorg/bouncycastle/asn1/r;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/f;->f()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    instance-of p1, v1, Lorg/bouncycastle/asn1/y;

    if-eqz p1, :cond_3

    check-cast v1, Lorg/bouncycastle/asn1/y;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/y;->N()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/h;->S(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/y;->M()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input vector too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/k;Lorg/bouncycastle/asn1/r;ILorg/bouncycastle/asn1/r;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/h;->R(Lorg/bouncycastle/asn1/n;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/h;->b0(Lorg/bouncycastle/asn1/k;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/h;->Q(Lorg/bouncycastle/asn1/r;)V

    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/h;->S(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/asn1/r;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/h;->a0(Lorg/bouncycastle/asn1/r;)V

    return-void
.end method

.method private P(Lorg/bouncycastle/asn1/f;I)Lorg/bouncycastle/asn1/r;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/f;->f()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/f;->d(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few objects in input vector"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Q(Lorg/bouncycastle/asn1/r;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method private R(Lorg/bouncycastle/asn1/n;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method private S(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/asn1/h;->d:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a0(Lorg/bouncycastle/asn1/r;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method private b0(Lorg/bouncycastle/asn1/k;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    return-void
.end method


# virtual methods
.method H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method I()Lorg/bouncycastle/asn1/r;
    .locals 7

    new-instance v6, Lorg/bouncycastle/asn1/o0;

    iget-object v1, p0, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    iget-object v2, p0, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    iget-object v3, p0, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    iget v4, p0, Lorg/bouncycastle/asn1/h;->d:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/o0;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/k;Lorg/bouncycastle/asn1/r;ILorg/bouncycastle/asn1/r;)V

    return-object v6
.end method

.method J()Lorg/bouncycastle/asn1/r;
    .locals 7

    new-instance v6, Lorg/bouncycastle/asn1/k1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    iget-object v2, p0, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    iget-object v3, p0, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    iget v4, p0, Lorg/bouncycastle/asn1/h;->d:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/k1;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/k;Lorg/bouncycastle/asn1/r;ILorg/bouncycastle/asn1/r;)V

    return-object v6
.end method

.method public K()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    return-object v0
.end method

.method public L()Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    return-object v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/h;->d:I

    return v0
.end method

.method public N()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    return-object v0
.end method

.method public O()Lorg/bouncycastle/asn1/k;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/k;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/r;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/r;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method x(Lorg/bouncycastle/asn1/r;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/asn1/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/h;

    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    if-eqz v0, :cond_7

    iget-object v2, p1, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    iget-object p1, p1, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result p1

    return p1
.end method

.method z()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method
