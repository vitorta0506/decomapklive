.class public final Lorg/conscrypt/OpenSSLProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final STANDARD_EC_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.ECPrivateKey"

.field private static final STANDARD_RSA_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPrivateKey"

.field private static final STANDARD_RSA_PUBLIC_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPublicKey"

.field private static final serialVersionUID:J = 0x29969a845b3fb130L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/conscrypt/OpenSSLProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/conscrypt/a0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lorg/conscrypt/a0;->r()Z

    move-result v0

    const-string v1, "TLSv1.3"

    invoke-direct {p0, p1, v0, v1}, Lorg/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Android\'s OpenSSL-backed security provider"

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 4
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->a()V

    .line 5
    invoke-static {}, Lorg/conscrypt/a0;->t()V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLContextImpl"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const-string v1, "TLSv1.2"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "$TLSv12"

    const-string v3, "$TLSv13"

    if-nez v1, :cond_1

    const-string v1, "TLSv1.3"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p3, v3

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Choice of default protocol is unsupported: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object p3, v2

    .line 9
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SSLContext.SSL"

    invoke-virtual {p0, v4, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SSLContext.TLS"

    invoke-virtual {p0, v4, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$TLSv1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SSLContext.TLSv1"

    invoke-virtual {p0, v4, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$TLSv11"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SSLContext.TLSv1.1"

    invoke-virtual {p0, v4, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSLContext.TLSv1.2"

    invoke-virtual {p0, v2, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SSLContext.TLSv1.3"

    invoke-virtual {p0, v1, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DefaultSSLContextImpl"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SSLContext.Default"

    invoke-virtual {p0, p3, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 16
    const-class p1, Lorg/conscrypt/c0;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrustManagerFactory.PKIX"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.TrustManagerFactory.X509"

    const-string p2, "PKIX"

    .line 17
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "IvParameters$AES"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.AES"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.2"

    const-string p2, "AES"

    .line 19
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.22"

    const-string p2, "AES"

    .line 20
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.42"

    const-string p2, "AES"

    .line 21
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "IvParameters$ChaCha20"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.ChaCha20"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "IvParameters$DESEDE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.DESEDE"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.TDEA"

    const-string p2, "DESEDE"

    .line 24
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.1.2.840.113549.3.7"

    const-string p2, "DESEDE"

    .line 25
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "GCMParameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.GCM"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.6"

    const-string p2, "GCM"

    .line 27
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.26"

    const-string p2, "GCM"

    .line 28
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.46"

    const-string p2, "GCM"

    .line 29
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OAEPParameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.OAEP"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PSSParameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.PSS"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ECParameters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlgorithmParameters.EC"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-1"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA1"

    const-string p2, "SHA-1"

    .line 34
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA"

    const-string p2, "SHA-1"

    .line 35
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string p2, "SHA-1"

    .line 36
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA224"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-224"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA224"

    const-string p2, "SHA-224"

    .line 38
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.4"

    const-string p2, "SHA-224"

    .line 39
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-256"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA256"

    const-string p2, "SHA-256"

    .line 41
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string p2, "SHA-256"

    .line 42
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA384"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-384"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA384"

    const-string p2, "SHA-384"

    .line 44
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string p2, "SHA-384"

    .line 45
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$SHA512"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.SHA-512"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.SHA512"

    const-string p2, "SHA-512"

    .line 47
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string p2, "SHA-512"

    .line 48
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MessageDigest.MD5"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string p2, "MD5"

    .line 50
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "KeyGeneratorImpl$ARC4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyGenerator.ARC4"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.RC4"

    const-string p2, "ARC4"

    .line 52
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    .line 53
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "KeyGeneratorImpl$AES"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyGenerator.AES"

    invoke-virtual {p0, p3, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "KeyGeneratorImpl$ChaCha20"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyGenerator.ChaCha20"

    invoke-virtual {p0, p3, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "KeyGeneratorImpl$DESEDE"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyGenerator.DESEDE"

    invoke-virtual {p0, p3, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.TDEA"

    const-string p3, "DESEDE"

    .line 57
    invoke-virtual {p0, p1, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "KeyGeneratorImpl$HmacMD5"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyGenerator.HmacMD5"

    invoke-virtual {p0, p3, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.1"

    const-string p3, "HmacMD5"

    .line 59
    invoke-virtual {p0, p1, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-MD5"

    .line 60
    invoke-virtual {p0, p1, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/MD5"

    .line 61
    invoke-virtual {p0, p1, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyGeneratorImpl$HmacSHA1"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyGenerator.HmacSHA1"

    invoke-virtual {p0, v1, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.7"

    const-string v1, "HmacSHA1"

    .line 63
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.2"

    .line 64
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA1"

    .line 65
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA1"

    .line 66
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KeyGeneratorImpl$HmacSHA224"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyGenerator.HmacSHA224"

    invoke-virtual {p0, v2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.8"

    const-string v2, "HmacSHA224"

    .line 68
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA224"

    .line 69
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA224"

    .line 70
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "KeyGeneratorImpl$HmacSHA256"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "KeyGenerator.HmacSHA256"

    invoke-virtual {p0, v3, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.9"

    const-string v3, "HmacSHA256"

    .line 72
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.2.16.840.1.101.3.4.2.1"

    .line 73
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA256"

    .line 74
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA256"

    .line 75
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KeyGeneratorImpl$HmacSHA384"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "KeyGenerator.HmacSHA384"

    invoke-virtual {p0, v4, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.10"

    const-string v4, "HmacSHA384"

    .line 77
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA384"

    .line 78
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA384"

    .line 79
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "KeyGeneratorImpl$HmacSHA512"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "KeyGenerator.HmacSHA512"

    invoke-virtual {p0, v5, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.1.2.840.113549.2.11"

    const-string v5, "HmacSHA512"

    .line 81
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC-SHA512"

    .line 82
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyGenerator.HMAC/SHA512"

    .line 83
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "OpenSSLRSAKeyPairGenerator"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "KeyPairGenerator.RSA"

    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    const-string v6, "RSA"

    .line 85
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.7"

    .line 86
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.2.5.8.1.1"

    .line 87
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "OpenSSLECKeyPairGenerator"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "KeyPairGenerator.EC"

    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.1.2.840.10045.2.1"

    const-string v7, "EC"

    .line 89
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyPairGenerator.1.3.133.16.840.63.0.2"

    const-string v7, "EC"

    .line 90
    invoke-virtual {p0, p1, v7}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "OpenSSLRSAKeyFactory"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "KeyFactory.RSA"

    invoke-virtual {p0, v7, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    .line 92
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.7"

    .line 93
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.2.5.8.1.1"

    .line 94
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "OpenSSLECKeyFactory"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "KeyFactory.EC"

    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.1.2.840.10045.2.1"

    const-string v6, "EC"

    .line 96
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.KeyFactory.1.3.133.16.840.63.0.2"

    const-string v6, "EC"

    .line 97
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "DESEDESecretKeyFactory"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "SecretKeyFactory.DESEDE"

    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.SecretKeyFactory.TDEA"

    const-string v6, "DESEDE"

    .line 99
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLECDHKeyAgreement"

    .line 100
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLProvider;->putECDHKeyAgreementImplClass(Ljava/lang/String;)V

    const-string p1, "MD5withRSA"

    const-string v6, "OpenSSLSignature$MD5RSA"

    .line 101
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.MD5withRSAEncryption"

    .line 102
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.MD5/RSA"

    .line 103
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    .line 104
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    .line 105
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    .line 106
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA1withRSA"

    const-string v6, "OpenSSLSignature$SHA1RSA"

    .line 107
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA1withRSAEncryption"

    .line 108
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.SHA1/RSA"

    .line 109
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.SHA-1/RSA"

    .line 110
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    .line 111
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    .line 112
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    .line 113
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    .line 114
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.3.14.3.2.29"

    .line 115
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    .line 116
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA224withRSA"

    const-string v6, "OpenSSLSignature$SHA224RSA"

    .line 117
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA224withRSAEncryption"

    .line 118
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.SHA224/RSA"

    .line 119
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.113549.1.1.14"

    .line 120
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.14"

    .line 121
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    .line 122
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.14"

    .line 123
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA256withRSA"

    const-string v6, "OpenSSLSignature$SHA256RSA"

    .line 124
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA256withRSAEncryption"

    .line 125
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.SHA256/RSA"

    .line 126
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    .line 127
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    .line 128
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    .line 129
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    .line 130
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA384withRSA"

    const-string v6, "OpenSSLSignature$SHA384RSA"

    .line 131
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA384withRSAEncryption"

    .line 132
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.SHA384/RSA"

    .line 133
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    .line 134
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    .line 135
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    .line 136
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA512withRSA"

    const-string v6, "OpenSSLSignature$SHA512RSA"

    .line 137
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA512withRSAEncryption"

    .line 138
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.SHA512/RSA"

    .line 139
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    .line 140
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    .line 141
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    .line 142
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLSignatureRawRSA"

    .line 143
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLProvider;->putRAWRSASignatureImplClass(Ljava/lang/String;)V

    const-string p1, "NONEwithECDSA"

    const-string v6, "OpenSSLSignatureRawECDSA"

    .line 144
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SHA1withECDSA"

    const-string v6, "OpenSSLSignature$SHA1ECDSA"

    .line 145
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.ECDSA"

    .line 146
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.ECDSAwithSHA1"

    .line 147
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.10045.4.1"

    .line 148
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    .line 149
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA224withECDSA"

    const-string v6, "OpenSSLSignature$SHA224ECDSA"

    .line 150
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA224/ECDSA"

    .line 151
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    .line 152
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.1"

    .line 153
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    .line 154
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA256withECDSA"

    const-string v6, "OpenSSLSignature$SHA256ECDSA"

    .line 155
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA256/ECDSA"

    .line 156
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    .line 157
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.2"

    .line 158
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    .line 159
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA384withECDSA"

    const-string v6, "OpenSSLSignature$SHA384ECDSA"

    .line 160
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA384/ECDSA"

    .line 161
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    .line 162
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.3"

    .line 163
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    .line 164
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA512withECDSA"

    const-string v6, "OpenSSLSignature$SHA512ECDSA"

    .line 165
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Signature.SHA512/ECDSA"

    .line 166
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    .line 167
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.4"

    .line 168
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    .line 169
    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA1withRSA/PSS"

    const-string v6, "OpenSSLSignature$SHA1RSAPSS"

    .line 170
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    const-string v6, "SHA1withRSA/PSS"

    .line 171
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA224withRSA/PSS"

    const-string v6, "OpenSSLSignature$SHA224RSAPSS"

    .line 172
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    const-string v6, "SHA224withRSA/PSS"

    .line 173
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA256withRSA/PSS"

    const-string v6, "OpenSSLSignature$SHA256RSAPSS"

    .line 174
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    const-string v6, "SHA256withRSA/PSS"

    .line 175
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA384withRSA/PSS"

    const-string v6, "OpenSSLSignature$SHA384RSAPSS"

    .line 176
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    const-string v6, "SHA384withRSA/PSS"

    .line 177
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SHA512withRSA/PSS"

    const-string v6, "OpenSSLSignature$SHA512RSAPSS"

    .line 178
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    const-string v6, "SHA512withRSA/PSS"

    .line 179
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "OpenSSLRandom"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "SecureRandom.SHA1PRNG"

    invoke-virtual {p0, v6, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v6, "Software"

    .line 181
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/NoPadding"

    const-string v6, "OpenSSLCipherRSA$Raw"

    .line 182
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string v6, "RSA/ECB/NoPadding"

    .line 183
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/PKCS1Padding"

    const-string v6, "OpenSSLCipherRSA$PKCS1"

    .line 184
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string v6, "RSA/ECB/PKCS1Padding"

    .line 185
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPPadding"

    const-string v6, "OpenSSLCipherRSA$OAEP$SHA1"

    .line 186
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    const-string v6, "RSA/ECB/OAEPPadding"

    .line 187
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string v6, "OpenSSLCipherRSA$OAEP$SHA1"

    .line 188
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    const-string v6, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    .line 189
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string v6, "OpenSSLCipherRSA$OAEP$SHA224"

    .line 190
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string v6, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    .line 191
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string v6, "OpenSSLCipherRSA$OAEP$SHA256"

    .line 192
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    const-string v6, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 193
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string v6, "OpenSSLCipherRSA$OAEP$SHA384"

    .line 194
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    const-string v6, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    .line 195
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string v6, "OpenSSLCipherRSA$OAEP$SHA512"

    .line 196
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    const-string v6, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    .line 197
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES/ECB/NoPadding"

    const-string v6, "OpenSSLEvpCipherAES$AES$ECB$NoPadding"

    .line 198
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES/ECB/PKCS5Padding"

    const-string v6, "OpenSSLEvpCipherAES$AES$ECB$PKCS5Padding"

    .line 199
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES/ECB/PKCS7Padding"

    const-string v6, "AES/ECB/PKCS5Padding"

    .line 200
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES/CBC/NoPadding"

    const-string v6, "OpenSSLEvpCipherAES$AES$CBC$NoPadding"

    .line 201
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5Padding"

    const-string v6, "OpenSSLEvpCipherAES$AES$CBC$PKCS5Padding"

    .line 202
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES/CBC/PKCS7Padding"

    const-string v6, "AES/CBC/PKCS5Padding"

    .line 203
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES/CTR/NoPadding"

    const-string v6, "OpenSSLEvpCipherAES$AES$CTR"

    .line 204
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_128/ECB/NoPadding"

    const-string v6, "OpenSSLEvpCipherAES$AES_128$ECB$NoPadding"

    .line 205
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_128/ECB/PKCS5Padding"

    const-string v6, "OpenSSLEvpCipherAES$AES_128$ECB$PKCS5Padding"

    .line 206
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES_128/ECB/PKCS7Padding"

    const-string v6, "AES_128/ECB/PKCS5Padding"

    .line 207
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES_128/CBC/NoPadding"

    const-string v6, "OpenSSLEvpCipherAES$AES_128$CBC$NoPadding"

    .line 208
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_128/CBC/PKCS5Padding"

    const-string v6, "OpenSSLEvpCipherAES$AES_128$CBC$PKCS5Padding"

    .line 209
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES_128/CBC/PKCS7Padding"

    const-string v6, "AES_128/CBC/PKCS5Padding"

    .line 210
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_128"

    const-string v6, "AES_128/CBC/PKCS5PADDING"

    .line 211
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_128"

    .line 212
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_128"

    .line 213
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_128"

    .line 214
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_128"

    .line 215
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES_256/ECB/NoPadding"

    const-string v6, "OpenSSLEvpCipherAES$AES_256$ECB$NoPadding"

    .line 216
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_256/ECB/PKCS5Padding"

    const-string v6, "OpenSSLEvpCipherAES$AES_256$ECB$PKCS5Padding"

    .line 217
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES_256/ECB/PKCS7Padding"

    const-string v6, "AES_256/ECB/PKCS5Padding"

    .line 218
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES_256/CBC/NoPadding"

    const-string v6, "OpenSSLEvpCipherAES$AES_256$CBC$NoPadding"

    .line 219
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_256/CBC/PKCS5Padding"

    const-string v6, "OpenSSLEvpCipherAES$AES_256$CBC$PKCS5Padding"

    .line 220
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.AES_256/CBC/PKCS7Padding"

    const-string v6, "AES_256/CBC/PKCS5Padding"

    .line 221
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_256"

    const-string v6, "AES_256/CBC/PKCS5PADDING"

    .line 222
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_256"

    .line 223
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_256"

    .line 224
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_256"

    .line 225
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_256"

    .line 226
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "DESEDE/CBC/NoPadding"

    const-string v6, "OpenSSLEvpCipherDESEDE$CBC$NoPadding"

    .line 227
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DESEDE/CBC/PKCS5Padding"

    const-string v6, "OpenSSLEvpCipherDESEDE$CBC$PKCS5Padding"

    .line 228
    invoke-direct {p0, p1, v6}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.DESEDE/CBC/PKCS7Padding"

    const-string v6, "DESEDE/CBC/PKCS5Padding"

    .line 229
    invoke-virtual {p0, p1, v6}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLEvpCipherARC4"

    .line 230
    invoke-direct {p0, p2, p1}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.ARCFOUR"

    .line 231
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.RC4"

    .line 232
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.1.2.840.113549.3.4"

    .line 233
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Cipher.OID.1.2.840.113549.3.4"

    .line 234
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES/GCM/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM"

    .line 235
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Alg.Alias.Cipher.GCM"

    .line 236
    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.6"

    .line 237
    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.26"

    .line 238
    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.46"

    .line 239
    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AES_128/GCM/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM$AES_128"

    .line 240
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_256/GCM/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM$AES_256"

    .line 241
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES/GCM-SIV/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM_SIV"

    .line 242
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_128/GCM-SIV/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM_SIV$AES_128"

    .line 243
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AES_256/GCM-SIV/NoPadding"

    const-string p2, "OpenSSLAeadCipherAES$GCM_SIV$AES_256"

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ChaCha20"

    const-string p2, "OpenSSLCipherChaCha20"

    .line 245
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ChaCha20/Poly1305/NoPadding"

    const-string p2, "OpenSSLAeadCipherChaCha20"

    .line 246
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Cipher.ChaCha20-Poly1305"

    const-string p2, "ChaCha20/Poly1305/NoPadding"

    .line 247
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacMD5"

    .line 248
    invoke-direct {p0, p3, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.1"

    .line 249
    invoke-virtual {p0, p1, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-MD5"

    .line 250
    invoke-virtual {p0, p1, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/MD5"

    .line 251
    invoke-virtual {p0, p1, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA1"

    .line 252
    invoke-direct {p0, v1, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.7"

    .line 253
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.2"

    .line 254
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA1"

    .line 255
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA1"

    .line 256
    invoke-virtual {p0, p1, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA224"

    .line 257
    invoke-direct {p0, v2, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.8"

    .line 258
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA224"

    .line 259
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA224"

    .line 260
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.PBEWITHHMACSHA224"

    .line 261
    invoke-virtual {p0, p1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA256"

    .line 262
    invoke-direct {p0, v3, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.9"

    .line 263
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.2.16.840.1.101.3.4.2.1"

    .line 264
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA256"

    .line 265
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA256"

    .line 266
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.PBEWITHHMACSHA256"

    .line 267
    invoke-virtual {p0, p1, v3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA384"

    .line 268
    invoke-direct {p0, v4, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.10"

    .line 269
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA384"

    .line 270
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA384"

    .line 271
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.PBEWITHHMACSHA384"

    .line 272
    invoke-virtual {p0, p1, v4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OpenSSLMac$HmacSHA512"

    .line 273
    invoke-direct {p0, v5, p1}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Alg.Alias.Mac.1.2.840.113549.2.11"

    .line 274
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC-SHA512"

    .line 275
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.HMAC/SHA512"

    .line 276
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.Mac.PBEWITHHMACSHA512"

    .line 277
    invoke-virtual {p0, p1, v5}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "OpenSSLX509CertificateFactory"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CertificateFactory.X509"

    invoke-virtual {p0, p2, p1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Alg.Alias.CertificateFactory.X.509"

    const-string p2, "X509"

    .line 279
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putECDHKeyAgreementImplClass(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLKeyHolder|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyAgreement.ECDH"

    const-string v2, "PKCS#8"

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " SupportedKeyClasses"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SupportedKeyFormats"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLKeyHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mac."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RAW"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putRAWRSASignatureImplClass(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPrivateKey|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPublicKey|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Signature.NONEwithRSA"

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPrivateKey|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLRSAPublicKey|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OpenSSLKeyHolder|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PKCS#8|X.509"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "RAW"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
