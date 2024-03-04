.class public final Lorg/conscrypt/NativeCrypto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/UnsatisfiedLinkError;

.field static final b:[Ljava/lang/String;

.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Z

.field private static final g:[Ljava/lang/String;

.field static final h:[Ljava/lang/String;

.field static final i:[Ljava/lang/String;

.field static final j:[Ljava/lang/String;

.field static final k:[Ljava/lang/String;

.field static final l:[Ljava/lang/String;

.field static final m:[Ljava/lang/String;

.field static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    :try_start_0
    invoke-static {}, Lorg/conscrypt/o;->c()V

    .line 2
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->clinit()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    :goto_0
    sput-object v0, Lorg/conscrypt/NativeCrypto;->a:Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    const-string v2, "TLS_AES_256_GCM_SHA384"

    const-string v3, "TLS_CHACHA20_POLY1305_SHA256"

    .line 4
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/conscrypt/NativeCrypto;->b:[Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lorg/conscrypt/NativeCrypto;->c:Ljava/util/Set;

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lorg/conscrypt/NativeCrypto;->d:Ljava/util/Set;

    .line 7
    new-instance v2, Ljava/util/HashSet;

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lorg/conscrypt/NativeCrypto;->e:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "ALL:!DHE"

    .line 9
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 10
    array-length v2, v0

    .line 11
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 12
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lorg/conscrypt/NativeCrypto;->g:[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 13
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/conscrypt/NativeCrypto;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    sget-object v6, Lorg/conscrypt/NativeCrypto;->g:[Ljava/lang/String;

    div-int/lit8 v7, v4, 0x2

    aput-object v5, v6, v7

    .line 15
    sget-object v6, Lorg/conscrypt/NativeCrypto;->c:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v5, Lorg/conscrypt/NativeCrypto;->d:Ljava/util/Set;

    add-int/lit8 v6, v4, 0x1

    aget-object v6, v0, v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 17
    :cond_0
    sget-object v0, Lorg/conscrypt/NativeCrypto;->g:[Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v0, v3

    const/4 v2, 0x1

    add-int/2addr v3, v2

    const-string v4, "TLS_FALLBACK_SCSV"

    .line 18
    aput-object v4, v0, v3

    .line 19
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_has_aes_hardware()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lorg/conscrypt/NativeCrypto;->f:Z

    goto :goto_2

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid cipher list returned by get_cipher_names"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    sput-boolean v1, Lorg/conscrypt/NativeCrypto;->f:Z

    new-array v0, v1, [Ljava/lang/String;

    .line 22
    sput-object v0, Lorg/conscrypt/NativeCrypto;->g:[Ljava/lang/String;

    .line 23
    :goto_2
    sget-boolean v0, Lorg/conscrypt/NativeCrypto;->f:Z

    if-eqz v0, :cond_4

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v3, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const-string v4, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v5, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v6, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const-string v7, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v8, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v9, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v11, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v12, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const-string v13, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v14, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 24
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v4, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const-string v5, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v6, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v7, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v8, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v9, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v11, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v12, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const-string v13, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v14, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 25
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    :goto_3
    sput-object v0, Lorg/conscrypt/NativeCrypto;->h:[Ljava/lang/String;

    const-string v0, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const-string v2, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const-string v3, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const-string v4, "TLS_PSK_WITH_AES_256_CBC_SHA"

    .line 26
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/NativeCrypto;->i:[Ljava/lang/String;

    const-string v0, "TLSv1"

    const-string v1, "TLSv1.1"

    const-string v2, "TLSv1.2"

    const-string v3, "TLSv1.3"

    .line 27
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/conscrypt/NativeCrypto;->j:[Ljava/lang/String;

    .line 28
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/conscrypt/NativeCrypto;->k:[Ljava/lang/String;

    .line 29
    sput-object v5, Lorg/conscrypt/NativeCrypto;->l:[Ljava/lang/String;

    .line 30
    sput-object v5, Lorg/conscrypt/NativeCrypto;->m:[Ljava/lang/String;

    .line 31
    sput-object v4, Lorg/conscrypt/NativeCrypto;->n:[Ljava/lang/String;

    .line 32
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/NativeCrypto;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/y;
        }
    .end annotation
.end method

.method static native BIO_free_all(J)V
.end method

.method static native EC_GROUP_clear_free(J)V
.end method

.method static native EC_GROUP_get_cofactor(Lorg/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method static native EC_GROUP_get_curve(Lorg/conscrypt/NativeRef$EC_GROUP;)[[B
.end method

.method static native EC_GROUP_get_curve_name(Lorg/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;
.end method

.method static native EC_GROUP_get_generator(Lorg/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method static native EC_GROUP_get_order(Lorg/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method static native EC_KEY_get1_group(Lorg/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native EC_KEY_get_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native EC_POINT_clear_free(J)V
.end method

.method static native EC_POINT_get_affine_coordinates(Lorg/conscrypt/NativeRef$EC_GROUP;Lorg/conscrypt/NativeRef$EC_POINT;)[[B
.end method

.method static native EVP_PKEY_cmp(Lorg/conscrypt/NativeRef$EVP_PKEY;Lorg/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native EVP_PKEY_free(J)V
.end method

.method static native EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J
.end method

.method static native EVP_PKEY_print_public(Lorg/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method static native EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native EVP_has_aes_hardware()I
.end method

.method static native EVP_marshal_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method static native EVP_parse_public_key([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/y;
        }
    .end annotation
.end method

.method static native PEM_read_bio_PKCS7(JI)[J
.end method

.method static native PEM_read_bio_X509(J)J
.end method

.method static native RAND_bytes([B)V
.end method

.method static native X509_cmp(JLorg/conscrypt/OpenSSLX509Certificate;JLorg/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native X509_delete_ext(JLorg/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)V
.end method

.method static native X509_dup(JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_free(JLorg/conscrypt/OpenSSLX509Certificate;)V
.end method

.method static native X509_get_ext_oid(JLorg/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B
.end method

.method static native X509_get_issuer_name(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native X509_get_notAfter(JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_get_notBefore(JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_get_pubkey(JLorg/conscrypt/OpenSSLX509Certificate;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native X509_get_serialNumber(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native X509_get_subject_name(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native X509_get_version(JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_print_ex(JJLorg/conscrypt/OpenSSLX509Certificate;JJ)V
.end method

.method static native X509_verify(JLorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static a()V
    .locals 1

    .line 1
    sget-object v0, Lorg/conscrypt/NativeCrypto;->a:Ljava/lang/UnsatisfiedLinkError;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    :cond_0
    return-object p0
.end method

.method private static native clinit()V
.end method

.method static native create_BIO_InputStream(Lorg/conscrypt/OpenSSLBIOInputStream;Z)J
.end method

.method static native create_BIO_OutputStream(Ljava/io/OutputStream;)J
.end method

.method static native d2i_PKCS7_bio(JI)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/y;
        }
    .end annotation
.end method

.method static native d2i_X509([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/y;
        }
    .end annotation
.end method

.method static native d2i_X509_bio(J)J
.end method

.method static native get_RSA_public_params(Lorg/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method static native get_X509_GENERAL_NAME_stack(JLorg/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation
.end method

.method static native get_X509_cert_info_enc(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native get_X509_ex_flags(JLorg/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native get_X509_ex_kusage(JLorg/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native get_X509_ex_pathlen(JLorg/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native get_X509_ex_xkusage(JLorg/conscrypt/OpenSSLX509Certificate;)[Ljava/lang/String;
.end method

.method static native get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;
.end method

.method static native get_X509_issuerUID(JLorg/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native get_X509_pubkey_oid(JLorg/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;
.end method

.method static native get_X509_sig_alg_oid(JLorg/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;
.end method

.method static native get_X509_sig_alg_parameter(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native get_X509_signature(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native get_X509_subjectUID(JLorg/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static native get_ocsp_single_extension([BLjava/lang/String;JLorg/conscrypt/OpenSSLX509Certificate;JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native i2d_X509(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native i2d_X509_PUBKEY(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method
