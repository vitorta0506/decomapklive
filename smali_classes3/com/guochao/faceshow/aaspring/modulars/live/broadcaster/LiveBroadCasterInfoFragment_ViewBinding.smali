.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a06a8

    const-string v2, "field \'mTextViewLiveCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveCount:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0686

    const-string v2, "field \'mTextViewLiveDuration\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveDuration:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a06b2

    const-string v2, "field \'mTextViewLiveTotalPeople\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveTotalPeople:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03c5

    const-string v2, "field \'mTextViewFansAdded\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewFansAdded:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03c9

    const-string v2, "field \'mTextViewFCoinAdded\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewFCoinAdded:Landroid/widget/TextView;

    const v0, 0x7f0a0dc5

    const-string v1, "field \'mTextViewUserName\' and method \'toUserHome\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextViewUserName\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewUserName:Landroid/widget/TextView;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->e:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0bb2

    const-string v2, "field \'mTextViewTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewTitle:Landroid/widget/TextView;

    const v0, 0x7f0a00fd

    const-string v1, "field \'mAvatarView\' and method \'toUserHome\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const-string v3, "field \'mAvatarView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->f:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0104

    const-string v2, "field \'mImageViewBackground\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mImageViewBackground:Landroid/widget/ImageView;

    const v0, 0x7f0a0101

    const-string v1, "field \'mBackButton\' and method \'backToHome\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mBackButton:Landroid/view/View;

    .line 20
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->g:Landroid/view/View;

    .line 21
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020d

    const-string v1, "field \'mCloseView\' and method \'close\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 23
    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mCloseView:Landroid/view/View;

    .line 24
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->h:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveCount:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveDuration:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveTotalPeople:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewFansAdded:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewFCoinAdded:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewUserName:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewTitle:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mImageViewBackground:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mBackButton:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mCloseView:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->e:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->f:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->g:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment_ViewBinding;->h:Landroid/view/View;

    .line 22
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;->unbind()V

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
