.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/EdDSAPrivateKey;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final attributes:[B

.field transient eddsaPrivateKey:Lvj/a;

.field private final hasPublicKey:Z


# direct methods
.method constructor <init>(Lgj/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lgj/d;->H()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hasPublicKey:Z

    invoke-virtual {p1}, Lgj/d;->x()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgj/d;->x()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->attributes:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->populateFromPrivateKeyInfo(Lgj/d;)V

    return-void
.end method

.method constructor <init>(Lvj/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hasPublicKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->attributes:[B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Lvj/a;

    return-void
.end method

.method private populateFromPrivateKeyInfo(Lgj/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    sget-object v1, Laj/a;->e:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p1}, Lgj/d;->B()Loj/a;

    move-result-object p1

    invoke-virtual {p1}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lvj/t;

    invoke-static {v0}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lvj/t;-><init>([BI)V

    goto :goto_0

    :cond_0
    new-instance p1, Lvj/r;

    invoke-static {v0}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lvj/r;-><init>([BI)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Lvj/a;

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

    invoke-static {p1}, Lgj/d;->y(Ljava/lang/Object;)Lgj/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->populateFromPrivateKeyInfo(Lgj/d;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetKeyParameters()Lvj/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Lvj/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ljava/security/PrivateKey;

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Lvj/a;

    instance-of v0, v0, Lvj/t;

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

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->attributes:[B

    invoke-static {v0}, Lorg/bouncycastle/asn1/u;->L(Ljava/lang/Object;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Lvj/a;

    invoke-static {v1, v0}, Lxj/b;->a(Lvj/a;Lorg/bouncycastle/asn1/u;)Lgj/d;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->hasPublicKey:Z

    if-eqz v2, :cond_0

    const-string v2, "org.bouncycastle.pkcs8.v1_info_only"

    invoke-static {v2}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Lgj/d;

    invoke-virtual {v1}, Lgj/d;->B()Loj/a;

    move-result-object v3

    invoke-virtual {v1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/jcajce/interfaces/EdDSAPublicKey;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Lvj/a;

    instance-of v1, v0, Lvj/t;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    check-cast v0, Lvj/t;

    invoke-virtual {v0}, Lvj/t;->b()Lvj/u;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Lvj/a;)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    check-cast v0, Lvj/r;

    invoke-virtual {v0}, Lvj/r;->b()Lvj/s;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Lvj/a;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->eddsaPrivateKey:Lvj/a;

    instance-of v1, v0, Lvj/t;

    if-eqz v1, :cond_0

    check-cast v0, Lvj/t;

    invoke-virtual {v0}, Lvj/t;->b()Lvj/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lvj/r;

    invoke-virtual {v0}, Lvj/r;->b()Lvj/s;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Private Key"

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/b;->c(Ljava/lang/String;Ljava/lang/String;Lvj/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
