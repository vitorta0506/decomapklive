.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private g:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->g:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a026e

    const-string v2, "field \'mCountDownTips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mCountDownTips:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0611

    const-string v2, "field \'mLaunchLiveView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLaunchLiveView:Landroid/view/ViewGroup;

    .line 5
    const-class v0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;

    const v1, 0x7f0a0739

    const-string v2, "field \'mLiveBroadCastScrollDownView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveBroadCastScrollDownView:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;

    const v0, 0x7f0a069b

    const-string v1, "field \'mLiveInfoViewContainer\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    const v0, 0x7f0a0be2

    const-string v1, "field \'touchView\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->touchView:Landroid/view/View;

    const v0, 0x7f0a018b

    const-string v1, "field \'btnInvite\' and method \'onClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->btnInvite:Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->h:Landroid/view/View;

    .line 11
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0669

    const-string v2, "field \'mTextViewLinkMicTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mTextViewLinkMicTip:Landroid/widget/TextView;

    const v0, 0x7f0a020f

    const-string v1, "field \'closeLL\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->closeLL:Landroid/view/View;

    const v0, 0x7f0a0a6c

    const-string v1, "field \'mLiveShareBtn\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveShareBtn:Landroid/view/View;

    .line 16
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->i:Landroid/view/View;

    .line 17
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02dc

    const-string v1, "field \'dividerView\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->dividerView:Landroid/view/View;

    const v0, 0x7f0a0612

    const-string v1, "method \'onClick\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->j:Landroid/view/View;

    .line 21
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0212

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->k:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->g:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->g:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mCountDownTips:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLaunchLiveView:Landroid/view/ViewGroup;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveBroadCastScrollDownView:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->touchView:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->btnInvite:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mTextViewLinkMicTip:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->closeLL:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveShareBtn:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->dividerView:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->h:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->i:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->j:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment_ViewBinding;->k:Landroid/view/View;

    .line 21
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment_ViewBinding;->unbind()V

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
