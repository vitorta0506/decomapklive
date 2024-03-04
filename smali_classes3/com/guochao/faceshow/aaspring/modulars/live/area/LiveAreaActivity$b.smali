.class Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->l0(Landroidx/recyclerview/widget/RecyclerView;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->b(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 6
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

    const v1, 0x7f0a027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a027b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    iget-object v4, v3, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 8
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060098

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    const/16 p1, 0x8

    .line 11
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f06009c

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0229

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
