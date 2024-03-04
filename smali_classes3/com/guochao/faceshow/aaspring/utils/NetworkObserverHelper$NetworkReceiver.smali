.class Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;->this$0:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;-><init>(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$NetworkReceiver;->this$0:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->mOnNetworkChangeCallBacks:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->access$100(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
