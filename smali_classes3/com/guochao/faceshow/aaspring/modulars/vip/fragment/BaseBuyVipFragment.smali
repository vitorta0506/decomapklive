.class public abstract Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$h;,
        Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field btnLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field c:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

.field d:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

.field e:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

.field f:I

.field firstItemLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field g:I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field h:Landroidx/recyclerview/widget/RecyclerView;

.field i:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$h;

.field j:Ljava/lang/Runnable;

.field k:I

.field public mAnimTop:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLevelUpToVVipView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPageIndicatorView:Lcom/rd/PageIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSVGAImageViewNext:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mScrollView:Lcom/guochao/faceshow/views/ObservableScrollView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewNextHint1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewNextHint2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewGroupMenus:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewNext:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewNextBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewNextDisableHint:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVipBg:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondItemLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field thirdItemLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->j:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->V1(I)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;IFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->T1(IFI)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->Y1()V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->Z1()V

    return-void
.end method

.method private T1(IFI)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->c(FZ)V

    :cond_0
    add-int/lit8 p3, p1, 0x1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    sub-float v2, v0, p2

    .line 4
    invoke-virtual {p3, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->c(FZ)V

    :cond_1
    sub-int/2addr p1, v1

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    if-eqz p1, :cond_2

    sub-float/2addr v0, p2

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;->c(FZ)V

    :cond_2
    return-void
.end method

.method private U1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNext:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v4, -0x1

    .line 4
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNext:Landroid/view/View;

    new-array v5, v1, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleX"

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 9
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 10
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method private V1(I)V
    .locals 6

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    rsub-int/lit8 p1, p1, 0x1

    .line 1
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->k:I

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    if-eqz v4, :cond_1

    .line 3
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    invoke-virtual {v1, v3, p1, v4}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->c(III)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->k:I

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    invoke-virtual {p1, v2, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->c(III)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->k:I

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    invoke-virtual {p1, v0, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->c(III)V

    .line 6
    :cond_1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result p1

    if-lez p1, :cond_2

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    if-eq v1, v3, :cond_3

    :cond_2
    if-le p1, v3, :cond_5

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    if-ne v1, v0, :cond_5

    .line 8
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "M/d/yyyy"

    invoke-direct {v0, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getThirdEndTime()J

    move-result-wide v4

    .line 10
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v3, :cond_4

    const p1, 0x7f1209fb

    goto :goto_0

    :cond_4
    const p1, 0x7f1209fc

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1206e3

    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-direct {p0, v2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->X1(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, v3, p1, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->X1(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private X1(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNext:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextDisableHint:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextDisableHint:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextBtn:Landroid/widget/TextView;

    const v0, 0x7f12080a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextBtn:Landroid/widget/TextView;

    const v0, 0x7f120a05

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mTextViewNextHint1:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mTextViewNextHint2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private Y1()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->Z1()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private Z1()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected W1(Z)V
    .locals 7

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->btnLay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_0

    .line 3
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    if-eq v3, v2, :cond_1

    :cond_0
    if-le p1, v2, :cond_3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 4
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "M/d/yyyy"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getThirdEndTime()J

    move-result-wide v4

    .line 6
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 7
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    if-ne p1, v2, :cond_2

    const v4, 0x7f1209fb

    goto :goto_0

    :cond_2
    const v4, 0x7f1209fc

    .line 8
    :goto_0
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1206e3

    new-array v6, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {p0, v5, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-direct {p0, v1, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->X1(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 11
    invoke-direct {p0, v2, v3, v3}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->X1(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-ne p1, v2, :cond_4

    .line 12
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    if-ne p1, v2, :cond_4

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mLevelUpToVVipView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mLevelUpToVVipView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->btnLay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mLevelUpToVVipView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public getLayoutId()I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0166

    return v0

    :cond_0
    const v0, 0x7f0d0168

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mLevelUpToVVipView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->g:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mSVGAImageViewNext:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    if-ne v1, v0, :cond_1

    const v1, 0x7f11003e

    const-string v3, "vip_blue"

    .line 8
    invoke-static {v1, v3, p1}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->decodeRaw(ILjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f11003f

    const-string v3, "vip_yellow"

    .line 9
    invoke-static {v1, v3, p1}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->decodeRaw(ILjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mSVGAImageViewNext:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->U1()V

    .line 12
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    const/high16 v1, 0x438c0000    # 280.0f

    const v3, 0x43978000    # 303.0f

    if-eq p1, v0, :cond_4

    .line 13
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->g:I

    if-ne p1, v0, :cond_3

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 15
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 17
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNext:Landroid/view/View;

    const v1, 0x7f08007e

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 19
    :cond_4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->g:I

    if-ne p1, v0, :cond_5

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 21
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 23
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNext:Landroid/view/View;

    const v1, 0x7f0801bd

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    :goto_3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->g:I

    invoke-direct {p1, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;-><init>(Landroid/content/Context;II)V

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 28
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$c;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->a:I

    const/4 v3, 0x0

    if-ne v1, v0, :cond_6

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    if-ne v4, v0, :cond_6

    .line 30
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->getItemCount()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v4, v2

    invoke-virtual {v1, v4, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_4

    :cond_6
    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    .line 31
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    if-ne v1, v2, :cond_7

    .line 32
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->getItemCount()I

    move-result v5

    div-int/2addr v5, v2

    add-int/2addr v5, v4

    invoke-virtual {v1, v5, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_4

    .line 33
    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->getItemCount()I

    move-result v4

    div-int/2addr v4, v2

    invoke-virtual {v1, v4, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 34
    :goto_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/rd/PageIndicatorView;->setCount(I)V

    .line 35
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewGroupMenus:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_a

    .line 37
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewGroupMenus:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 38
    iget v6, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    if-ne v6, v2, :cond_8

    const v6, 0x7f0801dc

    .line 39
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_8
    const v6, 0x7f0801db

    .line 40
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    if-ne v4, v0, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    .line 41
    :goto_7
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 42
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$d;

    invoke-direct {v6, p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 43
    :cond_a
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v4

    invoke-virtual {v4}, Lq7/a;->j()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/rd/draw/data/RtlMode;->On:Lcom/rd/draw/data/RtlMode;

    goto :goto_8

    :cond_b
    sget-object v4, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    :goto_8
    invoke-virtual {v1, v4}, Lcom/rd/PageIndicatorView;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    .line 45
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;)V

    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 46
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->V1(I)V

    .line 47
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->firstItemLay:Landroid/view/View;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    .line 48
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->secondItemLay:Landroid/view/View;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    .line 49
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->thirdItemLay:Landroid/view/View;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    .line 50
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->k:I

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    invoke-virtual {p1, v0, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->b(III)V

    .line 51
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->k:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    invoke-virtual {p1, v3, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->b(III)V

    .line 52
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->k:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    invoke-virtual {p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->b(III)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->W1(Z)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$h;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$h;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$h;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->f:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->g:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->b:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->a:I

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->Z1()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->Y1()V

    return-void
.end method
