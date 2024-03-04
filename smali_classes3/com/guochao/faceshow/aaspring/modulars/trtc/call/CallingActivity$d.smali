.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->P(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
