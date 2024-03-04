.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a014e

    const-string v2, "field \'blurImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->blurImage:Landroid/widget/ImageView;

    const v0, 0x7f0a012c

    const-string v1, "field \'bgBlurImage\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->bgBlurImage:Landroid/view/View;

    .line 5
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a0d86

    const-string v2, "field \'userAvatarView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc5

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userName:Landroid/widget/TextView;

    const v0, 0x7f0a0d88

    const-string v1, "field \'userCenterAgeLevel\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userCenterAgeLevel:Landroid/view/View;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a01aa

    const-string v2, "field \'callTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->callTime:Landroid/widget/TextView;

    const v0, 0x7f0a0bf6

    const-string v1, "field \'trtcSwitchCamera\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcSwitchCamera:Landroid/view/View;

    const v0, 0x7f0a0bf4

    const-string v1, "field \'trtcMic\' and method \'onViewClicked\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcMic:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    const-class v0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v1, 0x7f0a0a07

    const-string v2, "field \'scrollLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v0, 0x7f0a0bf3

    const-string v1, "method \'onViewClicked\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0bf7

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->f:Landroid/view/View;

    .line 20
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0bf5

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->g:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->blurImage:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->bgBlurImage:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userName:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userCenterAgeLevel:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->callTime:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcSwitchCamera:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcMic:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->e:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->f:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment_ViewBinding;->g:Landroid/view/View;

    .line 20
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment_ViewBinding;->unbind()V

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
