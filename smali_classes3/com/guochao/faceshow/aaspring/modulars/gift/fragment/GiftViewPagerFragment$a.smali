.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object v0, p3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-static {p3, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object p3

    .line 3
    instance-of v0, p3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iput-object p3, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz p3, :cond_3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->m2()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i2()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->Y1(Z)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i2()V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->S1()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->reset()V

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 5
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;Ljava/util/List;)V

    :cond_1
    return-void
.end method
