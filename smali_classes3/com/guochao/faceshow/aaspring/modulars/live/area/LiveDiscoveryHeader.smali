.class public Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->c:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d:Ljava/util/ArrayList;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->a:Landroid/view/View;

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->b:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->h()Landroid/view/View;

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->i(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->e:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->e:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    return-object p1
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private synthetic i(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->e:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$OnDismissListener;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string p2, "Home_live_Explore_morec_lick"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a02ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public h()Landroid/view/View;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMCurrentCountry()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->obtain(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->e:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->a:Landroid/view/View;

    const v2, 0x7f0a02ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    .line 6
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->a:Landroid/view/View;

    const v2, 0x7f0a02cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/area/o;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->a:Landroid/view/View;

    return-object v0
.end method

.method public k(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "-1"

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;-><init>()V

    .line 7
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->setCountryId(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->j()V

    return-void
.end method
