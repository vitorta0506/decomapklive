.class public Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/manager/SDKConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInfo"
.end annotation


# instance fields
.field public initializeCostTime:J

.field public ipType:I

.field public networkConnected:Z

.field public networkId:Ljava/lang/String;

.field public networkType:I

.field public wifiNetworkHandle:J

.field public xgNetworkHandle:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->wifiNetworkHandle:J

    .line 6
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->xgNetworkHandle:J

    .line 7
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->initializeCostTime:J

    .line 8
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    const/4 v1, 0x1

    .line 2
    iput v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->wifiNetworkHandle:J

    .line 5
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->xgNetworkHandle:J

    .line 6
    iput-wide v1, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->initializeCostTime:J

    .line 7
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    return-void
.end method
