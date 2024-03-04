.class public abstract Lio/jsonwebtoken/impl/crypto/MacProvider;
.super Lio/jsonwebtoken/impl/crypto/SignatureProvider;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/jsonwebtoken/impl/crypto/SignatureProvider;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    .line 2
    invoke-virtual {p1}, Lio/jsonwebtoken/SignatureAlgorithm;->isHmac()Z

    move-result p1

    const-string p2, "SignatureAlgorithm must be a HMAC SHA algorithm."

    invoke-static {p1, p2}, Lio/jsonwebtoken/lang/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method

.method public static generateKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 1
    sget-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->HS512:Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-static {v0}, Lio/jsonwebtoken/impl/crypto/MacProvider;->generateKey(Lio/jsonwebtoken/SignatureAlgorithm;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static generateKey(Lio/jsonwebtoken/SignatureAlgorithm;)Ljavax/crypto/SecretKey;
    .locals 1

    .line 2
    sget-object v0, Lio/jsonwebtoken/impl/crypto/SignatureProvider;->DEFAULT_SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-static {p0, v0}, Lio/jsonwebtoken/impl/crypto/MacProvider;->generateKey(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateKey(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->isHmac()Z

    move-result p1

    const-string v0, "SignatureAlgorithm argument must represent an HMAC algorithm."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->isTrue(ZLjava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->getJcaName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " algorithm is not available.  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "This should never happen on JDK 7 or later - please report this to the JJWT developers."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
