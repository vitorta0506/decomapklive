.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a047c

    const-string v2, "field \'mShakeIconView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mShakeIconView:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0bac

    const-string v2, "field \'mTipsTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03c2

    const-string v2, "field \'mFailTipsTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mFailTipsTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0845

    const-string v1, "field \'mOpenGiftView\' and method \'openGiftBox\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mOpenGiftView:Landroid/view/View;

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->e:Landroid/view/View;

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a097e

    const-string v1, "field \'mResultView\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mResultView:Landroid/view/View;

    const v0, 0x7f0a026f

    const-string v1, "field \'mCountDownContainerView\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mCountDownContainerView:Landroid/view/View;

    const v0, 0x7f0a0aee

    const-string v1, "field \'mSuccessCountView\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mSuccessCountView:Landroid/view/View;

    .line 13
    const-class v0, Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    const v1, 0x7f0a095e

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a026e

    const-string v2, "field \'mTextViewCountDown\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTextViewCountDown:Landroid/widget/TextView;

    const v0, 0x7f0a048b

    const-string v1, "field \'mGrabResultView\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mGrabResultView:Landroid/view/View;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a02c1

    const-string v2, "field \'mTextViewDiamondCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTextViewDiamondCount:Landroid/widget/TextView;

    const v0, 0x7f0a0a81

    const-string v1, "field \'mViewShowUserList\' and method \'showGiftUserList\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 18
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mViewShowUserList:Landroid/view/View;

    .line 19
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->f:Landroid/view/View;

    .line 20
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0101

    const-string v1, "field \'mBackButton\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mBackButton:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->g:Landroid/view/View;

    .line 24
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0594

    const-string v2, "field \'ivBoxOpen\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    .line 26
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0211

    const-string v2, "field \'mCloseDialog\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mCloseDialog:Landroid/widget/ImageView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0331

    const-string v2, "field \'emptyUsers\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->emptyUsers:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mShakeIconView:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTipsTextView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mFailTipsTextView:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mOpenGiftView:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mResultView:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mCountDownContainerView:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mSuccessCountView:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/InnerRecyclerView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTextViewCountDown:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mGrabResultView:Landroid/view/View;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mTextViewDiamondCount:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mViewShowUserList:Landroid/view/View;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mBackButton:Landroid/view/View;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->ivBoxOpen:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->mCloseDialog:Landroid/widget/ImageView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment;->emptyUsers:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->e:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->f:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/BigGiftBoxFragment_ViewBinding;->g:Landroid/view/View;

    .line 25
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;->unbind()V

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
