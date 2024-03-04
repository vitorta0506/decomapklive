.class public Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Lu8/c;
.implements Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment$b;
.implements Lp9/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$p;,
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;,
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;,
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;,
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GiftViewPagerFragment"


# instance fields
.field private accountId:Ljava/lang/String;

.field private avarUrl:Ljava/lang/String;

.field backpackTitle:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private broadCaseUserName:Ljava/lang/String;

.field private broadCastUserId:Ljava/lang/String;

.field private chargeListener:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;

.field firstCharge:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field firstRechargeActivity:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field firstRechargeBottomText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field firstRechargeGet:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field firstRechargeHeader:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private firstRechargeShowed:Z

.field firstRechargeText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private giftViewPagerAdapter:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;

.field private final imUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field private interceptClick:Z

.field private isShuijing:Z

.field ivUserInfo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivWeight:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected llMultiPlayer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field luckyGiftAnimator:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field luckyGiftHeader:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field luckyGiftRule:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAdsArea:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAdsTips:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAdsView:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mGiftItemListener:Lu8/b;

.field public mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRankList:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mResourceCategoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field private mResourceCategoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectAll:Z

.field mSelectAllView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSendToAllUserGuidPop:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;

.field mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewDiamonds:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mTheme:I

.field mType:I

.field mVideoId:Ljava/lang/String;

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private multiPlayer:Z

.field myCollection:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field realContent:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private showTime:J

.field tabLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field topSend:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected userId:Ljava/lang/String;

.field private userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

.field protected userName:Ljava/lang/String;

.field private userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTheme:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showTime:J

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mFragments:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeShowed:Z

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->lambda$showFirstRecharge$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->lambda$checkData$0(I)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->lambda$showFirstRecharge$1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->sendGiftButtonClick(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showComboView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->interceptClick:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->chargeListener:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getFilePath(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->broadCastUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->setItemState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/AppResource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->notifyBackPageGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/AppResource;)V

    return-void
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    return p0
.end method

.method static synthetic access$400(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showChargeDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mFragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getBagGiftResource(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->setGiftData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showFirstRecharge(Z)V

    return-void
.end method

.method private checkData()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftViewPagerAdapter:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    invoke-static {v0}, Lt8/a;->a(I)I

    move-result v0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/f;

    invoke-direct {v2, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;I)V

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getBagGiftResource(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/util/List;)V

    const/16 p1, 0xe

    invoke-virtual {v0, p0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/a;->u(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return-void
.end method

.method private getEnterType()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz v0, :cond_0

    const-string v0, "4"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const-string v1, "0"

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v0

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "2"

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    return-object v0

    :cond_2
    return-object v1

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    if-eqz v0, :cond_4

    const-string v0, "5"

    return-object v0

    .line 7
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/activity/MainActivity;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/activity/MainActivity;->k1()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "3"

    return-object v0

    :cond_5
    return-object v1
.end method

.method private getFilePath(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXPathV2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gift_v2/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Url()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(IILjava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .locals 3

    .line 30
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "theme"

    .line 32
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "type"

    .line 33
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "video"

    .line 34
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "interceptClick"

    .line 35
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getInstance(IIZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "theme"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "type"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "multi"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "accountId"

    .line 6
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getInstance(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .locals 3

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;-><init>()V

    .line 9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "theme"

    .line 10
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "type"

    .line 11
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "multi"

    .line 12
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "accountId"

    .line 13
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "broadCastUserId"

    .line 14
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "userName"

    .line 15
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "avarUrl"

    .line 16
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "userVipData"

    .line 17
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getInstance(IIZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/beans/UserVipData;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;-><init>()V

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "theme"

    .line 21
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "type"

    .line 22
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "multi"

    .line 23
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "accountId"

    .line 24
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    check-cast p4, Ljava/util/ArrayList;

    const-string p0, "userList"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "broadCastUserId"

    .line 26
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "avarUrl"

    .line 27
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "userVipData"

    .line 28
    invoke-virtual {v1, p0, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getNumCheckData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "1"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "10"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "99"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "188"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "999"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getImg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->c:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->d:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->accountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getImg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->c:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->d:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method private hideEveryThingExceptCombo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->realContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->llMultiPlayer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstCharge:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v2, "hide_every_thing"

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a032b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSendToAllUserGuidPop:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->hidePop()V

    :cond_2
    return-void
.end method

.method private initAds()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsArea:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/high16 v3, 0x41e00000    # 28.0f

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRiskLevel()I

    move-result v0

    const/4 v5, 0x1

    if-gt v0, v5, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v5, 0x42200000    # 40.0f

    .line 5
    invoke-static {v5}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 8
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->q()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsTips:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 13
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$m;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v0, v1, v2}, Lc8/a;->w(Landroid/app/Activity;Lc8/a$h;)V

    return-void

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 15
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private isInCollectPager(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->b2()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$checkData$0(I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->C(IZ)V

    return-void
.end method

.method private synthetic lambda$showFirstRecharge$1(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x5

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    return-void
.end method

.method private synthetic lambda$showFirstRecharge$2(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    goto :goto_0

    :cond_4
    const/4 p1, 0x6

    goto :goto_0

    :cond_5
    const/4 p1, 0x4

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    return-void
.end method

.method private notifyBackPageGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/AppResource;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bag"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftViewPagerAdapter:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 5
    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->e2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/AppResource;I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private playLuckyGiftIcon(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftAnimator:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    const v1, 0x7f08044b

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftRule:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMaxMultiple()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f120540

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static putType(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "from"

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "voiceRoom"

    .line 1
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "trtc"

    .line 2
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "IM"

    .line 3
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "1v1"

    .line 4
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p0, "shortVideo"

    .line 5
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p0, "liveStream"

    .line 6
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static recordSendGiftResult(Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->putType(ILandroid/os/Bundle;)V

    const-string p2, "msg"

    const-string v1, "code"

    if-nez p0, :cond_0

    const-string p0, "-1000"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "result is null"

    .line 4
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->getMd5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->t(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "-1001"

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "md5 not match"

    .line 7
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "1"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "success"

    .line 9
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p1, "send_gift_result"

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static recordSendGiftResult(Lg7/a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;",
            ">;I)V"
        }
    .end annotation

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->putType(ILandroid/os/Bundle;)V

    const-string p1, "msg"

    const-string v1, "code"

    if-nez p0, :cond_0

    const-string p0, "-2000"

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "exception is null"

    .line 14
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lg7/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p1, "send_gift_result"

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private refreshLocalData(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Z)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/a;->h(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 6
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result v6

    if-ne v5, v6, :cond_4

    if-nez p2, :cond_4

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v4, p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setIsCollect(I)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private removeUser()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendGiftButtonClick(Ljava/lang/String;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ln7/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f12005d

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isBagChipsGIft()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int p1, p1, v7

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->buildSendUsers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 10
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    mul-int v10, p1, v0

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result p1

    const/16 v0, 0xe

    const/4 v11, 0x1

    if-ne p1, v0, :cond_d

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getHelloGiftId()I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getRegTime()J

    move-result-wide v2

    .line 14
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v4, "KEY_HELLO_HOUR_SHOW_V2"

    invoke-virtual {p1, v4}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gtz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 16
    :goto_2
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    const v4, 0x7f12010d

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    if-nez p1, :cond_8

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result p1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getLockNum()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    mul-int v0, v0, v7

    if-ge p1, v0, :cond_b

    .line 18
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    return v1

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result p1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    mul-int v0, v0, v7

    if-ge p1, v0, :cond_b

    .line 20
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    return v1

    :cond_9
    if-eqz v2, :cond_a

    if-nez p1, :cond_a

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result p1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getLockNum()I

    move-result v0

    sub-int/2addr p1, v0

    if-ge p1, v7, :cond_b

    .line 22
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    return v1

    .line 23
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result p1

    if-ge p1, v7, :cond_b

    .line 24
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    return v1

    .line 25
    :cond_b
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    if-eqz p1, :cond_c

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    mul-int v1, v1, v7

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setNumber(I)V

    goto :goto_3

    .line 27
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getNumber()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setNumber(I)V

    .line 28
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->notifyBackPageGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/AppResource;)V

    .line 29
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mGiftItemListener:Lu8/b;

    if-eqz v2, :cond_13

    .line 30
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget-boolean v8, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCurrentComboId()I

    move-result v9

    new-instance v10, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$j;

    invoke-direct {v10, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    move-object v3, p0

    invoke-interface/range {v2 .. v10}, Lu8/b;->onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    goto/16 :goto_4

    .line 31
    :cond_d
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_10

    .line 32
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result p1

    if-ge p1, v10, :cond_e

    .line 33
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v8

    const/4 v11, 0x1

    const/4 v12, 0x1

    new-instance v13, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;

    invoke-direct {v13, p0, v10, v6, v7}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;ILjava/util/List;I)V

    move-object v9, p0

    invoke-virtual/range {v8 .. v13}, Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V

    return v1

    .line 34
    :cond_e
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result p1

    .line 35
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    sub-int/2addr p1, v10

    invoke-virtual {v1, p1}, Lp9/a;->D(I)V

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mGiftItemListener:Lu8/b;

    if-eqz p1, :cond_f

    .line 37
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 38
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->putType(ILandroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v2, "send_gift_click"

    invoke-virtual {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mGiftItemListener:Lu8/b;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget-boolean v8, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCurrentComboId()I

    move-result v9

    const/4 v10, 0x0

    move-object v3, p0

    invoke-interface/range {v2 .. v10}, Lu8/b;->onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    .line 41
    :cond_f
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->refreshDiamonds()V

    .line 42
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    if-ne p1, v0, :cond_13

    .line 43
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    goto :goto_4

    .line 44
    :cond_10
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, v10, :cond_11

    .line 45
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-instance v13, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$l;

    invoke-direct {v13, p0, v10, v6, v7}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;ILjava/util/List;I)V

    move-object v9, p0

    invoke-virtual/range {v8 .. v13}, Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V

    return v1

    .line 46
    :cond_11
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object p1

    .line 47
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v10

    invoke-virtual {v1, p1}, Lp9/a;->B(I)V

    .line 48
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mGiftItemListener:Lu8/b;

    if-eqz v2, :cond_12

    .line 49
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget-boolean v8, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCurrentComboId()I

    move-result v9

    const/4 v10, 0x0

    move-object v3, p0

    invoke-interface/range {v2 .. v10}, Lu8/b;->onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    .line 50
    :cond_12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->refreshDiamonds()V

    .line 51
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    if-ne p1, v0, :cond_13

    .line 52
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    :cond_13
    :goto_4
    return v11
.end method

.method private setGiftData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getIsToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getIsTokenShow()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->Y1(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->checkData()V

    :cond_4
    return-void
.end method

.method private setItemState(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->accountId:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userId:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userName:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setSelect(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showChargeDialog(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    const/16 v0, 0xb

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    const/16 v0, 0xa

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    const/16 v0, 0x8

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    const/4 v1, 0x2

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    const/4 v1, 0x1

    :goto_0
    if-nez p1, :cond_9

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_1

    .line 5
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->chargeListener:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;

    if-eqz p1, :cond_8

    .line 6
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;->a()V

    :cond_8
    :goto_1
    return-void

    .line 7
    :cond_9
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;

    invoke-direct {v3, p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;II)V

    const/4 v1, 0x0

    if-ne p1, v6, :cond_a

    const p1, 0x7f120828

    goto :goto_2

    :cond_a
    const p1, 0x7f12016a

    .line 8
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;ZZ)Lcom/guochao/faceshow/views/e;

    :cond_b
    :goto_3
    return-void
.end method

.method private showComboView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->getCurrentData()I

    move-result v2

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/gift/view/GiftComboView;->show(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILjava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->hideEveryThingExceptCombo()V

    :cond_1
    return-void
.end method

.method private showFirstRecharge(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeShowed:Z

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeActivity:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shouldShowFirstRecharge()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTheme:I

    const v0, 0x7f13000d

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeActivity:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeBottomText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->ivWeight:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeActivity:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    .line 15
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeActivity:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static showSecondGiftButton()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "510389"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static trackEvent(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isMVPGift()Z

    move-result p0

    const-string v0, "send_gift_4000"

    if-eqz p0, :cond_1

    .line 2
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p1, "5"

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p1, "3"

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p1, "2"

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 8
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p1, "1"

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftListFragment;->a2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 10
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p1, "6"

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_5
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p1, "0"

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSelectCollectionGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 8
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setIsCollect(I)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected buildSendUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getImg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->c:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->d:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->accountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getImg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->c:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->d:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public checkToItem(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->refreshDiamonds()V

    return-void
.end method

.method public collectionClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 1
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->Y1(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftViewPagerAdapter:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$q;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getFragmentAt(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->refreshLocalData(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Z)V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    const-string v2, "giftId"

    if-eqz v1, :cond_3

    const-string p1, "tokens/gift/collectGift"

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const p1, 0x7f12019d

    .line 13
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->addSelectCollectionGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 15
    instance-of p1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz p1, :cond_6

    .line 16
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->Q1(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isInCollectPager(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getLevelId()I

    move-result v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v3

    if-le v1, v3, :cond_5

    :cond_4
    const/16 v1, 0x8

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const-string p1, "tokens/gift/cacalCollectGift"

    .line 19
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const p1, 0x7f120153

    .line 20
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->removeSelectCollectionGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 22
    instance-of p1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    if-eqz p1, :cond_6

    .line 23
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftViewPagerFragment;->c2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public dismiss(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public fansRank(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mVideoId:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getCategoryItem(I)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->setGifList(Ljava/util/List;)V

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    return-object p1
.end method

.method public getCurrentItem()Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTheme()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTheme:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0125

    return v0
.end method

.method public getMyDiamonds()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->MY_WALLET_DATA:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$f;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-interface {v1, p0, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method public giftImageLocation(Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v2

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    mul-double v3, v3, v5

    double-to-int v3, v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v5, v0

    int-to-double v2, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v7

    sub-double/2addr v5, v2

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-double v2, v0

    sub-double/2addr v5, v2

    double-to-int v0, v5

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 5
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;->setLocation([I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->getCurrentData()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x5

    if-ge v4, v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;)V

    mul-int/lit8 v2, v4, 0x64

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animate(Lcom/guochao/faceshow/gift/view/GiftComboView;Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    :cond_1
    return-void
.end method

.method public gotoCharge(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    const/16 p1, 0xb

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    const/16 p1, 0xa

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    const/16 p1, 0x8

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    if-eqz v1, :cond_8

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    instance-of v2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v2, :cond_6

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object p1

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    if-eqz v0, :cond_7

    const-string v0, "1"

    goto :goto_1

    :cond_7
    const-string v0, "0"

    :goto_1
    const-string v1, "isToken"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v0, p1, v5}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    :goto_2
    return-void
.end method

.method public gotoLuckyDetail()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->newInstance(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "gift_detail"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Ly7/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ly7/g;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public handleEvent(Ly7/f;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public initAd(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/a;->y(Landroid/app/Activity;)V

    return-void
.end method

.method public initRecycleView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->llMultiPlayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public initSelectAll()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSendToAllUserGuidPop:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAllView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->showPopupIfNeed(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAllView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->topSend:Landroid/view/View;

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08046e

    goto :goto_0

    :cond_0
    const v1, 0x7f08046d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->gift_dialog:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getEnterType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    const v1, 0x7f0a04bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;-><init>(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->initAds()V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mRankList:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->multiPlayer:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAllView:Landroid/view/View;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->initSelectAll()V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->initRecycleView()V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->llMultiPlayer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAllView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v1, 0x4

    const/4 v4, 0x1

    if-ne v0, v1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v1, v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->myCollection:Landroid/widget/ImageView;

    const v1, 0x7f080317

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0106

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v5, 0x7f06009c

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->backpackTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v0, 0x7f0a032a

    .line 22
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0479

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v5, 0x7f06009e

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 25
    :cond_5
    :goto_3
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mRankList:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setCheckPopAnchorView(Landroid/view/View;)V

    .line 29
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getNumCheckData()Ljava/util/List;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setData(Ljava/util/List;)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->topSend:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setTopSend(Landroid/view/View;)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->topSend:Landroid/view/View;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showSecondGiftButton()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setOnMultiClickListener(Lcom/guochao/faceshow/gift/view/NumCheckSendView$h;)V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setOnCountChangedListener(Lcom/guochao/faceshow/gift/view/NumCheckSendView$g;)V

    .line 36
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->refreshDiamonds()V

    .line 37
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp9/a;->c(Lp9/a$e;)V

    .line 38
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->addLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)V

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->setComboListener(Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;)V

    .line 40
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showFirstRecharge(Z)V

    return-void
.end method

.method public loadData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->refreshDiamond()V

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "language"

    .line 5
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v3

    invoke-virtual {v3}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "typeArr"

    .line 6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$n;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return-void
.end method

.method protected notifySelectAllChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userInfoAdapter:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAllView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->ivUserInfo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->ivUserInfo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lu8/b;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lu8/b;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mGiftItemListener:Lu8/b;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lu8/b;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lu8/b;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mGiftItemListener:Lu8/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const v0, 0x7f13000d

    const-string v2, "theme"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTheme:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x4

    const-string v2, "type"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mVideoId:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "multi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->multiPlayer:Z

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->accountId:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "broadCastUserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->broadCastUserId:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->broadCaseUserName:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "avarUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->avarUrl:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userVipData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "interceptClick"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->interceptClick:Z

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->accountId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 17
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->accountId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setSelect(Z)V

    .line 19
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userId:Ljava/lang/String;

    .line 20
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userName:Ljava/lang/String;

    .line 21
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->avarUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setSelect(Z)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setSelect(Z)V

    .line 25
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userName:Ljava/lang/String;

    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userId:Ljava/lang/String;

    .line 27
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->avarUrl:Ljava/lang/String;

    .line 28
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 30
    :cond_3
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->broadCastUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setUserId(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->broadCaseUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setNickName(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->avarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setImg(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 35
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setSelect(Z)V

    .line 36
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setPosition(I)V

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->broadCaseUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userName:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->broadCastUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userId:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 41
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->removeUser()V

    .line 42
    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 43
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_6
    const/4 p1, -0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setParamsHeight(I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const p1, 0x7f13000d

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTheme:I

    if-lez p1, :cond_1

    const p1, 0x7f13012b

    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

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
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTheme:I

    if-lez p1, :cond_0

    .line 2
    new-instance p1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTheme:I

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

.method public onCrystalsChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->checkToItem(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSendToAllUserGuidPop:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->hidePop()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSendToAllUserGuidPop:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->cancelAll()V

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->r(Lp9/a$e;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->z()V

    :cond_0
    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTextViewDiamonds:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lp9/a;->C(IZ)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTextViewDiamonds:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result p1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0bfe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0f00e5

    goto :goto_0

    :cond_2
    const v0, 0x7f0f0664

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shouldShowFirstRecharge()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7
    :cond_4
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showFirstRecharge(Z)V

    :cond_5
    return-void
.end method

.method public onGiftChange(Ly7/p;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly7/p;->c()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ly7/p;->a()Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {v4}, Lcom/guochao/faceshow/gift/view/GiftComboView;->reset()V

    .line 5
    :cond_1
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 7
    invoke-virtual {p1}, Ly7/p;->b()I

    move-result p1

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v4, p1}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setCurrentData(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->myCollection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getIsCollect()I

    move-result v4

    if-ne v4, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getIsToken()Ljava/lang/String;

    move-result-object p1

    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->checkToItem(Z)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftHeader:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showFirstRecharge(Z)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->playLuckyGiftIcon(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftHeader:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showFirstRecharge(Z)V

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result p1

    const v4, 0x7f08041a

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->realContent:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 20
    :cond_5
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTheme:I

    const v5, 0x7f13000d

    if-eq p1, v5, :cond_7

    if-gez p1, :cond_6

    goto :goto_2

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->realContent:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 22
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->realContent:Landroid/view/View;

    const v4, 0x7f08041b

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    if-eqz p1, :cond_8

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->setCurrentSelected(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    .line 25
    :cond_8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 26
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeShowed:Z

    .line 27
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showFirstRecharge(Z)V

    .line 28
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeShowed:Z

    goto :goto_4

    .line 29
    :cond_9
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeShowed:Z

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showFirstRecharge(Z)V

    .line 30
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    .line 31
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/k;->subscribe()Lth/b;

    return-void

    .line 32
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setSendEnable(Z)V

    .line 33
    invoke-virtual {p1}, Ly7/p;->d()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->myCollection:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ly7/p;->d()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getIsCollect()I

    move-result v4

    if-ne v4, v3, :cond_b

    const/4 v2, 0x1

    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 35
    invoke-virtual {p1}, Ly7/p;->d()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 36
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    :cond_c
    return-void
.end method

.method public onViewClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->userName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->imUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshDiamond()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getMyDiamonds()V

    return-void
.end method

.method public refreshDiamonds()V
    .locals 4

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->f()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :cond_0
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v2

    invoke-virtual {v2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTextViewDiamonds:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 4
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0bfe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->isShuijing:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0f00e5

    goto :goto_1

    :cond_4
    const v1, 0x7f0f0664

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method public removeSelectCollectionGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->setIsCollect(I)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-nez v2, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public selectAll(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSendToAllUserGuidPop:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;->hidePop()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSendToAllUserGuidPop:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/SendToAllUserGuidPop;

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->setItemState(I)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->notifySelectAllChanged()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->reset()V

    return-void
.end method

.method public setOnClickChargeListener(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->chargeListener:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$o;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 3

    const v0, 0xf4240

    const-wide/16 v1, 0x3e8

    .line 1
    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->showTime:J

    return-void
.end method
