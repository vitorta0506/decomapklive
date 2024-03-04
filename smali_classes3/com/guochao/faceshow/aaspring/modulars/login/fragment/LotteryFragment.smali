.class public Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/os/Handler;

.field b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;

.field c:Z

.field d:Z

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/animation/ValueAnimator;

.field g:I

.field h:Ljava/lang/Runnable;

.field mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewDiamondCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewIKnow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewFreeDiamonds:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewGrid:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewGroupGrid:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewNewAvatar:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewResult:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->d:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->e:Ljava/util/List;

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->g:I

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)V

    return-void
.end method

.method private R1(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->d:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getNewFCerHeadImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewNewAvatar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getRewardDiamond()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewFreeDiamonds:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewDiamondCount:Landroid/widget/TextView;

    const v3, 0x7f12052e

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewFreeDiamonds:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_1
    :try_start_0
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_2
    invoke-virtual {v0, p1}, Lp9/a;->B(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/bean/UserBean;->setIsOpenTurnTable(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGrid:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$f;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewResult:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewResult:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewResult:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewResult:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->h:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    const-string v3, "lottery"

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method Q1(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dismiss(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01b3

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewIKnow:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120531

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewIKnow:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGrid:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->a:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGroupGrid:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 8
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x3e8

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGroupGrid:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    .line 13
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 14
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->e:Ljava/util/List;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 16
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 18
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->f:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f8f5c29    # 1.12f
        0x3f800000    # 1.0f
        0x3f8f5c29    # 1.12f
    .end array-data
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v1, 0x11

    .line 6
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0255

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x500

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->c:Z

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->f:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->Q1(F)V

    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0f00e2

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object p1

    const v0, 0x7f110027

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playRaw(I)I

    const-string p1, "tokens/user/info/slyDerAdventures"

    .line 10
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->a:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
