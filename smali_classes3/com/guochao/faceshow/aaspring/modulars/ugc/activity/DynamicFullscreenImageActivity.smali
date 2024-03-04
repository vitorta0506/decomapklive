.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicFile;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/graphics/drawable/ColorDrawable;

.field mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->b:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0048

    return v0
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "transitionName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTransitionName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->setOnDragListener(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;)V

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-lez v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->onPageSelected(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const p1, 0x7f1209da

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a0540

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->scaled()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->setGestureEnabled(Z)V

    :cond_0
    return-void
.end method
