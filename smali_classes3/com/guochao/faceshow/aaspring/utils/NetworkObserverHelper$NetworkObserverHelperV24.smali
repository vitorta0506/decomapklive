.class public Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;
.super Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkObserverHelperV24"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
