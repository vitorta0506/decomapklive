.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03c5

    const-string v2, "field \'mTextViewFansAdded\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewFansAdded:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03c9

    const-string v2, "field \'mTextViewFCoinAdded\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewFCoinAdded:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a06b2

    const-string v2, "field \'mTextViewLiveTotalPeople\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewLiveTotalPeople:Landroid/widget/TextView;

    const v0, 0x7f0a0dc5

    const-string v1, "field \'mTextViewUserName\' and method \'toUserHome\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextViewUserName\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewUserName:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->e:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00fd

    const-string v1, "field \'mAvatarView\' and method \'toUserHome\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const-string v3, "field \'mAvatarView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->f:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a042f

    const-string v1, "field \'mFoucesView\' and method \'focus\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mFoucesView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mFoucesView:Landroid/widget/TextView;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->g:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a033c

    const-string v2, "field \'endTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->endTitle:Landroid/widget/TextView;

    const v0, 0x7f0a094a

    const-string v1, "field \'mRecommendView\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mRecommendView:Landroid/view/View;

    const v0, 0x7f0a020d

    const-string v1, "method \'close\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->h:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewFansAdded:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewFCoinAdded:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewLiveTotalPeople:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mTextViewUserName:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mFoucesView:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->endTitle:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mRecommendView:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->e:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->f:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->g:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment_ViewBinding;->h:Landroid/view/View;

    .line 19
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;->unbind()V

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
