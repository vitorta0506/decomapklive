.class public Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->n0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->o0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->m0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->a:Landroid/view/View;

    return-object p0
.end method

.method private l0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic m0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic n0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic o0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "countryNames"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public b0()Landroidx/viewpager/widget/PagerAdapter;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$c;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "LIVE_FROM_COUNTRY"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d006c

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->initView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "countryNames"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->d:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_3
    const v0, 0x7f0a02bd

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->a:Landroid/view/View;

    const v1, 0x7f0a0138

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->a:Landroid/view/View;

    const v1, 0x7f0a0276

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->a:Landroid/view/View;

    const v1, 0x7f0a0277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->l0(Landroidx/recyclerview/widget/RecyclerView;)V

    const v0, 0x7f0a00be

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
