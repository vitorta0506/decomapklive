.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->connectionStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const v1, 0x7f12090f

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->connectionStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->connectionStatus:Landroid/widget/TextView;

    const v2, 0x7f120912

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment;->connectionStatus:Landroid/widget/TextView;

    const-string v2, "."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioToBeReceivedFragment$a;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
