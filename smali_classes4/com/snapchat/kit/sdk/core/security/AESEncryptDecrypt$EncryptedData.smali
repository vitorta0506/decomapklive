.class Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncryptedData"
.end annotation


# instance fields
.field mData:Ljava/lang/String;

.field mIv:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;->mIv:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;->mData:Ljava/lang/String;

    return-void
.end method
