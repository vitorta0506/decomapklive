.class public Lcom/previewlibrary/GPreviewActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/previewlibrary/GPreviewActivity$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.previewlibrary.GPreviewActivity"


# instance fields
.field private bezierBannerView:Lcom/previewlibrary/wight/BezierBannerView;

.field protected currentIndex:I

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/previewlibrary/view/BasePhotoFragment;",
            ">;"
        }
    .end annotation
.end field

.field private imgUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/previewlibrary/enitity/IThumbViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isShow:Z

.field protected isTransformOut:Z

.field private ltAddDot:Landroid/widget/TextView;

.field private type:Lcom/previewlibrary/GPreviewBuilder$IndicatorType;

.field private viewPager:Lcom/previewlibrary/wight/PhotoViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/previewlibrary/GPreviewActivity;->isTransformOut:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->fragments:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/previewlibrary/GPreviewActivity;->isShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/previewlibrary/GPreviewActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/GPreviewActivity;->ltAddDot:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/previewlibrary/GPreviewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/GPreviewActivity;->imgUrls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/previewlibrary/GPreviewActivity;)Lcom/previewlibrary/wight/PhotoViewPager;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/previewlibrary/GPreviewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/GPreviewActivity;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/previewlibrary/GPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/previewlibrary/GPreviewActivity;->exit()V

    return-void
.end method

.method private exit()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/previewlibrary/GPreviewActivity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private initData()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imagePaths"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->imgUrls:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/previewlibrary/GPreviewActivity;->currentIndex:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/previewlibrary/GPreviewBuilder$IndicatorType;

    iput-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->type:Lcom/previewlibrary/GPreviewBuilder$IndicatorType;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isShow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/previewlibrary/GPreviewActivity;->isShow:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "duration"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFullscreen"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "isScale"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 8
    invoke-static {v1}, Lcom/previewlibrary/wight/SmoothImageView;->setFullscreen(Z)V

    .line 9
    invoke-static {v2}, Lcom/previewlibrary/wight/SmoothImageView;->setIsScale(Z)V

    if-eqz v1, :cond_0

    const v1, 0x1030011

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 11
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->setDuration(I)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "className"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 13
    iget-object v1, p0, Lcom/previewlibrary/GPreviewActivity;->imgUrls:Ljava/util/List;

    iget v2, p0, Lcom/previewlibrary/GPreviewActivity;->currentIndex:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/previewlibrary/GPreviewActivity;->iniFragment(Ljava/util/List;ILjava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->imgUrls:Ljava/util/List;

    iget v1, p0, Lcom/previewlibrary/GPreviewActivity;->currentIndex:I

    const-class v2, Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-virtual {p0, v0, v1, v2}, Lcom/previewlibrary/GPreviewActivity;->iniFragment(Ljava/util/List;ILjava/lang/Class;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 6

    .line 1
    sget v0, Lcom/previewlibrary/R$id;->viewPager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/previewlibrary/wight/PhotoViewPager;

    iput-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    .line 2
    new-instance v0, Lcom/previewlibrary/GPreviewActivity$d;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/previewlibrary/GPreviewActivity$d;-><init>(Lcom/previewlibrary/GPreviewActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 3
    iget-object v1, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    iget v1, p0, Lcom/previewlibrary/GPreviewActivity;->currentIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 6
    sget v0, Lcom/previewlibrary/R$id;->bezierBannerView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/previewlibrary/wight/BezierBannerView;

    iput-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->bezierBannerView:Lcom/previewlibrary/wight/BezierBannerView;

    .line 7
    sget v0, Lcom/previewlibrary/R$id;->ltAddDot:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->ltAddDot:Landroid/widget/TextView;

    .line 8
    iget-object v1, p0, Lcom/previewlibrary/GPreviewActivity;->type:Lcom/previewlibrary/GPreviewBuilder$IndicatorType;

    sget-object v2, Lcom/previewlibrary/GPreviewBuilder$IndicatorType;->Dot:Lcom/previewlibrary/GPreviewBuilder$IndicatorType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->bezierBannerView:Lcom/previewlibrary/wight/BezierBannerView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->bezierBannerView:Lcom/previewlibrary/wight/BezierBannerView;

    iget-object v1, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    invoke-virtual {v0, v1}, Lcom/previewlibrary/wight/BezierBannerView;->a(Landroidx/viewpager/widget/ViewPager;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->ltAddDot:Landroid/widget/TextView;

    sget v1, Lcom/previewlibrary/R$string;->string_count:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/previewlibrary/GPreviewActivity;->currentIndex:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/previewlibrary/GPreviewActivity;->imgUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    new-instance v1, Lcom/previewlibrary/GPreviewActivity$a;

    invoke-direct {v1, p0}, Lcom/previewlibrary/GPreviewActivity$a;-><init>(Lcom/previewlibrary/GPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 15
    iget-boolean v0, p0, Lcom/previewlibrary/GPreviewActivity;->isShow:Z

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->bezierBannerView:Lcom/previewlibrary/wight/BezierBannerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->ltAddDot:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/previewlibrary/GPreviewActivity$b;

    invoke-direct {v1, p0}, Lcom/previewlibrary/GPreviewActivity$b;-><init>(Lcom/previewlibrary/GPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/previewlibrary/view/BasePhotoFragment;->h:Lbd/c;

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/previewlibrary/view/BasePhotoFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public getViewPager()Lcom/previewlibrary/wight/PhotoViewPager;
    .locals 1

    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    return-object v0
.end method

.method protected iniFragment(Ljava/util/List;ILjava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/previewlibrary/enitity/IThumbViewInfo;",
            ">;I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/previewlibrary/view/BasePhotoFragment;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/previewlibrary/GPreviewActivity;->fragments:Ljava/util/List;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/previewlibrary/enitity/IThumbViewInfo;

    if-ne p2, v2, :cond_0

    const/4 v4, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isSingleFling"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "isDrag"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    const-string v10, "sensitivity"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v10

    move-object v5, p3

    .line 7
    invoke-static/range {v5 .. v10}, Lcom/previewlibrary/view/BasePhotoFragment;->S1(Ljava/lang/Class;Lcom/previewlibrary/enitity/IThumbViewInfo;ZZZF)Lcom/previewlibrary/view/BasePhotoFragment;

    move-result-object v4

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/previewlibrary/GPreviewActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/previewlibrary/GPreviewActivity;->isTransformOut:Z

    .line 2
    invoke-virtual {p0}, Lcom/previewlibrary/GPreviewActivity;->transformOut()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/previewlibrary/GPreviewActivity;->initData()V

    .line 3
    invoke-virtual {p0}, Lcom/previewlibrary/GPreviewActivity;->setContentLayout()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget p1, Lcom/previewlibrary/R$layout;->activity_image_preview_photo:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/previewlibrary/GPreviewActivity;->setContentLayout()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/previewlibrary/GPreviewActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/previewlibrary/a;->a()Lcom/previewlibrary/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/previewlibrary/a;->b()Lbd/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lbd/a;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 5
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    iput-object v1, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->fragments:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iput-object v1, p0, Lcom/previewlibrary/GPreviewActivity;->fragments:Ljava/util/List;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->imgUrls:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iput-object v1, p0, Lcom/previewlibrary/GPreviewActivity;->imgUrls:Ljava/util/List;

    .line 13
    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public setContentLayout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transformOut()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/previewlibrary/GPreviewActivity;->isTransformOut:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/previewlibrary/GPreviewActivity;->getViewPager()Lcom/previewlibrary/wight/PhotoViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/previewlibrary/GPreviewActivity;->isTransformOut:Z

    .line 4
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity;->viewPager:Lcom/previewlibrary/wight/PhotoViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/previewlibrary/GPreviewActivity;->imgUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/previewlibrary/GPreviewActivity;->fragments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/previewlibrary/view/BasePhotoFragment;

    .line 7
    iget-object v2, p0, Lcom/previewlibrary/GPreviewActivity;->ltAddDot:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/previewlibrary/GPreviewActivity;->bezierBannerView:Lcom/previewlibrary/wight/BezierBannerView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Lcom/previewlibrary/view/BasePhotoFragment;->Q1(I)V

    .line 11
    new-instance v1, Lcom/previewlibrary/GPreviewActivity$c;

    invoke-direct {v1, p0}, Lcom/previewlibrary/GPreviewActivity$c;-><init>(Lcom/previewlibrary/GPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/previewlibrary/view/BasePhotoFragment;->W1(Lcom/previewlibrary/wight/SmoothImageView$j;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/previewlibrary/GPreviewActivity;->exit()V

    :goto_1
    return-void
.end method
