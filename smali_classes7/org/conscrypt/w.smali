.class final Lorg/conscrypt/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/conscrypt/NativeRef$EVP_PKEY;

.field private final b:Z

.field private final c:Z


# direct methods
.method constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/conscrypt/w;-><init>(JZ)V

    return-void
.end method

.method constructor <init>(JZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/conscrypt/w;-><init>(JZZ)V

    return-void
.end method

.method constructor <init>(JZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-direct {v0, p1, p2}, Lorg/conscrypt/NativeRef$EVP_PKEY;-><init>(J)V

    iput-object v0, p0, Lorg/conscrypt/w;->a:Lorg/conscrypt/NativeRef$EVP_PKEY;

    .line 5
    iput-boolean p3, p0, Lorg/conscrypt/w;->b:Z

    .line 6
    iput-boolean p4, p0, Lorg/conscrypt/w;->c:Z

    return-void
.end method


# virtual methods
.method a()Lorg/conscrypt/NativeRef$EVP_PKEY;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/w;->a:Lorg/conscrypt/NativeRef$EVP_PKEY;

    return-object v0
.end method

.method b()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/w;->a:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x198

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/conscrypt/v;

    invoke-direct {v0, p0}, Lorg/conscrypt/v;-><init>(Lorg/conscrypt/w;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLRSAPublicKey;-><init>(Lorg/conscrypt/w;)V

    return-object v0
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/conscrypt/w;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/conscrypt/w;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/conscrypt/w;

    .line 3
    iget-object v1, p0, Lorg/conscrypt/w;->a:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {p1}, Lorg/conscrypt/w;->a()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/conscrypt/NativeRef;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v1, p0, Lorg/conscrypt/w;->a:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {p1}, Lorg/conscrypt/w;->a()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_cmp(Lorg/conscrypt/NativeRef$EVP_PKEY;Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/w;->a:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lorg/conscrypt/NativeRef;->hashCode()I

    move-result v0

    return v0
.end method
