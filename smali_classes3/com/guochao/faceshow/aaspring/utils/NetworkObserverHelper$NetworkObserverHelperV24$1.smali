.class Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->access$100(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->access$100(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkObserverHelperV24;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->access$100(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
