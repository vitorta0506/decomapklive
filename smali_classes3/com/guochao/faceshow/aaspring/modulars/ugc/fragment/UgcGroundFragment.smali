.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Laa/a;
.implements Laa/f;
.implements Lp7/f;
.implements Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;

.field private e:I

.field f:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private g:Z

.field h:Landroid/animation/ObjectAnimator;

.field i:Landroid/animation/ObjectAnimator;

.field j:Landroid/animation/ObjectAnimator;

.field lay_sendDynamic:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field m1v1Bg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDatingSquare:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFindYou:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGenderSelector:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewBackButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPeopleNearby:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPlanet:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mScan:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSearch:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSvgaImageViewV2:Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field sendDynamic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field sendTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ugcModuleTopLL:Landroid/widget/LinearLayout;
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->c:Ljava/util/List;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->g:Z

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->d2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Lte/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->c2(Lte/a;)V

    return-void
.end method

.method static synthetic R1(IJ)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e2(IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->g:Z

    return p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->f2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->g2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->b:Ljava/util/List;

    return-object p0
.end method

.method private Z1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->f:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a2()V
    .locals 2

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->o([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/w;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/w;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lvh/g;)Lth/b;

    return-void
.end method

.method private b2()V
    .locals 4

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/v;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mPeopleNearby:Landroidx/cardview/widget/CardView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mFindYou:Landroidx/cardview/widget/CardView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mScan:Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mSearch:Landroid/view/View;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mDatingSquare:Landroidx/cardview/widget/CardView;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mPlanet:Landroidx/cardview/widget/CardView;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->m1v1Bg:Landroid/widget/ImageView;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/q;->c(Lcom/guochao/faceshow/aaspring/views/q$a;[Landroid/view/View;)V

    return-void
.end method

.method private synthetic c2(Lte/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lte/a;->b:Z

    const-string v1, "PeopleNearbyActivity"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->m0(Landroid/app/Activity;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p1, Lte/a;->c:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied. More info should be provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PerMissionsUtils;->checkPermission(Landroid/content/Context;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic d2(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a012b

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a0510

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0a01

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_plant_click:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x3ea

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "friends_People_nearby_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "friends_meetme_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "friends_Dating_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PerMissionsUtils;->lacksPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->a2()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->m0(Landroid/app/Activity;)V

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 19
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/i;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 22
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->openFaceToFaceActivity(Landroid/content/Context;)V

    return-void

    .line 24
    :cond_6
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a028d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static e2(IJ)Ljava/lang/String;
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

.method private f2(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->g:Z

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->lay_sendDynamic:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v5, v5, v1

    int-to-float v1, v5

    aput v1, v4, v2

    const/4 v1, 0x0

    aput v1, v4, v0

    const-string v0, "translationX"

    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1f4

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void
.end method

.method private g2(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->g:Z

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->lay_sendDynamic:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v3, v3, v1

    int-to-float v1, v3

    aput v1, v2, v4

    const-string v1, "translationX"

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void
.end method

.method private h2(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SEND_DYNAMIC"

    invoke-virtual {v0, v1}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->sendTip:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->sendTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x41700000    # 15.0f
    .end array-data
.end method

.method private i2(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mGenderSelector:Landroid/widget/ImageView;

    const v0, 0x7f0f02df

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mGenderSelector:Landroid/widget/ImageView;

    const v0, 0x7f0f02e0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mGenderSelector:Landroid/widget/ImageView;

    const v0, 0x7f0f02e1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public Y1(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->F(IZ)V

    :cond_0
    return-void
.end method

.method public click(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0101

    if-eq v0, v1, :cond_2

    const p1, 0x7f0a0a58

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    if-eqz p1, :cond_3

    .line 3
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_SEND_DYNAMIC"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->sendTip:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->goPublish()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    invoke-virtual {v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e2(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;

    if-eqz v0, :cond_3

    .line 13
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public g0(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->F(IZ)V

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setIsFriendNew(I)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->z()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mGenderSelector:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01e0

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;->observeFeatures(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_gender_dy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    goto :goto_0

    .line 6
    :cond_1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    .line 7
    :goto_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i2(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->b:Ljava/util/List;

    const v1, 0x7f12039f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->b:Ljava/util/List;

    const v1, 0x7f120680

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->b:Ljava/util/List;

    const v1, 0x7f120958

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->c:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->c:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->b:Ljava/util/List;

    const v1, 0x7f12005c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->c:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "last_page_dy_v2"

    invoke-static {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Landroidx/fragment/app/FragmentManager;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;

    invoke-virtual {v1, v3}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    invoke-virtual {v1, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsFriendNew()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 21
    :cond_2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->Y1(Z)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_follow_click:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_latest_click:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_hot_click:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_nearby_click:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 28
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    if-eqz p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    invoke-virtual {p1, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->setOnSwipeBackListener(Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;)V

    .line 33
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->b2()V

    return-void
.end method

.method public j2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    :goto_0
    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    rem-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public k2(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0346

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0349

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0348

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0347

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    const p2, 0x7f0a028f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mPeopleNearby:Landroidx/cardview/widget/CardView;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    const p2, 0x7f0a028d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mDatingSquare:Landroidx/cardview/widget/CardView;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    const p2, 0x7f0a028e

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mFindYou:Landroidx/cardview/widget/CardView;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0290

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mPlanet:Landroidx/cardview/widget/CardView;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->ugcModuleTopLL:Landroid/widget/LinearLayout;

    const p2, 0x7f0a012b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->m1v1Bg:Landroid/widget/ImageView;

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->b2()V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "codedContent"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPersonalInformationScan()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ""

    .line 6
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "userId"

    .line 7
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->Z1()V

    return-void
.end method

.method public onBack()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mImageViewBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mImageViewBackButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->j:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method public onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsFriendNew()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->Y1(Z)V

    :cond_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    goto :goto_0

    :cond_0
    if-eq v1, v0, :cond_1

    .line 4
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    goto :goto_0

    .line 6
    :cond_2
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    .line 7
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->e:I

    rem-int/lit8 v0, v0, 0x3

    .line 8
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_filter_sex:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->i2(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_gender_dy_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$g;->a:Landroidx/fragment/app/Fragment;

    .line 13
    instance-of v3, v1, Laa/g;

    if-eqz v3, :cond_3

    .line 14
    check-cast v1, Laa/g;

    invoke-interface {v1, v0}, Laa/g;->onGenderChanged(I)V

    .line 15
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public reload()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

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
