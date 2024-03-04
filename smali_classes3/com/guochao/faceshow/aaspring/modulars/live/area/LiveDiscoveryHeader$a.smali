.class Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->h()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->b(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->obtain(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->f(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "country"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v2, "Home_live_Explore_country_click"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->g(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->g(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->setMCurrentCountry(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->g(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->reload()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->e(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->e(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    move-result-object v3

    iget v3, v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a027a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0f01d4

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f120af6

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d024c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/p;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
