.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;,
        Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$FragmentAdapter;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/FeedbackImageViewModel;

.field b:I

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->e0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->i0(I)V

    return-void
.end method

.method private e0(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->b:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 5
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;

    invoke-direct {v7}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;-><init>()V

    .line 6
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getThumbnailPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->b:Ljava/lang/String;

    const/4 v8, 0x1

    .line 8
    iput-boolean v8, v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->a:Z

    .line 9
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->d(Landroid/net/Uri;)V

    .line 10
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result v9

    if-ne v9, v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->d:Z

    if-eqz v8, :cond_2

    .line 11
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v6, v1, :cond_1

    .line 12
    iput v5, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->b:I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private g0(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->b:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;

    .line 5
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;

    invoke-direct {v7}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;-><init>()V

    .line 6
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->getSmallUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->b:Ljava/lang/String;

    .line 8
    iput-boolean v3, v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->a:Z

    .line 9
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;->getFileType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, v7, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$MediaInfo;->d:Z

    if-eqz v8, :cond_2

    .line 10
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v6, v1, :cond_1

    .line 11
    iput v5, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->b:I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private i0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static l0(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "position"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f(I)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d004f

    return v0
.end method

.method public initView()V
    .locals 5

    const v0, 0x7f0a042c

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const v1, 0x7f06033e

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const-string v2, "#DDDDDD"

    .line 3
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b(II)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v2, 0x7f0801a7

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "position"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->b:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$FragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->g0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$FragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->b:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 12
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->b:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->i0(I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 16
    :cond_2
    invoke-static {}, Ld7/e;->a()Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/FeedbackImageViewModel;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/FeedbackImageViewModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/FeedbackImageViewModel;

    .line 17
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/FeedbackImageViewModel;->b()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public k0()V
    .locals 3

    const v0, 0x7f0a042c

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
