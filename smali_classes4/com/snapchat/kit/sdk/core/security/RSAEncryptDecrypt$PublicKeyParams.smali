.class public Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublicKeyParams"
.end annotation


# instance fields
.field mModulus:Ljava/lang/String;

.field mPublicExp:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mModulus:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mPublicExp:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;

    .line 3
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mModulus:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mModulus:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mPublicExp:Ljava/lang/String;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mPublicExp:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
