.class Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$c;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->b0()Landroidx/viewpager/widget/PagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getInstance(ILcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
