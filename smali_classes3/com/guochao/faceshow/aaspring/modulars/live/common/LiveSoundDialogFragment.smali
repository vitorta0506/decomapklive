.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/liveroom_sound"
.end annotation


# static fields
.field static f:J


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field mPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field modelTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field pageIndicatorView:Lcom/rd/PageIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->a:Ljava/util/List;

    const/16 v0, 0xb

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->b:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->b:I

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->T1(Ljava/util/List;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->d:Ljava/util/List;

    return-object p0
.end method

.method public static S1()Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private T1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/a;->d(Ljava/util/List;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->f:J

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x8

    rem-int/2addr p1, v1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr p1, v2

    :goto_0
    if-ge v0, p1, :cond_4

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->a:Ljava/util/List;

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v5, v0, 0x8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->S1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$c;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->setCount(I)V

    if-gt p1, v2, :cond_5

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d03b6

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->d:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->modelTitle:Landroid/widget/TextView;

    const v0, 0x7f1204f4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;)V

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->b:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p1, 0x7f13012b

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundDialogFragment;->e:Z

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
