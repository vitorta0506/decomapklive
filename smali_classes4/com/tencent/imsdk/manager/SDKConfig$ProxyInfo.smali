.class public Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/manager/SDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyInfo"
.end annotation


# instance fields
.field public proxyHost:Ljava/lang/String;

.field public proxyPassword:Ljava/lang/String;

.field public proxyPort:I

.field public proxyType:I

.field public proxyUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyType:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyHost:Ljava/lang/String;

    .line 4
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyPort:I

    .line 5
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyUsername:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyType:I

    const-string v1, ""

    .line 2
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyHost:Ljava/lang/String;

    .line 3
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyPort:I

    .line 4
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyUsername:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyPassword:Ljava/lang/String;

    return-void
.end method
