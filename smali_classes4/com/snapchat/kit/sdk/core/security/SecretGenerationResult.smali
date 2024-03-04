.class public Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIsNewSecret:Z

.field private final mSecretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Z)V
    .locals 0
    .param p1    # Ljavax/crypto/SecretKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 3
    iput-boolean p2, p0, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;->mIsNewSecret:Z

    return-void
.end method


# virtual methods
.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;->mSecretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public isNewSecret()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;->mIsNewSecret:Z

    return v0
.end method
