.class public Lorg/conscrypt/c0;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "SourceFile"


# instance fields
.field private a:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/conscrypt/c0;->a:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 2
    new-instance v2, Lorg/conscrypt/d0;

    iget-object v3, p0, Lorg/conscrypt/c0;->a:Ljava/security/KeyStore;

    invoke-direct {v2, v3}, Lorg/conscrypt/d0;-><init>(Ljava/security/KeyStore;)V

    aput-object v2, v0, v1

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/conscrypt/c0;->a:Ljava/security/KeyStore;

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lorg/conscrypt/a0;->c()Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/c0;->a:Ljava/security/KeyStore;

    :goto_0
    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "ManagerFactoryParameters not supported"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
