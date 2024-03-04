.class public Lorg/bouncycastle/cert/X509CertificateHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/c;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient extensions:Loj/m;

.field private transient x509Certificate:Loj/h;


# direct methods
.method public constructor <init>(Loj/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->init(Loj/h;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->parseBytes([B)Loj/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Loj/h;)V

    return-void
.end method

.method private init(Loj/h;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {p1}, Loj/h;->K()Loj/x;

    move-result-object p1

    invoke-virtual {p1}, Loj/x;->y()Loj/m;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Loj/m;

    return-void
.end method

.method private static parseBytes([B)Loj/h;
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

    invoke-static {p0}, Loj/h;->y(Ljava/lang/Object;)Loj/h;

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

    invoke-static {p1}, Loj/h;->y(Ljava/lang/Object;)Loj/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->init(Loj/h;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    iget-object p1, p1, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Loj/m;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/n;)Loj/l;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Loj/m;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Loj/m;

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->c(Loj/m;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Loj/m;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Loj/m;

    return-object v0
.end method

.method public getIssuer()Lmj/c;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->z()Lmj/c;

    move-result-object v0

    invoke-static {v0}, Lmj/c;->x(Ljava/lang/Object;)Lmj/c;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Loj/m;

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->d(Loj/m;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->x()Loj/y;

    move-result-object v0

    invoke-virtual {v0}, Loj/y;->x()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->H()Loj/y;

    move-result-object v0

    invoke-virtual {v0}, Loj/y;->x()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->B()Lorg/bouncycastle/asn1/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->F()Lorg/bouncycastle/asn1/n0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/b;->M()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithm()Loj/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->G()Loj/a;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lmj/c;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->I()Lmj/c;

    move-result-object v0

    invoke-static {v0}, Lmj/c;->x(Ljava/lang/Object;)Lmj/c;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Loj/v;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->J()Loj/v;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->L()I

    move-result v0

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->L()I

    move-result v0

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->extensions:Loj/m;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->K()Loj/x;

    move-result-object v0

    invoke-virtual {v0}, Loj/x;->H()Loj/a;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v2}, Loj/h;->G()Loj/a;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/b;->e(Loj/a;Loj/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Loj/x;->H()Loj/a;

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

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignature()[B

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
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->H()Loj/y;

    move-result-object v0

    invoke-virtual {v0}, Loj/y;->x()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    invoke-virtual {v0}, Loj/h;->x()Loj/y;

    move-result-object v0

    invoke-virtual {v0}, Loj/y;->x()Ljava/util/Date;

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

.method public toASN1Structure()Loj/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CertificateHolder;->x509Certificate:Loj/h;

    return-object v0
.end method
