.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->W1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->hangUpIcon:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_1
    :goto_0
    return-void
.end method
