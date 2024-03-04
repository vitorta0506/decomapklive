.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v2

    const-string v3, "userData"

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v3

    const-string v4, "callModel"

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-lez v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->A0(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method
