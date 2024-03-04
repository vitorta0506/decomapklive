.class public Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

.field b:I

.field private c:I

.field mRedPoint:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mView1:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mView2:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewIndicator:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field svipTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vipTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b:I

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b:I

    .line 6
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b:I

    .line 9
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->c:I

    return p1
.end method

.method private d(Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/R$styleable;->VipSwitcherView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d0357

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mRedPoint:Landroid/view/View;

    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_RED_DOT_BUY_VVIP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f080482

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    const v0, 0x7f080483

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public b(IFI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->c:I

    int-to-float p3, p3

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->c:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    neg-float p2, p2

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->c:I

    int-to-float p3, p3

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->c:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    .line 2
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->Q1(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;)V

    return-void
.end method

.method public click(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "#222222"

    const-string v1, "#ffffff"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    const v2, 0x7f0f0637

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->bgTitleLay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->bgTitleLay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mRedPoint:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_RED_DOT_BUY_VVIP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lja/a;->e(Ljava/lang/String;)V

    const p1, 0x7f080489

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    const v2, 0x7f08048a

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->svipTV:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->vipTV:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 14
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    const v2, 0x7f0f062c

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->bgTitleLay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->bgTitleLay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    const p1, 0x7f080482

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    const v2, 0x7f080483

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->vipTV:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->svipTV:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0b48
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentItem(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mView1:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->click(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mView2:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->click(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setStyle(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mView2:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->click(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mRedPoint:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_RED_DOT_BUY_VVIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    const p1, 0x7f080489

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    const v0, 0x7f08048a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f080482

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mView1:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->click(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;->mViewIndicator:Landroid/view/View;

    const v0, 0x7f080483

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
