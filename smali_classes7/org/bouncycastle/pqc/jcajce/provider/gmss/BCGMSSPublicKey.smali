.class public Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/c;
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gmssParameterSet:Lqk/b;

.field private gmssParams:Lqk/b;

.field private publicKeyBytes:[B


# direct methods
.method public constructor <init>(Lqk/c;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>([BLqk/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->publicKeyBytes:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "GMSS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    sget-object v0, Lpk/e;->g:Lorg/bouncycastle/asn1/n;

    new-instance v0, Lpk/f;

    const/4 v0, 0x0

    throw v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameterSet()Lqk/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicKeyBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->publicKeyBytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMSS public key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->publicKeyBytes:[B

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/d;->d([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nHeight of Trees: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    throw v0
.end method
