.class public Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/c;
.implements Ljava/io/Serializable;


# static fields
.field private static EMPTY_ARRAY:[Loj/d; = null

.field private static final serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient attrCert:Loj/e;

.field private transient extensions:Loj/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Loj/d;

    sput-object v0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->EMPTY_ARRAY:[Loj/d;

    return-void
.end method

.method public constructor <init>(Loj/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->init(Loj/e;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->parseBytes([B)Loj/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;-><init>(Loj/e;)V

    return-void
.end method

.method private init(Loj/e;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {p1}, Loj/e;->x()Loj/f;

    move-result-object p1

    invoke-virtual {p1}, Loj/f;->z()Loj/m;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Loj/m;

    return-void
.end method

.method private static parseBytes([B)Loj/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/cert/b;->f([B)Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Loj/e;->y(Ljava/lang/Object;)Loj/e;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    invoke-static {p1}, Loj/e;->y(Ljava/lang/Object;)Loj/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->init(Loj/e;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    iget-object p1, p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttributes()[Loj/d;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->y()Lorg/bouncycastle/asn1/s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    new-array v1, v1, [Loj/d;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v3

    invoke-static {v3}, Loj/d;->y(Ljava/lang/Object;)Loj/d;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAttributes(Lorg/bouncycastle/asn1/n;)[Loj/d;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->y()Lorg/bouncycastle/asn1/s;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v3

    invoke-static {v3}, Loj/d;->y(Ljava/lang/Object;)Loj/d;

    move-result-object v3

    invoke-virtual {v3}, Loj/d;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->EMPTY_ARRAY:[Loj/d;

    return-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Loj/d;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Loj/d;

    return-object p1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Loj/m;

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->b(Loj/m;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/n;)Loj/l;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Loj/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Loj/m;->y(Lorg/bouncycastle/asn1/n;)Loj/l;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Loj/m;

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->c(Loj/m;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Loj/m;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Loj/m;

    return-object v0
.end method

.method public getHolder()Lorg/bouncycastle/cert/a;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/a;

    iget-object v1, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v1}, Loj/e;->x()Loj/f;

    move-result-object v1

    invoke-virtual {v1}, Loj/f;->B()Loj/p;

    move-result-object v1

    invoke-virtual {v1}, Loj/p;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/s;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/a;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0
.end method

.method public getIssuer()Lqj/a;
    .locals 2

    new-instance v0, Lqj/a;

    iget-object v1, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v1}, Loj/e;->x()Loj/f;

    move-result-object v1

    invoke-virtual {v1}, Loj/f;->G()Loj/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lqj/a;-><init>(Loj/b;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->H()Lorg/bouncycastle/asn1/n0;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->a(Lorg/bouncycastle/asn1/n0;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Loj/m;

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->d(Loj/m;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->x()Loj/c;

    move-result-object v0

    invoke-virtual {v0}, Loj/c;->y()Lorg/bouncycastle/asn1/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->g(Lorg/bouncycastle/asn1/i;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->x()Loj/c;

    move-result-object v0

    invoke-virtual {v0}, Loj/c;->z()Lorg/bouncycastle/asn1/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->g(Lorg/bouncycastle/asn1/i;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->I()Lorg/bouncycastle/asn1/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/b;->M()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithm()Loj/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->z()Loj/a;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->K()Lorg/bouncycastle/asn1/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->extensions:Loj/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSignatureValid(Lok/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->J()Loj/a;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v2}, Loj/e;->z()Loj/a;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/b;->e(Loj/a;Loj/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Loj/f;->J()Loj/a;

    move-result-object v1

    invoke-interface {p1, v1}, Lok/b;->a(Loj/a;)Lok/a;

    move-result-object p1

    invoke-interface {p1}, Lok/a;->b()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/m;->n(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lok/a;->a([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cert/CertException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/CertException;

    const-string v0, "signature invalid - algorithm identifier mismatch"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cert/CertException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValidOn(Ljava/util/Date;)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    invoke-virtual {v0}, Loj/e;->x()Loj/f;

    move-result-object v0

    invoke-virtual {v0}, Loj/f;->x()Loj/c;

    move-result-object v0

    invoke-virtual {v0}, Loj/c;->z()Lorg/bouncycastle/asn1/i;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cert/b;->g(Lorg/bouncycastle/asn1/i;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Loj/c;->y()Lorg/bouncycastle/asn1/i;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->g(Lorg/bouncycastle/asn1/i;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toASN1Structure()Loj/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->attrCert:Loj/e;

    return-object v0
.end method
