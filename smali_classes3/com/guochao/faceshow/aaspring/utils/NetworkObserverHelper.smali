.class public Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;,
        Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;,
        Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;
    }
.end annotation


# static fields
.field private static sNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;


# instance fields
.field mContext:Landroid/content/Context;

.field mNetworkReceiver:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;

.field protected mOnNetworkChangeCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mRegisted:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mRegisted:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->checkCurrentNetwork(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static checkCurrentNetwork(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;
    .locals 3

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->sNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    if-nez v1, :cond_1

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->sNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->sNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    .line 6
    :goto_0
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->sNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->init()V

    .line 7
    :cond_1
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->sNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public destroy(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected init()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;-><init>(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$1;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mNetworkReceiver:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "noConnectivity"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mNetworkReceiver:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mRegisted:Z

    return-void
.end method

.method public register(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
