.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/c;
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private params:Lsk/f;


# direct methods
.method public constructor <init>(Lsk/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getN()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getN()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getK()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getK()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getField()Lcl/b;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getField()Lcl/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcl/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getGoppaPoly()Lcl/i;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getGoppaPoly()Lcl/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcl/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getSInv()Lcl/a;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getSInv()Lcl/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcl/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getP1()Lcl/h;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getP1()Lcl/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcl/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getP2()Lcl/h;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getP2()Lcl/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcl/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    new-instance v8, Lpk/c;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->f()I

    move-result v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->e()I

    move-result v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->b()Lcl/b;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->c()Lcl/i;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->g()Lcl/h;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->h()Lcl/h;

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->j()Lcl/a;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lpk/c;-><init>(IILcl/b;Lcl/i;Lcl/h;Lcl/h;Lcl/a;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Loj/a;

    sget-object v2, Lpk/e;->m:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v2, Lgj/d;

    invoke-direct {v2, v1, v8}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method public getField()Lcl/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->b()Lcl/b;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getGoppaPoly()Lcl/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->c()Lcl/i;

    move-result-object v0

    return-object v0
.end method

.method public getH()Lcl/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->d()Lcl/a;

    move-result-object v0

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->e()I

    move-result v0

    return v0
.end method

.method getKeyParams()Lvj/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    return-object v0
.end method

.method public getN()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->f()I

    move-result v0

    return v0
.end method

.method public getP1()Lcl/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->g()Lcl/h;

    move-result-object v0

    return-object v0
.end method

.method public getP2()Lcl/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->h()Lcl/h;

    move-result-object v0

    return-object v0
.end method

.method public getQInv()[Lcl/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->i()[Lcl/i;

    move-result-object v0

    return-object v0
.end method

.method public getSInv()Lcl/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->j()Lcl/a;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v0}, Lsk/f;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v1}, Lsk/f;->f()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v1}, Lsk/f;->b()Lcl/b;

    move-result-object v1

    invoke-virtual {v1}, Lcl/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v1}, Lsk/f;->c()Lcl/i;

    move-result-object v1

    invoke-virtual {v1}, Lcl/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v1}, Lsk/f;->g()Lcl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcl/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v1}, Lsk/f;->h()Lcl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcl/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->params:Lsk/f;

    invoke-virtual {v1}, Lsk/f;->j()Lcl/a;

    move-result-object v1

    invoke-virtual {v1}, Lcl/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
