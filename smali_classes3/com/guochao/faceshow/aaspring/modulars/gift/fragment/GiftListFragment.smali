.class public Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;,
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final p:[I


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field private e:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field f:I

.field g:I

.field h:Z

.field i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Landroid/animation/Animator;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->p:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x63
        0xbc
        0x3e7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->j:Z

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->o:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->o:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    return-object p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->getType()I

    move-result p0

    return p0
.end method

.method private V1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getHelloGiftId()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result p1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getLockNum()I

    move-result v0

    if-le p1, v0, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getRegTime()J

    move-result-wide v4

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xa4cb800

    add-long/2addr v8, v4

    const-wide/32 v10, 0x5265c00

    const/4 p1, 0x1

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v8, v4, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 6
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v2, "KEY_HELLO_HOUR_SHOW_V2"

    invoke-virtual {v0, v2}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigSwitch()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 8
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lja/a;->e(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v2, "hellostar_hellogiftsecend"

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getFirstNum()I

    move-result v0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getLockNum()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;->getInstance(III)Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "HelloStarGiftDialog"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    add-long/2addr v4, v10

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    .line 13
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-ltz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public static Z1(I)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getLevelId()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b2()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getCurrentItem()Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bag"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic c2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->h2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V

    return-void
.end method

.method private getType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    .line 4
    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private h2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-ltz p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    :cond_0
    new-instance p2, Ly7/p;

    invoke-direct {p2}, Ly7/p;-><init>()V

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {p2, p3}, Ly7/p;->e(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    .line 6
    invoke-virtual {p2, p1}, Ly7/p;->g(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 7
    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    invoke-virtual {p2, p3}, Ly7/p;->f(I)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isBagChipsGIft()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    :cond_1
    return-void
.end method

.method private k2(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->o:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ChipTipPopupWindow"

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private l2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$b;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p2

    invoke-virtual {p2}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ar"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/high16 p3, 0x42d20000    # 105.0f

    const/16 v0, 0x51

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    div-int/lit8 v2, p1, 0x4

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 p1, p1, 0x2

    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    neg-int v2, p1

    div-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 p1, p1, 0x2

    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_3
    :goto_0
    return-void
.end method

.method private n2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->m:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->m:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private o2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/a;->t(I)Lcom/guochao/faceshow/bean/BagListBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/BagListBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/BagListBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/BagListBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/BagBean;

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/BagBean;->getGiftId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/BagBean;->setNumber(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/manager/a;->v(I)Ljava/util/List;

    move-result-object p3

    .line 7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bag"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setNumber(I)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public U1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isMVPGift()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->isMvpGift()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getIsUse()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getLevelId()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->f:I

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getLevelId()I

    move-result p1

    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public W1()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->myCollection:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    .line 8
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v1

    const-string v2, "KEY_GIFT_CLICK_COMBO"

    invoke-virtual {v1, v2}, Lja/a;->e(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    .line 12
    :cond_1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->h:Z

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lt8/a;->d(ZI)V

    :cond_2
    return-void
.end method

.method public X1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x4

    if-nez v3, :cond_0

    .line 1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2
    :cond_0
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->e:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    const/4 v7, 0x1

    if-eq v5, v3, :cond_1

    if-ne v2, v7, :cond_1

    iget-boolean v5, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->h:Z

    if-eqz v5, :cond_1

    .line 4
    invoke-direct/range {p0 .. p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->l2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    :cond_1
    const v5, 0x7f0a03ba

    .line 5
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_2

    .line 7
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v5, 0x7f0a04ef

    .line 9
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    instance-of v8, v8, Lu8/c;

    if-eqz v8, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v8

    check-cast v8, Lu8/c;

    invoke-interface {v8}, Lu8/c;->getCurrentTheme()I

    move-result v8

    const v10, 0x7f13000d

    if-eq v8, v10, :cond_3

    if-gez v8, :cond_4

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    .line 13
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isBagChipsGIft()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v8, :cond_5

    const v10, 0x7f0f00d7

    .line 14
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_5
    const v10, 0x7f0f00d8

    .line 15
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 16
    :goto_2
    invoke-virtual {v5, v6, v6}, Landroid/widget/ImageView;->measure(II)V

    const/high16 v10, 0x40200000    # 2.5f

    .line 17
    invoke-static {v10}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v10

    .line 18
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 20
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 21
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0a0485

    invoke-virtual {v1, v11, v10}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const v10, 0x7f0a0715

    .line 22
    invoke-virtual {v1, v10}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v12, 0x7f0a072a

    .line 23
    invoke-virtual {v1, v12}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 24
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result v13

    if-eqz v13, :cond_7

    const v13, 0x7f0802b0

    .line 25
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isMVPGift()Z

    move-result v13

    if-eqz v13, :cond_8

    const v13, 0x7f0f027d

    .line 28
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 30
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result v13

    if-eqz v13, :cond_9

    const v13, 0x7f0802a6

    .line 31
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 33
    :cond_9
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    const v12, 0x7f0a0719

    .line 34
    invoke-virtual {v1, v12}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a0269

    .line 35
    invoke-virtual {v1, v13}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result v14

    const-string v7, ""

    const/16 v15, 0xe

    if-ne v14, v15, :cond_f

    const v14, 0x7f0a047e

    .line 37
    invoke-virtual {v1, v14}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 38
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getDateLimitDay()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v4, 0x7f0f01b2

    invoke-static {v15, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v15, 0x7f06009c

    if-nez v8, :cond_a

    .line 41
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    if-eqz v4, :cond_c

    .line 42
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    invoke-virtual {v4, v6, v6, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-nez v8, :cond_b

    .line 43
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v15}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_b
    const/4 v8, 0x0

    .line 44
    invoke-virtual {v14, v4, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0a048a

    invoke-virtual {v1, v7, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 46
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isBagChipsGIft()Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0x7f12084c

    .line 47
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0a0485

    invoke-virtual {v1, v7, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 48
    :cond_d
    invoke-direct {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 49
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x3ecccccd    # 0.4f

    .line 50
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_8

    :cond_e
    const/16 v4, 0x8

    .line 51
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_8

    .line 53
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result v4

    if-ne v4, v15, :cond_10

    const v4, 0x7f0a048a

    .line 54
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->clearDrawable(Landroid/widget/TextView;)V

    goto :goto_6

    :cond_10
    const v4, 0x7f0a048a

    .line 55
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getIsToken()Ljava/lang/String;

    move-result-object v4

    const-string v9, "1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v4, 0x7f0f00e5

    goto :goto_5

    :cond_11
    const v4, 0x7f0f0127

    :goto_5
    invoke-static {v8, v4}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    .line 56
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0a048a

    invoke-virtual {v1, v7, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 57
    invoke-static/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 58
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LV."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getLevelId()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->U1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v4, 0x8

    .line 61
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 62
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_7

    .line 63
    :cond_12
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x3ecccccd    # 0.4f

    .line 64
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_7
    const/4 v4, 0x4

    .line 65
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget v7, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    if-ne v7, v2, :cond_13

    .line 67
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v8, 0x7f0803f3

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    .line 68
    :cond_13
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v8, 0x7f06038c

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_14
    const/4 v4, 0x4

    .line 69
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 71
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 72
    :goto_8
    iget v4, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    if-ne v4, v2, :cond_17

    invoke-direct {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 73
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->U1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 74
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0803f3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    iget v7, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "%d"

    invoke-static {v1, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 76
    iget v4, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "X%d"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x4

    .line 78
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 79
    :cond_15
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    const/16 v1, 0x8

    .line 80
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 83
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n2()V

    .line 84
    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->f(Landroid/widget/ImageView;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->m:Landroid/animation/Animator;

    const/16 v2, 0x8

    goto :goto_b

    .line 85
    :cond_17
    invoke-static/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 86
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    goto :goto_a

    :cond_18
    const/16 v2, 0x8

    .line 87
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    const/4 v4, 0x4

    .line 88
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f06038c

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    :goto_b
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isMVPGift()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->isMvpGift()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 92
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_c

    .line 94
    :cond_19
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x3ecccccd    # 0.4f

    .line 95
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1a
    :goto_c
    return-void
.end method

.method public Y1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->X1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void
.end method

.method public d2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/AppResource;)V
    .locals 7

    if-eqz p3, :cond_5

    .line 1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/AppResource;->getBag()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 3
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->o2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/guochao/faceshow/aaspring/manager/a;->v(I)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 12
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setNumber(I)V

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v4

    if-gtz v4, :cond_2

    .line 14
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    const/4 v4, -0x1

    .line 15
    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    .line 16
    new-instance v4, Ly7/p;

    invoke-direct {v4}, Ly7/p;-><init>()V

    .line 17
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4, v5}, Ly7/p;->e(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    const/4 v5, 0x0

    .line 18
    invoke-virtual {v4, v5}, Ly7/p;->g(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 19
    invoke-virtual {v4, v1}, Ly7/p;->f(I)V

    .line 20
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    :cond_5
    return-void
.end method

.method public e2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/AppResource;I)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/AppResource;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 6
    invoke-direct {p0, p1, v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->o2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setNumber(I)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v0

    if-gtz v0, :cond_1

    .line 9
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    .line 11
    new-instance v0, Ly7/p;

    invoke-direct {v0}, Ly7/p;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v0, v2}, Ly7/p;->e(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Ly7/p;->g(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 14
    invoke-virtual {v0, v1}, Ly7/p;->f(I)V

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    :goto_2
    return-void
.end method

.method public f2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result v0

    const/16 v3, 0xe

    const/16 v4, 0x8

    if-ne v0, v3, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->myCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getRegTime()J

    move-result-wide p2

    const-wide/32 v3, 0x5265c00

    add-long/2addr p2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->longTimeToStringTime(J)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f1204ab

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getLockNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-virtual {p0, p3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->myCollection:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getLevelId()I

    move-result v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v5

    if-le v3, v5, :cond_3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getIsCollect()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :cond_4
    :goto_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz v3, :cond_6

    if-ne p2, v1, :cond_6

    .line 13
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->j:Z

    if-nez v3, :cond_5

    .line 14
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->j:Z

    goto :goto_2

    .line 15
    :cond_5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v3

    const-string v4, "KEY_GIFT_CLICK_COMBO"

    invoke-virtual {v3, v4}, Lja/a;->e(Ljava/lang/String;)V

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v3, 0x0

    .line 17
    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    .line 18
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->h:Z

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->getType()I

    move-result v3

    invoke-static {v1, v3}, Lt8/a;->d(ZI)V

    .line 20
    :cond_6
    :goto_2
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->U1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v3

    const-string v4, "0"

    if-nez v3, :cond_8

    .line 21
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    .line 22
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    .line 23
    new-instance p1, Ly7/p;

    invoke-direct {p1}, Ly7/p;-><init>()V

    .line 24
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {p1, p2}, Ly7/p;->e(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    .line 25
    invoke-virtual {p1, p3}, Ly7/p;->h(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 26
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 28
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isMVPGift()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_gift_click_role:Ljava/lang/String;

    const-string p3, "1"

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_gift_toast_appear_3000:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    const p1, 0x7f120660

    .line 31
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 32
    sget-object p1, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p1, p2, p3, v4}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const p1, 0x7f12020e

    .line 33
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    :goto_3
    return-void

    .line 34
    :cond_8
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isMVPGift()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 35
    sget-object v3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v5, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_gift_click_role:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_9
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    if-ne v3, p2, :cond_c

    .line 37
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    .line 38
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->p:[I

    array-length v3, v0

    rem-int/2addr p2, v3

    aget p2, v0, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    const p2, 0x7f0a0269

    .line 39
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-array p2, v1, [Ljava/lang/Object;

    .line 40
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "X%d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p2, 0x4

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 43
    :cond_a
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :goto_4
    new-instance p1, Ly7/p;

    invoke-direct {p1}, Ly7/p;-><init>()V

    .line 45
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {p1, p2}, Ly7/p;->e(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    .line 46
    invoke-virtual {p1, p3}, Ly7/p;->g(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 47
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    invoke-virtual {p1, p2}, Ly7/p;->f(I)V

    .line 48
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isBagChipsGIft()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz p1, :cond_b

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    :cond_b
    return-void

    .line 51
    :cond_c
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 52
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    goto :goto_5

    .line 53
    :cond_d
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    .line 54
    :goto_5
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    .line 55
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->e:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 56
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->p:[I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    array-length v2, p1

    rem-int/2addr v1, v2

    aget p1, p1, v1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    .line 57
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 58
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 59
    :cond_e
    invoke-direct {p0, p3, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->h2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;II)V

    :goto_6
    return-void
.end method

.method public g2(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n2()V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0193

    return v0
.end method

.method public hideEveryThingEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "hide_every_thing"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public i2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    const v0, 0x7f0a05a0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lu8/c;

    const v0, 0x7f0f01b1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lu8/c;

    invoke-interface {p1}, Lu8/c;->getCurrentTheme()I

    move-result p1

    const v1, 0x7f13000d

    if-eq p1, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n:Landroid/widget/ImageView;

    const v0, 0x7f0f03d5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->k:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public j2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isBagChipsGIft()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isBagChipsGIft()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bag"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->k2(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public loadData(I)V
    .locals 0

    return-void
.end method

.method public m2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lu8/c;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lu8/c;

    invoke-interface {p1}, Lu8/c;->getCurrentTheme()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->g:I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->l:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/c;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/c;

    .line 6
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/c;->t0()Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    :cond_0
    const/4 p1, -0x1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->X1()Ljava/util/List;

    move-result-object p1

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->l:I

    if-ltz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->l:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->k:Ljava/util/List;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->t0()Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->a:I

    .line 13
    :cond_2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->l:I

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 14
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_GIFT_CLICK_COMBO"

    invoke-virtual {p1, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->h:Z

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->k:Ljava/util/List;

    if-nez p1, :cond_5

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->k:Ljava/util/List;

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->f:I

    return-void
.end method

.method public onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->g:I

    if-lez p1, :cond_0

    .line 2
    new-instance p1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->g:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13000d

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

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
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->g:I

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->g:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13000d

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    const/16 v1, 0xe

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 5
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    const v1, 0x7f0d037d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 6
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    const v1, 0x7f0d037c

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->Y1(Z)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onGiftChange(Ly7/p;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly7/p;->c()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ly7/p;->a()Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->e:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    .line 6
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    .line 7
    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n2()V

    .line 9
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    goto/16 :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v5, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getCategoryItem(I)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v2

    .line 14
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->d:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v5

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v2

    const/4 v6, 0x4

    const v7, 0x7f0a0269

    if-ne v5, v2, :cond_5

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->l:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->d:Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;

    invoke-virtual {v5}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 15
    invoke-virtual {p1}, Ly7/p;->b()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    const/4 p1, 0x0

    .line 16
    :goto_0
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->p:[I

    array-length v3, v2

    if-ge p1, v3, :cond_3

    .line 17
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    aget v2, v2, p1

    if-ne v3, v2, :cond_2

    .line 18
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 20
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "X%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_5
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a:I

    .line 25
    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->b:I

    .line 26
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->n2()V

    .line 27
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f06038c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->f2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment$d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
