.class public Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lu8/c;
.implements Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$b;,
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$c;
    }
.end annotation


# instance fields
.field public a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field public d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;>;"
        }
    .end annotation
.end field

.field f:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

.field mPageIndicatorView:Lcom/guochao/faceshow/views/GCIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->R1(Ljava/util/List;)V

    return-void
.end method

.method private R1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isMVPGift()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->isMvpGift()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_gift_open_role:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_gift_open_role:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private T1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ")",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-nez v1, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_3
    return-object v0
.end method

.method private V1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_0
    if-ge p1, v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->Z1(I)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 11
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 15
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_2
    if-ge v0, v2, :cond_3

    .line 18
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->Z1(I)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public static Y1(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;
    .locals 2

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "position"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method private Z1()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private a2(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz v0, :cond_1

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public Q1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->Z1()I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->T1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    goto :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->T1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v3, :cond_2

    move-object v5, p1

    goto :goto_1

    :cond_2
    move-object v5, v0

    .line 6
    :goto_1
    invoke-interface {v4, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 10
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-virtual {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-virtual {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_6
    const/4 p1, 0x0

    .line 12
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_7

    return-void

    .line 14
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->g2(ZLjava/util/List;)V

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public S1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->W1()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public U1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->Y1(Z)V

    :cond_0
    return-void
.end method

.method public W1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->R1(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public X1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    return-object v0
.end method

.method public b2()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->T1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_3

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v5, v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_3

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v5, v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->a2(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-virtual {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 22
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v0, :cond_7

    return-void

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->g2(ZLjava/util/List;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method public d2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->j2()V

    :cond_1
    return-void
.end method

.method public e2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->m2()V

    :cond_0
    return-void
.end method

.method public f2(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    if-nez v1, :cond_2

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_2
    rem-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->Z1(I)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public getCurrentTheme()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lu8/c;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lu8/c;

    invoke-interface {v0}, Lu8/c;->getCurrentTheme()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0194

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b:Ljava/util/List;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0e05

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "position"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->a:I

    .line 5
    instance-of v2, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$b;

    if-eqz v2, :cond_0

    .line 6
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$b;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$b;->getCategoryItem(I)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    :cond_0
    const-string p1, "user_mvp"

    .line 7
    invoke-static {p1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 11
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isMVPGift()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->f2(Ljava/util/List;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setId(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->mPageIndicatorView:Lcom/guochao/faceshow/views/GCIndicatorView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/GCIndicatorView;->bindTo(Landroidx/viewpager/widget/ViewPager;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-virtual {p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    if-le p1, v1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->mPageIndicatorView:Lcom/guochao/faceshow/views/GCIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->mPageIndicatorView:Lcom/guochao/faceshow/views/GCIndicatorView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;)V

    invoke-virtual {p1, v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public t0()Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->c:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    return-object v0
.end method
