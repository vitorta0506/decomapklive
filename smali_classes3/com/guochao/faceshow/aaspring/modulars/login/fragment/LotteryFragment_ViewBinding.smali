.class public Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    const v0, 0x7f0a049d

    const-string v1, "field \'mViewGrid\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGrid:Landroid/view/View;

    .line 4
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a049f

    const-string v2, "field \'mViewGroupGrid\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGroupGrid:Landroid/view/ViewGroup;

    const v0, 0x7f0a097d

    const-string v1, "field \'mViewResult\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewResult:Landroid/view/View;

    const v0, 0x7f0a04ec

    const-string v1, "field \'mTextViewIKnow\' and method \'dismiss\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextViewIKnow\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewIKnow:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a0af5

    const-string v2, "field \'mSVGAImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const v0, 0x7f0a07fe

    const-string v1, "field \'mViewNewAvatar\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewNewAvatar:Landroid/view/View;

    const v0, 0x7f0a0447

    const-string v1, "field \'mViewFreeDiamonds\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewFreeDiamonds:Landroid/view/View;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a02c1

    const-string v2, "field \'mTextViewDiamondCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewDiamondCount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGrid:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGroupGrid:Landroid/view/ViewGroup;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewResult:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewIKnow:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewNewAvatar:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewFreeDiamonds:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewDiamondCount:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
