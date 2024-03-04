.class public final Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->setContentLay(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $contentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->$contentData:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->$name:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->onCreateViewHolder$lambda-2(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->onCreateViewHolder$lambda-2$lambda-1(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)I

    move-result p0

    return p0
.end method

.method private static final onCreateViewHolder$lambda-2(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 2
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;-><init>()V

    .line 6
    iget v2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->setCountryId(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->setCountryName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    .line 12
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getIsMoreTen()I

    move-result v5

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    .line 14
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_5

    .line 15
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_5
    :goto_3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/k;-><init>(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->start(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 19
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 20
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    const-string p3, "country"

    invoke-virtual {p1, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "asia"

    .line 21
    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p2, "Areae_country_Continen_Asia_tclick"

    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-2$lambda-1(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)I
    .locals 0

    const-string p2, "$country"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->$contentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->$contentData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 4
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget v0, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->isHot:I

    const v1, 0x7f0a04e0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0229

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->$contentData:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->$name:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/area/j;

    invoke-direct {v3, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/j;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
