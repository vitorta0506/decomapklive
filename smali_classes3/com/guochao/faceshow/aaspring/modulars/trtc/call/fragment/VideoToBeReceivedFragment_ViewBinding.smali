.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    const v0, 0x7f0a0dc5

    const-string v1, "field \'userName\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'userName\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userName:Landroid/widget/TextView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04bd

    const-string v1, "field \'hangUpIcon\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 8
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->hangUpIcon:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0d88

    const-string v1, "field \'userCenterAgeLevel\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userCenterAgeLevel:Landroid/view/View;

    .line 12
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a0d86

    const-string v2, "field \'userAvatarView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v0, 0x7f0a0da3

    const-string v1, "field \'userInfo\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userInfo:Landroid/view/View;

    const v0, 0x7f0a011d

    const-string v1, "method \'onViewClicked\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userName:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->hangUpIcon:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userCenterAgeLevel:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment;->userInfo:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->c:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoToBeReceivedFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
