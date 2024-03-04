.class public Lcom/guochao/faceshow/activity/MainActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;
.implements Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$e;


# static fields
.field public static w:Z = false

.field public static final x:[Ljava/lang/Class;


# instance fields
.field mTabs:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private o:J

.field p:[Landroid/view/View;

.field private final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/lang/Runnable;

.field private u:J

.field v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroidx/fragment/app/Fragment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/guochao/faceshow/activity/MainActivity;->x:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->o:J

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->q:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->r:I

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->s:Landroid/util/SparseArray;

    .line 6
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_home_tab_click:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->s:Landroid/util/SparseArray;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_ugc_tab_click:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->s:Landroid/util/SparseArray;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_im_tab_click:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/MainActivity;->v:Z

    return-void
.end method

.method static synthetic a1(Lcom/guochao/faceshow/activity/MainActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->F0(Z)V

    return-void
.end method

.method static synthetic b1(Lcom/guochao/faceshow/activity/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/MainActivity;->q1(I)V

    return-void
.end method

.method private d1(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    const-string v0, "tab_icon"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method private g1(Landroid/view/View;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    const-string v0, "lottie"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p1
.end method

.method private h1()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_6

    .line 1
    iget-object v2, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/activity/MainActivity;->g1(Landroid/view/View;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/guochao/faceshow/activity/MainActivity;->d1(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    new-instance v5, Lcom/guochao/faceshow/activity/MainActivity$a;

    invoke-direct {v5, p0, v2, v3}, Lcom/guochao/faceshow/activity/MainActivity$a;-><init>(Lcom/guochao/faceshow/activity/MainActivity;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->e(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    const-string v3, "tab_anim/bottom_index4/"

    .line 6
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const-string v3, "tab_anim/icon04_index.json"

    .line 7
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "tab_anim/bottom_index3/"

    .line 8
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const-string v3, "tab_anim/icon03_index.json"

    .line 9
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v3, "tab_anim/bottom_index2/"

    .line 10
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const-string v3, "tab_anim/icon02_index.json"

    .line 11
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v3, "tab_anim/bottom_index1/"

    .line 12
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const-string v3, "tab_anim/icon01_index.json"

    .line 13
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private o1(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_b

    .line 1
    iget-object v2, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/activity/MainActivity;->g1(Landroid/view/View;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/guochao/faceshow/activity/MainActivity;->d1(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_0

    goto :goto_5

    :cond_0
    if-eq v1, p1, :cond_1

    const v5, 0x7f0f04b2

    goto :goto_1

    :cond_1
    const v5, 0x7f0f04b1

    .line 3
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_2
    if-eq v1, p1, :cond_3

    const v5, 0x7f0f04af

    goto :goto_2

    :cond_3
    const v5, 0x7f0f04ae

    .line 4
    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_4
    if-eq v1, p1, :cond_5

    const v5, 0x7f0f04ac

    goto :goto_3

    :cond_5
    const v5, 0x7f0f04ab

    .line 5
    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_6
    if-eq v1, p1, :cond_7

    const v5, 0x7f0f04a9

    goto :goto_4

    :cond_7
    const v5, 0x7f0f04a8

    .line 6
    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    if-ne v1, p1, :cond_8

    if-eqz v2, :cond_a

    .line 7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_9

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    if-eqz v3, :cond_a

    .line 10
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    return-void
.end method

.method private q1(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->r:I

    const v1, 0x1020011

    if-ne v0, p1, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/guochao/faceshow/activity/MainActivity;->u:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/activity/MainActivity;->u:J

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lp7/f;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lp7/f;

    invoke-interface {p1}, Lp7/f;->reload()V

    :cond_1
    return-void

    .line 7
    :cond_2
    iput p1, p0, Lcom/guochao/faceshow/activity/MainActivity;->r:I

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->sShowedLiveTips:Z

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v2, "KEY_LIVE_CLICK_TIPS"

    invoke-virtual {v0, v2}, Lja/a;->e(Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AutoCleanManager;->cleanIfNeeded()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 15
    aget-object v3, v3, v2

    if-ne p1, v2, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/activity/MainActivity;->r1(I)V

    .line 17
    sget-object v0, Lcom/guochao/faceshow/activity/MainActivity;->x:[Ljava/lang/Class;

    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/guochao/faceshow/activity/MainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_7
    if-nez v3, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v3

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 23
    invoke-virtual {v5, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MainActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 25
    :cond_8
    invoke-virtual {v5, v3}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :goto_2
    if-nez p1, :cond_9

    .line 26
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MainActivity;->x1()V

    .line 27
    :cond_9
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/MainActivity;->o1(I)V

    .line 28
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method private x1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;->Q1(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->v:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addRewardDiamond(I)V
    .locals 2

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->f()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lp9/a;->B(I)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->c(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->r:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0074

    return v0
.end method

.method public gotoUgc()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24400000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/activity/MainActivity;->q1(I)V

    return-void
.end method

.method public i1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020011

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;-><init>()V

    const-string v2, "tim"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/activity/MainActivity;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/activity/MainActivity;->p:[Landroid/view/View;

    aget-object v2, v2, v1

    new-instance v3, Lcom/guochao/faceshow/activity/MainActivity$d;

    invoke-direct {v3, p0, v1}, Lcom/guochao/faceshow/activity/MainActivity$d;-><init>(Lcom/guochao/faceshow/activity/MainActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x7f0a073c

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/MainActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MainActivity$e;-><init>(Lcom/guochao/faceshow/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->mTabs:Landroid/view/ViewGroup;

    new-instance v1, Lcom/guochao/faceshow/activity/MainActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MainActivity$f;-><init>(Lcom/guochao/faceshow/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->checkHelloGift24HourGiftDialog(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public k1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020011

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->currentIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public m1(ILandroid/view/View;)V
    .locals 0

    const p2, 0x7f0a04e9

    if-ne p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->f2()V

    :cond_0
    return-void
.end method

.method public n(ILcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/MainActivity;->getCurrentIndex()I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->q:Ljava/util/HashMap;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020011

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;->onBack()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    new-instance v2, Ljava/io/File;

    const-string v3, "Music"

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v2}, Lcom/guochao/faceshow/utils/Tools;->deleteDirWihtFile(Ljava/io/File;)V

    .line 9
    iget-wide v2, p0, Lcom/guochao/faceshow/activity/MainActivity;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m:Z

    const/4 v0, 0x1

    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v1, 0x7f12075a

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->o:J

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->a()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->reset()V

    .line 4
    invoke-static {}, Lk8/a;->c()Lk8/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk8/a;->d(Landroid/content/Context;)V

    .line 5
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MainActivity;->h1()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "last_page"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/MainActivity;->q1(I)V

    .line 9
    sget-boolean p1, Lcom/guochao/faceshow/BaseAppContext;->isChange:Z

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/mine/view/SettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    sput-boolean v1, Lcom/guochao/faceshow/BaseAppContext;->isChange:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m:Z

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->p()V

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/MainActivity$b;-><init>(Lcom/guochao/faceshow/activity/MainActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/MainActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/MainActivity$c;-><init>(Lcom/guochao/faceshow/activity/MainActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lbb/a;->e()Lbb/a;

    move-result-object v0

    invoke-virtual {v0}, Lbb/a;->i()V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/EventMainActivityDestroy;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/EventMainActivityDestroy;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MainActivity;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->removeDisplayListener(Landroid/content/Context;)V

    return-void
.end method

.method public onHelloGiftEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Check_hello_gift"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->checkHelloGift24HourGiftDialog(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method

.method public onJumpEvent(Ly7/i;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly7/i;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1}, Ly7/i;->b()I

    move-result v1

    const-string v2, "last_page_home"

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Ly7/i;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/MainActivity;->q1(I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L4:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "from_float"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->L4:Z

    :cond_0
    return-void
.end method

.method public onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    return-void
.end method

.method public onShowReviewEvent(Ly7/q;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/activity/MainActivity;->r:I

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;->Q1(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/MainActivity;->v:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onUgcPublishEvent(Ly7/o;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly7/o;->a()Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ly7/o;->a()Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/activity/MainActivity;->q1(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MainActivity;->q:Ljava/util/HashMap;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->ugcEvent()V

    :cond_0
    return-void
.end method

.method public onVersionDismissEvent(Ly7/t;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/MainActivity;->y0()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;

    .line 3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/EmailRecallViewModel;->checkEmailRecall(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public r1(I)V
    .locals 1

    const-string v0, "last_page"

    invoke-static {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public sendLiveGift()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->showGiftDialog()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->P0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendLiveMsg()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->F5()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->P0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showRechargeDialog()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    :cond_0
    return-void
.end method

.method public t1(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/activity/MainActivity$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/MainActivity$g;-><init>(Lcom/guochao/faceshow/activity/MainActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method protected y0()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->M(Z)V

    return-void
.end method
