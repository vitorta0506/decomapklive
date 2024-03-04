.class public Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrent(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    .line 2
    instance-of v2, v1, Landroidx/fragment/app/FragmentStatePagerAdapter;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0

    .line 4
    :cond_1
    instance-of v1, v1, Landroidx/fragment/app/FragmentPagerAdapter;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager2/widget/ViewPager2;I)Landroidx/fragment/app/Fragment;
    .locals 2

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
