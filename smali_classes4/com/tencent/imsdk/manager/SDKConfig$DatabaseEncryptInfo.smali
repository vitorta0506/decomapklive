.class public Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/manager/SDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseEncryptInfo"
.end annotation


# instance fields
.field public encryptKey:Ljava/lang/String;

.field public encryptType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;->encryptType:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;->encryptKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;->encryptType:I

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;->encryptKey:Ljava/lang/String;

    return-void
.end method
