.class Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->i(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissWithItem(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->f(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/DisTouchRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->g(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->g(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->obtain(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->setCurrentCountry(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->g(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->reload()V

    :cond_0
    return-void
.end method
