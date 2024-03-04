.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/EdDSAPublicKey;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field transient eddsaPublicKey:Lvj/a;


# direct methods
.method constructor <init>(Loj/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->populateFromPubKeyInfo(Loj/v;)V

    return-void
.end method

.method constructor <init>(Lvj/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    return-void
.end method

.method constructor <init>([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/b;->b([B[B)Z

    move-result p1

    const-string v1, "raw key data not recognised"

    if-eqz p1, :cond_2

    array-length p1, p2

    sub-int/2addr p1, v0

    const/16 v2, 0x39

    if-ne p1, v2, :cond_0

    new-instance p1, Lvj/u;

    invoke-direct {p1, p2, v0}, Lvj/u;-><init>([BI)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    goto :goto_1

    :cond_0
    array-length p1, p2

    sub-int/2addr p1, v0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    new-instance p1, Lvj/s;

    invoke-direct {p1, p2, v0}, Lvj/s;-><init>([BI)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private populateFromPubKeyInfo(Loj/v;)V
    .locals 2

    sget-object v0, Laj/a;->e:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object v1

    invoke-virtual {v1}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lvj/u;

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/b;->M()[B

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lvj/u;-><init>([BI)V

    goto :goto_0

    :cond_0
    new-instance v0, Lvj/s;

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/b;->M()[B

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lvj/s;-><init>([BI)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Loj/v;->z(Ljava/lang/Object;)Loj/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->populateFromPubKeyInfo(Loj/v;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetKeyParameters()Lvj/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/security/PublicKey;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    instance-of v0, v0, Lvj/u;

    if-eqz v0, :cond_0

    const-string v0, "Ed448"

    goto :goto_0

    :cond_0
    const-string v0, "Ed25519"

    :goto_0
    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    instance-of v0, v0, Lvj/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/a;->c:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x39

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    check-cast v1, Lvj/u;

    array-length v0, v0

    invoke-virtual {v1, v2, v0}, Lvj/u;->b([BI)V

    return-object v2

    :cond_0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/a;->d:[B

    array-length v2, v0

    add-int/lit8 v2, v2, 0x20

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    check-cast v1, Lvj/s;

    array-length v0, v0

    invoke-virtual {v1, v2, v0}, Lvj/s;->b([BI)V

    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;->eddsaPublicKey:Lvj/a;

    const-string v2, "Public Key"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/b;->c(Ljava/lang/String;Ljava/lang/String;Lvj/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
