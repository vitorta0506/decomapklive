.class public Lorg/bouncycastle/cert/X509CRLHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/c;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4b244cad1L


# instance fields
.field private transient extensions:Loj/m;

.field private transient isIndirect:Z

.field private transient issuerName:Loj/o;

.field private transient x509CRL:Loj/i;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->parseStream(Ljava/io/InputStream;)Loj/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Loj/i;)V

    return-void
.end method

.method public constructor <init>(Loj/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;->init(Loj/i;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/cert/X509CRLHolder;->parseStream(Ljava/io/InputStream;)Loj/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Loj/i;)V

    return-void
.end method

.method private init(Loj/i;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {p1}, Loj/i;->I()Loj/w;

    move-result-object v0

    invoke-virtual {v0}, Loj/w;->x()Loj/m;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Loj/m;

    invoke-static {v0}, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirectCRL(Loj/m;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    new-instance v0, Loj/o;

    new-instance v1, Loj/n;

    invoke-virtual {p1}, Loj/i;->y()Lmj/c;

    move-result-object p1

    invoke-direct {v1, p1}, Loj/n;-><init>(Lmj/c;)V

    invoke-direct {v0, v1}, Loj/o;-><init>(Loj/n;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Loj/o;

    return-void
.end method

.method private static isIndirectCRL(Loj/m;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Loj/l;->p:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0, v1}, Loj/m;->y(Lorg/bouncycastle/asn1/n;)Loj/l;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Loj/l;->F()Lorg/bouncycastle/asn1/e;

    move-result-object p0

    invoke-static {p0}, Loj/r;->z(Ljava/lang/Object;)Loj/r;

    move-result-object p0

    invoke-virtual {p0}, Loj/r;->B()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static parseStream(Ljava/io/InputStream;)Loj/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "malformed data: "

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/asn1/j;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/j;->o()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Loj/i;->x(Ljava/lang/Object;)Loj/i;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "no content found"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

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

    invoke-static {p1}, Loj/i;->x(Ljava/lang/Object;)Loj/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509CRLHolder;->init(Loj/i;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CRLHolder;->getEncoded()[B

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
    instance-of v0, p1, Lorg/bouncycastle/cert/X509CRLHolder;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/X509CRLHolder;

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    iget-object p1, p1, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Loj/m;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/n;)Loj/l;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Loj/m;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Loj/m;

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->c(Loj/m;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Loj/m;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Loj/m;

    return-object v0
.end method

.method public getIssuer()Lmj/c;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0}, Loj/i;->y()Lmj/c;

    move-result-object v0

    invoke-static {v0}, Lmj/c;->x(Ljava/lang/Object;)Lmj/c;

    move-result-object v0

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0}, Loj/i;->z()Loj/y;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loj/y;->x()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Loj/m;

    invoke-static {v0}, Lorg/bouncycastle/cert/b;->d(Loj/m;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Lorg/bouncycastle/cert/c;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Loj/o;

    iget-object v1, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v1}, Loj/i;->B()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loj/w$b;

    invoke-virtual {v2}, Loj/w$b;->z()Lorg/bouncycastle/asn1/k;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/k;->O(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Lorg/bouncycastle/cert/c;

    iget-boolean v1, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    invoke-direct {p1, v2, v1, v0}, Lorg/bouncycastle/cert/c;-><init>(Loj/w$b;ZLoj/o;)V

    return-object p1

    :cond_1
    iget-boolean v3, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Loj/w$b;->B()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Loj/w$b;->x()Loj/m;

    move-result-object v2

    sget-object v3, Loj/l;->q:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v2, v3}, Loj/m;->y(Lorg/bouncycastle/asn1/n;)Loj/l;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Loj/l;->F()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/o;->x(Ljava/lang/Object;)Loj/o;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRevokedCertificates()Ljava/util/Collection;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0}, Loj/i;->F()[Loj/w$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->issuerName:Loj/o;

    iget-object v2, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v2}, Loj/i;->B()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loj/w$b;

    new-instance v4, Lorg/bouncycastle/cert/c;

    iget-boolean v5, p0, Lorg/bouncycastle/cert/X509CRLHolder;->isIndirect:Z

    invoke-direct {v4, v3, v5, v0}, Lorg/bouncycastle/cert/c;-><init>(Loj/w$b;ZLoj/o;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lorg/bouncycastle/cert/c;->a()Loj/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0}, Loj/i;->J()Loj/y;

    move-result-object v0

    invoke-virtual {v0}, Loj/y;->x()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->extensions:Loj/m;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0}, Loj/i;->hashCode()I

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0}, Loj/i;->I()Loj/w;

    move-result-object v0

    invoke-virtual {v0}, Loj/w;->H()Loj/a;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v2}, Loj/i;->H()Loj/a;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/b;->e(Loj/a;Loj/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Loj/w;->H()Loj/a;

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

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    invoke-virtual {v0}, Loj/i;->G()Lorg/bouncycastle/asn1/n0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/b;->M()[B

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

.method public toASN1Structure()Loj/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509CRLHolder;->x509CRL:Loj/i;

    return-object v0
.end method
