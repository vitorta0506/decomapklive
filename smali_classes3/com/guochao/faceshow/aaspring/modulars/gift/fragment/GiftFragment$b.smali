.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->checkData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->gift_dialog_switch_tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$500(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$500(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v0

    invoke-static {v1, v0}, Lt8/a;->c(II)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 5
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->U1()V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e2()V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$600(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 10
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v2, :cond_3

    .line 11
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->S1()V

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$500(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bag"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$600(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_5

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$600(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v1, :cond_5

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$600(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d2()V

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getIsToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->checkToItem(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->reset()V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$900(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Z)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$600(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_6

    .line 20
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;Landroidx/fragment/app/Fragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
