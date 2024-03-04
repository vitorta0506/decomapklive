.class public Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;
.implements Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$h;


# instance fields
.field private d:Z

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->e:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->d:Z

    return p1
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->Z1()V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->e:Z

    return p1
.end method

.method private V1(Lcom/android/billingclient/api/SkuDetails;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getSubType()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getSubType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static X1(II)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mode"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "from"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private Y1()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->W(Lcom/android/billingclient/api/m;)V

    return-void
.end method

.method private Z1()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->d:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->e:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->d0()Ljava/util/List;

    move-result-object v0

    .line 3
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 7
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/SkuDetails;

    .line 8
    :try_start_0
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, "vip"

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    .line 10
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 11
    :try_start_1
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object v10, v8

    .line 12
    :goto_2
    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    :goto_3
    if-le v7, v9, :cond_3

    .line 13
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;

    .line 14
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->isDisable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 15
    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;

    invoke-direct {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->V1(Lcom/android/billingclient/api/SkuDetails;)Z

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;-><init>(Lcom/android/billingclient/api/SkuDetails;Z)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 17
    :cond_3
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;

    invoke-direct {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->V1(Lcom/android/billingclient/api/SkuDetails;)Z

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;-><init>(Lcom/android/billingclient/api/SkuDetails;Z)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_4
    const-string v7, "vvip"

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    .line 19
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 20
    :try_start_2
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-object v10, v8

    .line 21
    :goto_5
    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, -0x1

    :goto_6
    if-le v7, v9, :cond_7

    .line 22
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;

    .line 23
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->isDisable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 24
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;

    invoke-direct {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->V1(Lcom/android/billingclient/api/SkuDetails;)Z

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;-><init>(Lcom/android/billingclient/api/SkuDetails;Z)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 26
    :cond_7
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;

    invoke-direct {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->V1(Lcom/android/billingclient/api/SkuDetails;)Z

    move-result v7

    invoke-direct {v6, v5, v7}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;-><init>(Lcom/android/billingclient/api/SkuDetails;Z)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_2
    move-exception v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 28
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    .line 29
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    if-nez v0, :cond_b

    .line 30
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentPagerAdapter;

    if-eqz v4, :cond_b

    .line 31
    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    :cond_b
    if-eqz v0, :cond_c

    .line 32
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;->d2(Ljava/util/List;)V

    .line 33
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    if-nez v0, :cond_d

    .line 34
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentPagerAdapter;

    if-eqz v1, :cond_d

    .line 35
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    :cond_d
    if-eqz v0, :cond_e

    .line 36
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;->d2(Ljava/util/List;)V

    .line 37
    :cond_e
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_load_success:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :cond_f
    :goto_8
    return-void
.end method


# virtual methods
.method public B1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "_"

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->f:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    .line 4
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getSign()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-nez v3, :cond_0

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getSubType()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getSubType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h0()Z

    move-result v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v7, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f0()I

    move-result v0

    if-le v4, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const v0, 0x7f120a10

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h0()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(\u4ec5\u6d4b\u8bd5)\u5347\u7ea7\u7684\u76ee\u6807subjectId\u662f\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->b:I

    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public W1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    instance-of v2, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    if-eqz v2, :cond_3

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    .line 5
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mAnimTop:Landroid/view/View;

    if-nez v2, :cond_2

    return v1

    .line 6
    :cond_2
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, -0x40800000    # -1.0f

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mAnimTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public b(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u901a\u7684\u76ee\u6807subjectId\u662f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->b:I

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C0(Ljava/lang/String;I)V

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->start_buy_vip:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->start_buy_svip:Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->initView(Landroid/view/View;)V

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->b:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_dialog:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_dialog:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_dialog:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_dialog:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public synthetic onConsumeResponse()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->a(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->o0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->I0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public synthetic onPayError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->b(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onPayResponse()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/f;->c(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;)V

    return-void
.end method

.method public onSetupResponse(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->Y1()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->K(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1203d1

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public onSubscribeFailed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 6
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    if-eqz v2, :cond_2

    .line 7
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;->a2(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onSubscribeSuccess()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public startSubscribe()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 5
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipFragment;->a2(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method
