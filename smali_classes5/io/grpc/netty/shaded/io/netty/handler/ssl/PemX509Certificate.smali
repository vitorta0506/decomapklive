.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;


# static fields
.field private static final BEGIN_CERT:[B

.field private static final END_CERT:[B


# instance fields
.field private final content:Lkg/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    const-string v1, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    const-string v1, "\n-----END CERTIFICATE-----\n"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    return-void
.end method

.method private constructor <init>(Lkg/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    const-string v0, "content"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    return-void
.end method

.method private static append(Lkg/k;ZLio/grpc/netty/shaded/io/netty/handler/ssl/f1;ILkg/j;)Lkg/j;
    .locals 0

    .line 1
    invoke-interface {p2}, Lkg/l;->content()Lkg/j;

    move-result-object p2

    if-nez p4, :cond_0

    .line 2
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result p4

    mul-int p4, p4, p3

    invoke-static {p0, p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->newBuffer(Lkg/k;ZI)Lkg/j;

    move-result-object p4

    .line 3
    :cond_0
    invoke-virtual {p2}, Lkg/j;->m2()Lkg/j;

    move-result-object p0

    invoke-virtual {p4, p0}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    return-object p4
.end method

.method private static append(Lkg/k;ZLjava/security/cert/X509Certificate;ILkg/j;)Lkg/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 4
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lkg/s0;->k([B)Lkg/j;

    move-result-object p2

    .line 5
    :try_start_0
    invoke-static {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->r(Lkg/k;Lkg/j;)Lkg/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p4, :cond_0

    .line 6
    :try_start_1
    sget-object p4, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    array-length p4, p4

    .line 7
    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v1

    add-int/2addr p4, v1

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    array-length v1, v1

    add-int/2addr p4, v1

    mul-int p4, p4, p3

    .line 8
    invoke-static {p0, p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->newBuffer(Lkg/k;ZI)Lkg/j;

    move-result-object p4

    .line 9
    :cond_0
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->BEGIN_CERT:[B

    invoke-virtual {p4, p0}, Lkg/j;->A2([B)Lkg/j;

    .line 10
    invoke-virtual {p4, v0}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    .line 11
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->END_CERT:[B

    invoke-virtual {p4, p0}, Lkg/j;->A2([B)Lkg/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object p4

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 15
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 16
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 17
    throw p0
.end method

.method private static newBuffer(Lkg/k;ZI)Lkg/j;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0, p2}, Lkg/k;->h(I)Lkg/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lkg/k;->l(I)Lkg/j;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static varargs toPEM(Lkg/k;Z[Ljava/security/cert/X509Certificate;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const-string v0, "chain"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->f([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 2
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    aget-object v0, p2, v2

    .line 4
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    array-length v1, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    .line 7
    instance-of v5, v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    if-eqz v5, :cond_1

    .line 8
    check-cast v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    array-length v5, p2

    invoke-static {p0, p1, v4, v5, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->append(Lkg/k;ZLio/grpc/netty/shaded/io/netty/handler/ssl/f1;ILkg/j;)Lkg/j;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_1
    array-length v5, p2

    invoke-static {p0, p1, v4, v5, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->append(Lkg/k;ZLjava/security/cert/X509Certificate;ILkg/j;)Lkg/j;

    move-result-object v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null element in chain: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    invoke-direct {p0, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;-><init>(Lkg/j;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 13
    :cond_4
    throw p0
.end method

.method public static valueOf(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public static valueOf([B)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 0

    .line 1
    invoke-static {p0}, Lkg/s0;->k([B)Lkg/j;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->valueOf(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public content()Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v1
.end method

.method public copy()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->N()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->copy()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lkg/l;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->copy()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->f0()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->duplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lkg/l;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->duplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBasicConstraints()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEncoded()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSignature()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTBSCertificate()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVersion()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSensitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refCnt()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release(I)Z

    move-result p1

    return p1
.end method

.method public replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public bridge synthetic replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lkg/j;)Lkg/l;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    return-object p0
.end method

.method public retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->U1(I)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lkg/l;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lkg/l;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public retainedDuplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->V1()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->retainedDuplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lkg/l;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->retainedDuplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lkg/j;->p2(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->q2()Lkg/j;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->content:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lkg/l;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lkg/l;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
