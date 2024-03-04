.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lp7/f;
.implements Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lp9/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$h;,
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;
    }
.end annotation


# static fields
.field public static final o:Landroid/util/SparseIntArray;


# instance fields
.field private a:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;

.field private b:Z

.field private c:Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;

.field private d:I

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$h;

.field private l:Z

.field m:Landroid/animation/ObjectAnimator;

.field public mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field myRoomTips:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field myRoomsBtn:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field n:Landroid/view/View;

.field svgaImageViewV2:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->o:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x7

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    const/4 v2, 0x5

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->b:Z

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->e:Landroid/util/SparseArray;

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->h:Ljava/util/List;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->i:I

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->j:Ljava/util/List;

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->l:Z

    return-void
.end method

.method public static synthetic P1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->b2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->c2()V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->e2()V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->l:Z

    return p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->d:I

    return p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->b:Z

    return p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g2(I)V

    return-void
.end method

.method private Z1()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->a:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->loadMyRoomList(I)V

    return-void
.end method

.method private a2()Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->c:Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->c:Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->c:Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;

    return-object v0
.end method

.method private static synthetic b2(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showDialog(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    return-void
.end method

.method private c2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkDynamicLive(Z)V

    :cond_0
    return-void
.end method

.method private d2(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_OPEN_LIVE"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    const-string v2, "translationY"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41700000    # 15.0f
    .end array-data
.end method

.method private e2()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "live_voice_room_config"

    .line 2
    invoke-static {v1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v5, 0x6

    goto :goto_1

    :cond_2
    const/4 v5, 0x5

    :goto_1
    if-ne v5, v2, :cond_3

    return-void

    .line 5
    :cond_3
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->l:Z

    .line 6
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-direct {v2, v5, v6, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Z)V

    .line 7
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->E()V

    .line 8
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 9
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 10
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const-string v6, "Home_live_following_click"

    const-string v7, "Home_live_Explore_click"

    const-string v8, "Home_live_nearby_click"

    const-string v9, "Home_live_party_click"

    const-string v10, "Home_live_popular_click"

    const-string v11, "CLICK_ATTENTION"

    const-string v12, "CLICK_FIND"

    const-string v13, "CLICK_NEARBY"

    const-string v14, "CLICK_PARTY"

    const/4 v15, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    const/4 v12, 0x5

    invoke-virtual {v1, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v5, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {v5, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "Home_live_voice_room_click"

    const/4 v4, 0x2

    .line 17
    invoke-virtual {v5, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {v5, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {v5, v15, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    invoke-virtual {v5, v12, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    .line 21
    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v15, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v14, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v13, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v13, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    const/4 v13, 0x4

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v11, 0x0

    .line 25
    invoke-virtual {v5, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    invoke-virtual {v5, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    invoke-virtual {v5, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    invoke-virtual {v5, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {v5, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    :goto_2
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setId(I)V

    .line 31
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {v1, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 32
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private g2(I)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->b:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomsBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->svgaImageViewV2:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v2, 0x7f110042

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice_room_my_room_tips"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/session/model/UserSessionModel;

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomTips:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x433e0000    # 190.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomTips:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x431a0000    # 154.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x42cc0000    # 102.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomsBtn:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomTips:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public W1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->n:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0d9a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->n:Landroid/view/View;

    const v1, 0x7f0a0b47

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1209b0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->n:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->d2(Landroid/view/View;)V

    return-void
.end method

.method public X1()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getCurrent(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public Y1()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public f2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->n:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->n:Landroid/view/View;

    .line 4
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v1

    const-string v2, "KEY_OPEN_LIVE"

    invoke-virtual {v1, v2}, Lja/a;->e(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01a1

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a09bd

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    const-string v0, "view_pager"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    .line 3
    invoke-virtual {p1, p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c()Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->registerOnInviteStatusListener(Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;)V

    .line 5
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->onPageSelected(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->myRoomsBtn:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->e2()V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V

    const-string v1, "live_voice_room_config"

    invoke-static {p1, v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeatureOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result p1

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V

    const-string v0, "new_first_recharge_gift_config"

    invoke-static {p0, v0, p1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeatureOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected loadData()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->Z1()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "KEY_NOTIFICATION_STATE"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "module_notification"

    invoke-static {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class p3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/NotificationsDialogFragment;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->notice_permission_dialog:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xb2

    if-ne p1, p2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->notice_permission_change_open:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :cond_1
    :goto_0
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
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$h;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$h;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$h;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->a:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp9/a;->c(Lp9/a$e;)V

    return-void
.end method

.method public synthetic onCrystalsChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lp9/b;->a(Lp9/a$e;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->m:Landroid/animation/ObjectAnimator;

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c()Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->unregisterOnInviteStatusListener(Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;)V

    .line 6
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->r(Lp9/a$e;)V

    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeManager;->shouldShowFirstRecharge()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/l;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->sShowedLiveTips:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_LIVE_CLICK_TIPS"

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    :cond_2
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "Home_live_voice_room_click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "Home_live_popular_click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "Home_live_following_click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "Home_live_Explore_click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "Home_live_nearby_click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "Home_live_party_click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v7, :cond_6

    if-eq v1, v8, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_8

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    goto :goto_2

    :cond_5
    const/4 v3, 0x3

    goto :goto_2

    :cond_6
    const/4 v3, 0x2

    goto :goto_2

    :cond_7
    const/4 v3, 0x1

    .line 8
    :cond_8
    :goto_2
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_tab_click:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_9
    if-ne p1, v8, :cond_a

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->Z1()V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v0, :cond_a

    .line 13
    invoke-virtual {v0, v8, v4}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->F(IZ)V

    .line 14
    :cond_a
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g2(I)V

    .line 15
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->d:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d52bca4 -> :sswitch_5
        -0x57687f05 -> :sswitch_4
        -0x50604a17 -> :sswitch_3
        0x1ac67047 -> :sswitch_2
        0x1de7b1cf -> :sswitch_1
        0x53b8f204 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->showStatusBar(Landroid/app/Activity;Z)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->c2()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->Z1()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->a2()Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;->getNewInvite()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->a:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;->getMyRoomList()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/k;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public q1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->g:Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewPagerUtils;->getCurrent(Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lp7/f;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lp7/f;

    invoke-interface {v0}, Lp7/f;->reload()V

    :cond_0
    return-void
.end method
