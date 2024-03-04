.class Lorg/bouncycastle/jce/provider/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/bouncycastle/asn1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    sput-object v0, Lorg/bouncycastle/jce/provider/d;->a:Lorg/bouncycastle/asn1/l;

    return-void
.end method

.method private static a(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lgj/c;->T0:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MD5"

    return-object p0

    :cond_0
    sget-object v0, Lfj/b;->i:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA1"

    return-object p0

    :cond_1
    sget-object v0, Lej/b;->f:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SHA224"

    return-object p0

    :cond_2
    sget-object v0, Lej/b;->c:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SHA256"

    return-object p0

    :cond_3
    sget-object v0, Lej/b;->d:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "SHA384"

    return-object p0

    :cond_4
    sget-object v0, Lej/b;->e:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "SHA512"

    return-object p0

    :cond_5
    sget-object v0, Ljj/b;->c:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "RIPEMD128"

    return-object p0

    :cond_6
    sget-object v0, Ljj/b;->b:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "RIPEMD160"

    return-object p0

    :cond_7
    sget-object v0, Ljj/b;->d:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "RIPEMD256"

    return-object p0

    :cond_8
    sget-object v0, Lzi/a;->b:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "GOST3411"

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Loj/a;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/bouncycastle/jce/provider/d;->a:Lorg/bouncycastle/asn1/l;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/r;->B(Lorg/bouncycastle/asn1/e;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    sget-object v2, Lgj/c;->u0:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lgj/g;->y(Ljava/lang/Object;)Lgj/g;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgj/g;->x()Loj/a;

    move-result-object p0

    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/d;->a(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "withRSAandMGF1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    sget-object v2, Lpj/o;->w3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/d;->a(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "withECDSA"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/security/Signature;Lorg/bouncycastle/asn1/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/jce/provider/d;->a:Lorg/bouncycastle/asn1/l;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/r;->B(Lorg/bouncycastle/asn1/e;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MGF1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_1
    const-class p1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception extracting parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException decoding parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
