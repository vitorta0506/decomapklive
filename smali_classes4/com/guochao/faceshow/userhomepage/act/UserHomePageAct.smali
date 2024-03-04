.class public final Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/user_home_page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00b4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u0082\u00012\u00020\u00012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0002:\u0002\u0082\u0001B\t\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J \u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0008\u0010\u0016\u001a\u00020\u0006H\u0002J\u0008\u0010\u0017\u001a\u00020\u0006H\u0002J\u0012\u0010\u001a\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0003J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0012\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0008\u0010#\u001a\u00020\u0006H\u0002J\u0008\u0010$\u001a\u00020\u0006H\u0002J\u0008\u0010%\u001a\u00020\u0012H\u0016J\u0008\u0010\'\u001a\u00020&H\u0016J\u0008\u0010(\u001a\u00020\u0006H\u0016J\u000e\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0004J\u0006\u0010*\u001a\u00020\u0006J\u0008\u0010+\u001a\u00020\u0006H\u0014J\"\u00101\u001a\u00020\u00062\u0008\u0010-\u001a\u0004\u0018\u00010,2\u0008\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u00020\u0008J\u0008\u00102\u001a\u00020\u0006H\u0016J \u00104\u001a\u00020\u00062\u0016\u00103\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003H\u0016J\"\u00108\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00122\u0006\u00106\u001a\u00020\u00122\u0008\u0010\u001c\u001a\u0004\u0018\u000107H\u0014J\u0008\u00109\u001a\u00020\u0006H\u0016J\u0008\u0010:\u001a\u00020\u0006H\u0014R$\u0010;\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\"\u0010A\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010G\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001d\u0010O\u001a\u0008\u0012\u0004\u0012\u00020N0M8\u0006\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR$\u0010W\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008\"\u0010Y\"\u0004\u0008Z\u0010[R$\u0010]\u001a\u0004\u0018\u00010\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR$\u0010d\u001a\u0004\u0018\u00010c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010g\"\u0004\u0008h\u0010iR$\u0010j\u001a\u0004\u0018\u00010\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010^\u001a\u0004\u0008k\u0010`\"\u0004\u0008l\u0010bR$\u0010m\u001a\u0004\u0018\u00010c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008m\u0010e\u001a\u0004\u0008n\u0010g\"\u0004\u0008o\u0010iR$\u0010p\u001a\u0004\u0018\u00010c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010e\u001a\u0004\u0008q\u0010g\"\u0004\u0008r\u0010iR\u0017\u0010t\u001a\u00020s8\u0006\u00a2\u0006\u000c\n\u0004\u0008t\u0010u\u001a\u0004\u0008v\u0010wR\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010xR$\u0010z\u001a\u0004\u0018\u00010y8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007f\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;",
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
        "Landroidx/lifecycle/Observer;",
        "",
        "",
        "",
        "",
        "checkUserHomeSourceTrack",
        "",
        "isWhiteStatus",
        "slideTop",
        "",
        "alpha",
        "setTitleBarChanged",
        "initFragment",
        "initViewPager",
        "Lcom/google/android/material/appbar/AppBarLayout$Behavior;",
        "behavior",
        "",
        "start",
        "end",
        "animToTab",
        "initBottomLay",
        "refreshFocusLay",
        "Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;",
        "bean",
        "setVoiceData",
        "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;",
        "data",
        "setHeaderData",
        "startBanner",
        "Lcom/youth/banner/Banner;",
        "banner",
        "Lcom/youth/banner/view/BannerViewPager;",
        "getViewPager",
        "showUserNotExist",
        "showFreezePage",
        "getLayoutId",
        "Lcom/guochao/faceshow/aaspring/base/activity/a;",
        "getActivityConfig",
        "initView",
        "userId",
        "resetStatusBarColor",
        "onRestart",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;",
        "holder",
        "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
        "dynamicBean",
        "focused",
        "onFocusStateChanged",
        "loadData",
        "t",
        "onChanged",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "onActivityResult",
        "finish",
        "onDestroy",
        "mUserId",
        "Ljava/lang/String;",
        "getMUserId",
        "()Ljava/lang/String;",
        "setMUserId",
        "(Ljava/lang/String;)V",
        "mType",
        "I",
        "getMType",
        "()I",
        "setMType",
        "(I)V",
        "mPosition",
        "Ljava/lang/Integer;",
        "getMPosition",
        "()Ljava/lang/Integer;",
        "setMPosition",
        "(Ljava/lang/Integer;)V",
        "",
        "Landroidx/fragment/app/Fragment;",
        "mFragments",
        "Ljava/util/List;",
        "getMFragments",
        "()Ljava/util/List;",
        "Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;",
        "mUserPhotoZoomHelper",
        "Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;",
        "Landroidx/viewpager/widget/ViewPager;",
        "viewPager",
        "Landroidx/viewpager/widget/ViewPager;",
        "()Landroidx/viewpager/widget/ViewPager;",
        "setViewPager",
        "(Landroidx/viewpager/widget/ViewPager;)V",
        "Landroid/widget/TextView;",
        "focusLay",
        "Landroid/widget/TextView;",
        "getFocusLay",
        "()Landroid/widget/TextView;",
        "setFocusLay",
        "(Landroid/widget/TextView;)V",
        "Landroid/view/View;",
        "devView",
        "Landroid/view/View;",
        "getDevView",
        "()Landroid/view/View;",
        "setDevView",
        "(Landroid/view/View;)V",
        "chatLay",
        "getChatLay",
        "setChatLay",
        "leftBack",
        "getLeftBack",
        "setLeftBack",
        "ivMore",
        "getIvMore",
        "setIvMore",
        "Lcom/guochao/faceshow/userhomepage/UserHomePageModel;",
        "viewModel",
        "Lcom/guochao/faceshow/userhomepage/UserHomePageModel;",
        "getViewModel",
        "()Lcom/guochao/faceshow/userhomepage/UserHomePageModel;",
        "Z",
        "Ly0/c;",
        "skeletonScreen",
        "Ly0/c;",
        "getSkeletonScreen",
        "()Ly0/c;",
        "setSkeletonScreen",
        "(Ly0/c;)V",
        "<init>",
        "()V",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_COMMON:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final FROM_LIVE_ROOM:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final REPORT_REQUEST_CODE:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_OTHER:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final USER_SELF:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static imgUrl:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private chatLay:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private devView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private focusLay:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isWhiteStatus:Z

.field private ivMore:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private leftBack:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPosition:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mType:I

.field private mUserId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mUserPhotoZoomHelper:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private skeletonScreen:Ly0/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    const/16 v0, 0x79

    .line 1
    sput v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->REPORT_REQUEST_CODE:I

    const/4 v0, 0x1

    .line 2
    sput v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->USER_SELF:I

    const/4 v1, 0x2

    .line 3
    sput v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->USER_OTHER:I

    .line 4
    sput v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->FROM_LIVE_ROOM:I

    const-string v0, "UserHomePageAct"

    .line 5
    sput-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mFragments:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->isWhiteStatus:Z

    return-void
.end method

.method public static synthetic A0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-14$lambda-13$lambda-12$lambda-11(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getViewPager(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->getViewPager(Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;

    move-result-object p0

    return-object p0
.end method

.method private final animToTab(Lcom/google/android/material/appbar/AppBarLayout$Behavior;II)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-4(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method private final checkUserHomeSourceTrack()V
    .locals 11

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    .line 7
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivityStack()Ljava/util/Stack;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 9
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 10
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_9

    :goto_0
    add-int/lit8 v9, v8, -0x1

    .line 11
    invoke-virtual {v7, v8}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 12
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 13
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 15
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 17
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 19
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 21
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 23
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 25
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_6
    instance-of v10, v8, Lcom/guochao/faceshow/activity/MainActivity;

    if-eqz v10, :cond_7

    .line 27
    check-cast v8, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v8}, Lcom/guochao/faceshow/activity/MainActivity;->k1()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 28
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    if-gez v9, :cond_8

    goto :goto_1

    :cond_8
    move v8, v9

    goto/16 :goto_0

    :cond_9
    :goto_1
    return-void
.end method

.method public static synthetic d0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->startBanner$lambda-47(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->startBanner$lambda-44(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/google/android/material/appbar/AppBarLayout;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-18(Lcom/google/android/material/appbar/AppBarLayout;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method private final getViewPager(Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;
    .locals 2

    .line 2
    :try_start_0
    const-class v0, Lcom/youth/banner/Banner;

    const-string/jumbo v1, "viewPager"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    instance-of v0, p1, Lcom/youth/banner/view/BannerViewPager;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lcom/youth/banner/view/BannerViewPager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->setHeaderData$lambda-39$lambda-38(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method private final initBottomLay()V
    .locals 2

    const v0, 0x7f0a02b9

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->devView:Landroid/view/View;

    const v0, 0x7f0a0c8a

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->focusLay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/userhomepage/act/c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/userhomepage/act/c;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0c59

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/guochao/faceshow/userhomepage/act/r;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/userhomepage/act/r;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final initBottomLay$lambda-27(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    const-string v0, "8485396"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;->Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity$Companion;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity$Companion;->start(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    if-lez p1, :cond_2

    .line 6
    new-instance p1, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/guochao/faceshow/userhomepage/act/h;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/userhomepage/act/h;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ZLcom/guochao/faceshow/views/e$a;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v1, 0x7f060071

    .line 8
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->d(I)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v1, 0x7f060072

    .line 11
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->m(I)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const v0, 0x7f1203a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->focus(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final initBottomLay$lambda-27$lambda-26$lambda-25(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/app/Dialog;Z)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {p2, p0, v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->deleteFocus(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final initBottomLay$lambda-29(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "Source"

    const-string/jumbo v1, "user_profile"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->nickName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-static {p0, p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "tokens/im/sendMsg/v2/checkStatus"

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    const-string v2, "accountId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    new-instance v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;

    invoke-direct {v1, p1, p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;-><init>(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    return-void
.end method

.method private final initFragment()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mFragments:Ljava/util/List;

    sget-object v1, Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment$Companion;->getInstance(Ljava/lang/String;)Lcom/guochao/faceshow/userhomepage/act/UserDynamicFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mFragments:Ljava/util/List;

    sget-object v1, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$Companion;

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment$Companion;->getInstance(Ljava/lang/String;)Lcom/guochao/faceshow/userhomepage/act/UserVideoFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mFragments:Ljava/util/List;

    sget-object v1, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;->getInstance(Ljava/lang/String;)Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final initView$lambda-1$lambda-0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static final initView$lambda-14$lambda-13(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    const-class v0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    .line 4
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0405

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 10
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0a0c8a

    .line 11
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 12
    iget-object v5, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v5}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v5, v5, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-lt v5, v1, :cond_2

    const v1, 0x7f12000c

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f120684

    .line 14
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_1
    new-instance v1, Lcom/guochao/faceshow/userhomepage/act/e;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/userhomepage/act/e;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0c51

    .line 16
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f1200c6

    .line 17
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v4, Lcom/guochao/faceshow/userhomepage/act/d;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/userhomepage/act/d;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0ce9

    .line 19
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 20
    new-instance v4, Lcom/guochao/faceshow/userhomepage/act/f;

    invoke-direct {v4, p0, v0}, Lcom/guochao/faceshow/userhomepage/act/f;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 22
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x800033

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v3, p0

    .line 24
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    :cond_3
    const v1, 0x800035

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v3, p0

    .line 26
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_2
    return-void
.end method

.method private static final initView$lambda-14$lambda-13$lambda-10$lambda-9(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->PULL_BLACK:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    const-string v1, "account"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "reportType"

    const-string v1, "4"

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->finish()V

    return-void
.end method

.method private static final initView$lambda-14$lambda-13$lambda-12$lambda-11(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$pop"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    const-string v0, "5"

    .line 2
    invoke-static {p0, p2, p2, v0}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private static final initView$lambda-14$lambda-13$lambda-8$lambda-7(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$pop"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {p2}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object p2

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {p2, p0, v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->deleteFocus(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {p2, p0, v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->focus(Landroid/app/Activity;Ljava/lang/String;)V

    .line 4
    :goto_1
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private static final initView$lambda-16(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->finish()V

    return-void
.end method

.method private static final initView$lambda-18(Lcom/google/android/material/appbar/AppBarLayout;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr p2, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    sub-int/2addr p2, v0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v0

    const/4 v1, 0x2

    .line 4
    div-int/2addr v0, v1

    add-int v2, p3, v0

    if-gtz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr p2, p3

    if-gtz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 6
    :goto_2
    invoke-direct {p1, v2, v3, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->setTitleBarChanged(ZZF)V

    .line 7
    iget-object p2, p1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mPosition:Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-lez p2, :cond_4

    new-array p2, v1, [I

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    const p2, 0x7f0a0101

    .line 9
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-ne p2, p0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    .line 11
    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/guochao/faceshow/mine/view/MyFollowActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final initView$lambda-4(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/guochao/faceshow/mine/view/MyFansActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final initView$lambda-6$lambda-5(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    const-class v0, Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    .line 3
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final initViewPager()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0b26

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    .line 5
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->px2dip(F)I

    move-result v1

    int-to-float v1, v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setIndicatorWidth(F)V

    const v1, 0x7f0a0e05

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0b20

    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    new-instance v3, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initViewPager$1;

    invoke-direct {v3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initViewPager$1;-><init>()V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initViewPager$2;

    invoke-direct {v4, p0, v3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initViewPager$2;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_3
    const v0, 0x7f0a00b9

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_f

    const-string v1, "findViewById<AppBarLayout>(R.id.appbar_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 18
    instance-of v3, v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v3, :cond_f

    .line 19
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->animToTab(Lcom/google/android/material/appbar/AppBarLayout$Behavior;II)V

    goto :goto_7

    .line 20
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->friendRings:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_7

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->shortVideos:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_d

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_7

    .line 24
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_f
    :goto_7
    const v0, 0x7f0a0dc4

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic k0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-1$lambda-0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->setVoiceData$lambda-36$lambda-35$lambda-34(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-16(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-6$lambda-5(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/app/Dialog;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initBottomLay$lambda-27$lambda-26$lambda-25(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static synthetic p0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initBottomLay$lambda-29(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-14$lambda-13(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-3(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method private final refreshFocusLay()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    iget v0, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_b

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0603ce

    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    const/high16 v1, 0x41b00000    # 22.0f

    if-nez v0, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v3

    :goto_3
    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_6

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_6
    if-nez v3, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 12
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 13
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->focusLay:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_5
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->devView:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :goto_6
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-nez v0, :cond_a

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 16
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    const-string v1, "#6365FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const v1, 0x7f08014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_7

    :cond_e
    move-object v0, v3

    :goto_7
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_8

    :cond_f
    move-object v0, v3

    :goto_8
    const/4 v1, 0x0

    if-nez v0, :cond_10

    goto :goto_9

    .line 19
    :cond_10
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    .line 20
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 21
    :goto_9
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_a

    :cond_11
    move-object v0, v3

    :goto_a
    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_12

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_12
    if-nez v3, :cond_13

    goto :goto_b

    .line 22
    :cond_13
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 23
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 24
    :goto_b
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->focusLay:Landroid/widget/TextView;

    if-nez v0, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_c
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->devView:Landroid/view/View;

    if-nez v0, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :goto_d
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    if-nez v0, :cond_16

    goto :goto_e

    :cond_16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_17
    :goto_e
    return-void
.end method

.method public static synthetic s0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initBottomLay$lambda-27(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method private final setHeaderData(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    const-string v2, "data.userId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getVoiceInfo(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    const v0, 0x7f0a06b5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a06b6

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v5, "findViewById<ImageView>(R.id.living_status)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget v5, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isLive:I

    if-ne v5, v4, :cond_1

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 6
    :cond_1
    iget v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isLive:I

    const/16 v2, 0x8

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance v1, Lcom/guochao/faceshow/userhomepage/act/b;

    invoke-direct {v1, p1, p0}, Lcom/guochao/faceshow/userhomepage/act/b;-><init>(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0dc5

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0da0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0da2

    .line 11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    const v6, 0x7f0a0da1

    .line 13
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v8, Lcom/guochao/faceshow/userhomepage/act/k;

    invoke-direct {v8, p0, p1, v1, v0}, Lcom/guochao/faceshow/userhomepage/act/k;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->getOnlineData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    const v1, 0x7f0a0dc3

    .line 15
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_4

    move-object v6, v9

    goto :goto_2

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u00b7 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v6, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v8

    iget-object v8, v8, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x8

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getDistance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getDistance()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v6, "(%s)"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "format(format, *args)"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    const v1, 0x7f0a0d8c

    .line 20
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->getOnlineData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getCountry()Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 25
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    const v0, 0x7f0a0d86

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p1, v4}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    const v0, 0x7f0a0d88

    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 28
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;ZZZZ)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    const v0, 0x7f0a0dac

    .line 30
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0db0

    .line 31
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0da9

    .line 32
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0dbb

    .line 33
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    iget v4, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->attentionNum:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->fensiNum:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->giftDiamondNum:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->sendGiftDiamondNum:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setHeaderData$lambda-39$lambda-38(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 4

    const-string p2, "$data"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->liveData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;

    const-string v0, "data.liveData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f120516

    const v1, 0x7f1206a8

    const v2, 0x7f120910

    .line 2
    invoke-static {v0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLiveState(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 4
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setGroupId(Ljava/lang/String;)V

    .line 5
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->IM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setRoomID(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserId(Ljava/lang/String;)V

    .line 7
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->nick_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setNickName(Ljava/lang/String;)V

    .line 8
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->accelerateRtmp_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->accelerateURL:Ljava/lang/String;

    .line 9
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->flv_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setFlvUrl(Ljava/lang/String;)V

    .line 10
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->stream_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStream_id(Ljava/lang/String;)V

    .line 11
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->info_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setInfoName(Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->live_id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 13
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;->live_img:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->smallImg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 15
    iget p0, p1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mType:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->finish()V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static final setHeaderData$lambda-41(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0da1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1, p1}, Landroid/view/ViewGroup;->measure(II)V

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v0

    const/high16 v1, 0x42d20000    # 105.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    if-lt p2, v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    invoke-virtual {p3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final setTitleBarChanged(ZZF)V
    .locals 6

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->isWhiteStatus:Z

    const/4 p2, 0x0

    const v0, 0x7f0a0130

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p3, p2

    if-lez v2, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f08014e

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    cmpg-float p2, p3, p2

    if-gtz p2, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f08014d

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    const p2, 0x7f0a04c5

    .line 6
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    if-lez v2, :cond_2

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 9
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->leftBack:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    const v3, 0x7f0603ce

    const v4, 0x7f060033

    if-nez p1, :cond_4

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    const v5, 0x7f0603ce

    goto :goto_3

    :cond_4
    :goto_2
    const v5, 0x7f060033

    :goto_3
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->ivMore:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    if-nez p1, :cond_6

    if-lez v2, :cond_5

    goto :goto_4

    :cond_5
    const v0, 0x7f0603ce

    goto :goto_5

    :cond_6
    :goto_4
    const v0, 0x7f060033

    :goto_5
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const p2, 0x7f0a0315

    .line 11
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_7

    if-lez v2, :cond_8

    :cond_7
    const v3, 0x7f060033

    .line 12
    :cond_8
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-lez v2, :cond_b

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->leftBack:Landroid/view/View;

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 15
    :goto_6
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->ivMore:Landroid/view/View;

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 16
    :goto_7
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_a

    .line 17
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->leftBack:Landroid/view/View;

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 18
    :goto_8
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->ivMore:Landroid/view/View;

    if-nez p1, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 19
    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 20
    :goto_a
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p3

    iget-object p3, p3, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_e

    .line 21
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const p1, 0x7f0a063f

    .line 22
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private final setVoiceData(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;)V
    .locals 10

    if-eqz p1, :cond_e

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isLive:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, ""

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineImGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getImGroupId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getOnlineStatus()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    const v0, 0x7f0a0340

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f0a0e2a

    .line 7
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v5, 0x7f110011

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 8
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/guochao/faceshow/userhomepage/act/m;

    invoke-direct {v7, p1, p0}, Lcom/guochao/faceshow/userhomepage/act/m;-><init>(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getImGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x7f0a0e22

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/guochao/faceshow/userhomepage/act/l;

    invoke-direct {v7, p1, p0}, Lcom/guochao/faceshow/userhomepage/act/l;-><init>(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    const v0, 0x7f0a0e25

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0e2d

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f0089

    const/16 v5, 0x8

    .line 16
    invoke-static {v0, v3, v4, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    const v0, 0x7f0a03f4

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v3, 0x7f0a0a39

    .line 18
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v6, 0x7f0a0b93

    .line 19
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 20
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getMicroList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_d

    const/4 v8, 0x0

    if-eq v7, v1, :cond_b

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    const/4 v5, 0x3

    if-eq v7, v5, :cond_4

    goto/16 :goto_5

    .line 21
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getMicroList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;->getImg()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v8

    .line 25
    :goto_2
    invoke-static {v0, v2, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 26
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getMicroList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;->getImg()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v8

    .line 27
    :goto_3
    invoke-static {v3, v0, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 28
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getMicroList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;->getImg()Ljava/lang/String;

    move-result-object v8

    .line 29
    :cond_7
    invoke-static {v6, v8, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_5

    .line 30
    :cond_8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getMicroList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;->getImg()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_9
    move-object v2, v8

    .line 34
    :goto_4
    invoke-static {v0, v2, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 35
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getMicroList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;->getImg()Ljava/lang/String;

    move-result-object v8

    .line 36
    :cond_a
    invoke-static {v3, v8, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_5

    .line 37
    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getMicroList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;->getImg()Ljava/lang/String;

    move-result-object v8

    .line 41
    :cond_c
    invoke-static {v0, v8, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_5

    .line 42
    :cond_d
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method private static final setVoiceData$lambda-36$lambda-33$lambda-32(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 44

    move-object/from16 v0, p1

    const-string/jumbo v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v15, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-object v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v43, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, -0x1

    const/16 v41, 0x1

    const/16 v42, 0x0

    invoke-direct/range {v2 .. v42}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineImGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getRoomId()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineRoomId()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v43

    .line 4
    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoomId(Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineImGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserId()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineRoomId()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setUserId(Ljava/lang/String;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setId(I)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineImGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getRoomId()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineRoomId()I

    move-result v2

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setChatGroupId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2, v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method

.method private static final setVoiceData$lambda-36$lambda-35$lambda-34(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 44

    move-object/from16 v0, p1

    const-string/jumbo v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v15, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-object v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v43, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, -0x1

    const/16 v41, 0x1

    const/16 v42, 0x0

    invoke-direct/range {v2 .. v42}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getRoomId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v43

    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoomId(Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setId(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getImGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setChatGroupId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v2, v1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method

.method private final showFreezePage()V
    .locals 6

    const v0, 0x7f0a0452

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->statuesV2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x4

    const v3, 0x7f0f008f

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 4
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    const v1, 0x7f1209bb

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_2
    :goto_1
    const/4 v2, -0x3

    if-nez v1, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 7
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    const v1, 0x7f120466

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_4
    :goto_2
    const/4 v2, -0x1

    const v3, 0x7f120098

    const v4, 0x7f0f00d0

    if-nez v1, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_6

    .line 10
    invoke-static {v0, v4}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    .line 11
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    goto :goto_4

    .line 12
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_8

    .line 13
    invoke-static {v0, v4}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    .line 14
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_8
    :goto_4
    const/4 v2, 0x2

    const v3, 0x7f0f0068

    if-nez v1, :cond_9

    goto :goto_5

    .line 15
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_a

    .line 16
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    const v1, 0x7f120463

    .line 17
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    :goto_5
    const/4 v2, 0x3

    const v4, 0x7f120464

    if-nez v1, :cond_b

    goto :goto_6

    .line 18
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_c

    .line 19
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    .line 20
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v2, 0x4

    if-nez v1, :cond_d

    goto :goto_7

    .line 21
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_e

    .line 22
    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    .line 23
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_7
    const v0, 0x7f0a044b

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0156

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final showUserNotExist()V
    .locals 2

    const v0, 0x7f0a0452

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120982

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0f031b

    .line 3
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableTop(Landroid/widget/TextView;I)V

    const v0, 0x7f0a044b

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final start(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public static final start(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/app/Activity;Ljava/lang/String;II)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final startBanner(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V
    .locals 6

    const v0, 0x7f0a00f7

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0887

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youth/banner/Banner;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$startBanner$1;

    invoke-direct {v3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$startBanner$1;-><init>()V

    invoke-virtual {v1, v3}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3}, Lcom/youth/banner/Banner;->setBannerStyle(I)Lcom/youth/banner/Banner;

    .line 6
    new-instance v4, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$startBanner$2;

    invoke-direct {v4, v0, v2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$startBanner$2;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/youth/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 7
    new-instance v4, Lcom/guochao/faceshow/userhomepage/act/i;

    invoke-direct {v4, p0, v1, v2}, Lcom/guochao/faceshow/userhomepage/act/i;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    .line 8
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->covers:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    .line 10
    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v5, "imgUrl"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 12
    invoke-virtual {v1, v3}, Lcom/youth/banner/Banner;->isAutoPlay(Z)Lcom/youth/banner/Banner;

    .line 13
    invoke-virtual {v1}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 14
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 16
    new-instance p1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$startBanner$5;

    invoke-direct {p1, v2, v0, p0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$startBanner$5;-><init>(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v3, p1, :cond_3

    .line 18
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->imgUrl:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    new-instance p1, Lcom/guochao/faceshow/userhomepage/act/j;

    invoke-direct {p1, v0, v3}, Lcom/guochao/faceshow/userhomepage/act/j;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private static final startBanner$lambda-44(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/youth/banner/Banner;Ljava/util/List;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$urls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserPhotoZoomHelper:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserPhotoZoomHelper:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;

    .line 4
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;->bindData(Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserPhotoZoomHelper:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;->startZoom(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private static final startBanner$lambda-47(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public static final startByUserName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$Companion;->startByUserName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-14$lambda-13$lambda-10$lambda-9(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->setVoiceData$lambda-36$lambda-33$lambda-32(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView$lambda-14$lambda-13$lambda-8$lambda-7(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->setHeaderData$lambda-41(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    :cond_2
    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    :cond_3
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    const-string v1, "Builder(this).immersionStatusBar(true).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChatLay()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDevView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->devView:Landroid/view/View;

    return-object v0
.end method

.method public final getFocusLay()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->focusLay:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getIvMore()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->ivMore:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c2

    return v0
.end method

.method public final getLeftBack()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->leftBack:Landroid/view/View;

    return-object v0
.end method

.method public final getMFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mFragments:Ljava/util/List;

    return-object v0
.end method

.method public final getMPosition()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mType:I

    return v0
.end method

.method public final getMUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSkeletonScreen()Ly0/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->skeletonScreen:Ly0/c;

    return-object v0
.end method

.method public final getViewModel()Lcom/guochao/faceshow/userhomepage/UserHomePageModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    return-object v0
.end method

.method public final getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public initView()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->checkUserHomeSourceTrack()V

    const v0, 0x7f0a032c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ly0/a;->a(Landroid/view/View;)Ly0/c$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ly0/c$b;->h(Z)Ly0/c$b;

    move-result-object v0

    const v2, 0x7f0d02c3

    .line 4
    invoke-virtual {v0, v2}, Ly0/c$b;->g(I)Ly0/c$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ly0/c$b;->i()Ly0/c;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->skeletonScreen:Ly0/c;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "userName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 9
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "imgUrl"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    sput-object v4, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->imgUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput v4, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mType:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "position"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    iput-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mPosition:Ljava/lang/Integer;

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v1, p0, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const v1, 0x7f0a063f

    .line 13
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    new-instance v2, Lcom/guochao/faceshow/userhomepage/act/o;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/userhomepage/act/o;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v1

    .line 16
    :cond_5
    iput-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->leftBack:Landroid/view/View;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView(Ljava/lang/String;)V

    goto :goto_5

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getUserId(Ljava/lang/String;)V

    :cond_7
    :goto_5
    const v0, 0x7f0a0dab

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v0, "findViewById<View>(R.id.user_info_follow_ly)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/guochao/faceshow/userhomepage/act/t;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/userhomepage/act/t;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    const v0, 0x7f0a0da8

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v0, "findViewById<View>(R.id.user_info_fans_ly)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/faceshow/userhomepage/act/n;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/userhomepage/act/n;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final initView(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0a0315

    .line 24
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    new-instance v2, Lcom/guochao/faceshow/userhomepage/act/q;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/userhomepage/act/q;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    const p1, 0x7f0a05bd

    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    new-instance v2, Lcom/guochao/faceshow/userhomepage/act/s;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/userhomepage/act/s;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->ivMore:Landroid/view/View;

    const p1, 0x7f0a0b20

    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 33
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    add-int/2addr v2, v4

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    add-int/2addr v2, v5

    .line 34
    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const p1, 0x7f0a04c5

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    neg-int v0, v0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 38
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const p1, 0x7f0a0156

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 41
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    const-string v2, "currentUser.userId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getUserBaseData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const p1, 0x7f0a0101

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/userhomepage/act/p;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/userhomepage/act/p;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00b9

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 45
    new-instance v0, Lcom/guochao/faceshow/userhomepage/act/g;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/userhomepage/act/g;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 46
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initBottomLay()V

    const p1, 0x7f0a0130

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x42a00000    # 80.0f

    .line 48
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    sget v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->REPORT_REQUEST_CODE:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo p1, "userId"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    const-wide/16 p2, 0x64

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p1

    .line 5
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$onActivityResult$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$onActivityResult$1;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V

    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->onChanged(Ljava/util/Map;)V

    return-void
.end method

.method public onChanged(Ljava/util/Map;)V
    .locals 5
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "likeOrSuperLike"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->refreshFocusLay()V

    goto :goto_0

    :sswitch_1
    const-string v2, "getUserId"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->showUserNotExist()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initView(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "focus"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iput v3, v1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    .line 12
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->refreshFocusLay()V

    goto :goto_0

    :sswitch_3
    const-string v2, "getUserBaseData"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->skeletonScreen:Ly0/c;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ly0/c;->c()V

    .line 15
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.UserPageBaseData"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->statuesV2:I

    if-eq v2, v3, :cond_7

    .line 16
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->showFreezePage()V

    return-void

    :cond_7
    const v2, 0x7f0a0259

    .line 17
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x7f0a0156

    .line 18
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 19
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->startBanner(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V

    .line 20
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->setHeaderData(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V

    .line 21
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->refreshFocusLay()V

    .line 22
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initFragment()V

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initViewPager()V

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "getVoiceInfo"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 25
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->setVoiceData(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "deleteFocus"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 27
    :cond_a
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    iput v2, v1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    .line 28
    :goto_3
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->refreshFocusLay()V

    goto/16 :goto_0

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x44404e13 -> :sswitch_5
        -0x3d54bdb6 -> :sswitch_4
        -0x33767e84 -> :sswitch_3
        0x5d154d8 -> :sswitch_2
        0x3342513c -> :sswitch_1
        0x654182f8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->unbind(Landroidx/lifecycle/Observer;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->skeletonScreen:Ly0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly0/c;->c()V

    :cond_0
    return-void
.end method

.method public final onFocusStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput p2, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    iput p2, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isTutual:I

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->refreshFocusLay()V

    return-void
.end method

.method protected onRestart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    const-string v3, "currentUser.userId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getUserBaseData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final resetStatusBarColor()V
    .locals 3

    iget-boolean v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->isWhiteStatus:Z

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->setTitleBarChanged(ZZF)V

    return-void
.end method

.method public final setChatLay(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->chatLay:Landroid/widget/TextView;

    return-void
.end method

.method public final setDevView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->devView:Landroid/view/View;

    return-void
.end method

.method public final setFocusLay(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->focusLay:Landroid/widget/TextView;

    return-void
.end method

.method public final setIvMore(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->ivMore:Landroid/view/View;

    return-void
.end method

.method public final setLeftBack(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->leftBack:Landroid/view/View;

    return-void
.end method

.method public final setMPosition(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mPosition:Ljava/lang/Integer;

    return-void
.end method

.method public final setMType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mType:I

    return-void
.end method

.method public final setMUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public final setSkeletonScreen(Ly0/c;)V
    .locals 0
    .param p1    # Ly0/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->skeletonScreen:Ly0/c;

    return-void
.end method

.method public final setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method
