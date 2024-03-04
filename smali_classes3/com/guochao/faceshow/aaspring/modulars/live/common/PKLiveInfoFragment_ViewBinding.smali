.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    const v1, 0x7f0a054c

    const-string v2, "field \'mRatioFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRatioFrameLayout:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    const v0, 0x7f0a073f

    const-string v1, "field \'marqueeView\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->marqueeView:Landroid/view/View;

    .line 5
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a093b

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0891

    const-string v1, "field \'mTextViewCountDown\' and method \'showTime\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextViewCountDown\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->e:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0641

    const-string v2, "field \'mLeftCoinTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLeftCoinTextView:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a099c

    const-string v2, "field \'mRightCoinTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRightCoinTextView:Landroid/widget/TextView;

    .line 12
    const-class v0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    const v1, 0x7f0a0897

    const-string v2, "field \'mPKProgressView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mPKProgressView:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    .line 13
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a0998

    const-string v2, "field \'mAnimStartRightView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    const v0, 0x7f0a0999

    const-string v1, "field \'mAnimEndRightView\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndRightView:Landroid/view/View;

    .line 15
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a063c

    const-string v2, "field \'mAnimStartLeftView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 16
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a0e2f

    const-string v2, "field \'mSVGAImageViewVS\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mSVGAImageViewVS:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0890

    const-string v2, "field \'pkBroadcastName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->pkBroadcastName:Landroid/widget/TextView;

    const v0, 0x7f0a0589

    const-string v1, "field \'ivAdd\' and method \'onViewClicked\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivAdd\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a007f

    const-string v1, "field \'addSVGA\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->addSVGA:Landroid/view/View;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08dd

    const-string v2, "field \'mTextViewPunishTimeTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    const v0, 0x7f0a063d

    const-string v1, "field \'mAnimEndLeftView\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndLeftView:Landroid/view/View;

    .line 25
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0278

    const-string v2, "field \'mImageViewCountryFlag\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mImageViewCountryFlag:Landroid/widget/ImageView;

    .line 26
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06c7

    const-string v2, "field \'mLlImageViewCountryFlag\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLlImageViewCountryFlag:Landroid/widget/LinearLayout;

    const v0, 0x7f0a063e

    const-string v1, "field \'mLeftArea\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLeftArea:Landroid/view/View;

    const v0, 0x7f0a099a

    const-string v1, "field \'mRightArea\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRightArea:Landroid/view/View;

    const v0, 0x7f0a0642

    const-string v1, "method \'richList\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->g:Landroid/view/View;

    .line 31
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a099e

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->h:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRatioFrameLayout:Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->marqueeView:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLeftCoinTextView:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRightCoinTextView:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mPKProgressView:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndRightView:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartLeftView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mSVGAImageViewVS:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->pkBroadcastName:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->ivAdd:Landroid/widget/ImageView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->addSVGA:Landroid/view/View;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewPunishTimeTip:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimEndLeftView:Landroid/view/View;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mImageViewCountryFlag:Landroid/widget/ImageView;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLlImageViewCountryFlag:Landroid/widget/LinearLayout;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mLeftArea:Landroid/view/View;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mRightArea:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->e:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->f:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->g:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment_ViewBinding;->h:Landroid/view/View;

    .line 31
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;->unbind()V

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
