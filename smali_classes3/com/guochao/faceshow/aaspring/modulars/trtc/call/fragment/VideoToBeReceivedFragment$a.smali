.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->hangUpIcon:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    :goto_0
    return-void
.end method
