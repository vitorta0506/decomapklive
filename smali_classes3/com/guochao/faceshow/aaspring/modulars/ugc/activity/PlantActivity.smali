.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;,
        Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u00012\u00020\u0002:\u0002klB\u0007\u00a2\u0006\u0004\u0008i\u0010jJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002J\u0008\u0010\t\u001a\u00020\u0003H\u0002J\u0008\u0010\n\u001a\u00020\u0003H\u0002J\u0008\u0010\u000b\u001a\u00020\u0003H\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016J\u0008\u0010\u0011\u001a\u00020\u0005H\u0016J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0012\u0010\u0015\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001f\u001a\u0004\u0008%\u0010!\"\u0004\u0008&\u0010#R\"\u0010(\u001a\u00020\'8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u00106\u001a\u0002058\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R&\u0010=\u001a\u00060<R\u00020\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\"\u0010C\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\"\u0010J\u001a\u00020I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008J\u0010L\"\u0004\u0008M\u0010NR\"\u0010O\u001a\u00020I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010K\u001a\u0004\u0008O\u0010L\"\u0004\u0008P\u0010NR*\u0010S\u001a\n\u0012\u0004\u0012\u00020R\u0018\u00010Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\"\u0010Y\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010D\u001a\u0004\u0008Z\u0010F\"\u0004\u0008[\u0010HR(\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u00130Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010T\u001a\u0004\u0008]\u0010V\"\u0004\u0008^\u0010XR(\u0010`\u001a\u0008\u0018\u00010_R\u00020\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR(\u0010f\u001a\u0008\u0012\u0004\u0012\u00020R0Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010T\u001a\u0004\u0008g\u0010V\"\u0004\u0008h\u0010X\u00a8\u0006m"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;",
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "",
        "setLoadingView",
        "",
        "realGender",
        "refreshGenderIcon",
        "checkLocalData",
        "getPlanetCacheData",
        "getPlanetData",
        "showLoadingView",
        "dismissLoadingView",
        "toRandomChatActivity",
        "Lcom/guochao/faceshow/aaspring/base/activity/a;",
        "getActivityConfig",
        "initView",
        "getLayoutId",
        "loadData",
        "Landroid/view/View;",
        "p0",
        "onClick",
        "Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;",
        "planet",
        "Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;",
        "getPlanet",
        "()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;",
        "setPlanet",
        "(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)V",
        "Landroid/widget/TextView;",
        "randomChat",
        "Landroid/widget/TextView;",
        "getRandomChat",
        "()Landroid/widget/TextView;",
        "setRandomChat",
        "(Landroid/widget/TextView;)V",
        "tvSexTip",
        "getTvSexTip",
        "setTvSexTip",
        "Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;",
        "floatTitleBack",
        "Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;",
        "getFloatTitleBack",
        "()Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;",
        "setFloatTitleBack",
        "(Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;)V",
        "Landroid/widget/FrameLayout;",
        "flLoading",
        "Landroid/widget/FrameLayout;",
        "getFlLoading",
        "()Landroid/widget/FrameLayout;",
        "setFlLoading",
        "(Landroid/widget/FrameLayout;)V",
        "Lcom/guochao/faceshow/views/SvgaImageViewV2;",
        "loading",
        "Lcom/guochao/faceshow/views/SvgaImageViewV2;",
        "getLoading",
        "()Lcom/guochao/faceshow/views/SvgaImageViewV2;",
        "setLoading",
        "(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;",
        "mViewRunnable",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;",
        "getMViewRunnable",
        "()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;",
        "setMViewRunnable",
        "(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;)V",
        "plantSex",
        "I",
        "getPlantSex",
        "()I",
        "setPlantSex",
        "(I)V",
        "",
        "isCacheData",
        "Z",
        "()Z",
        "setCacheData",
        "(Z)V",
        "isBaseMatch",
        "setBaseMatch",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
        "homeUser",
        "Ljava/util/List;",
        "getHomeUser",
        "()Ljava/util/List;",
        "setHomeUser",
        "(Ljava/util/List;)V",
        "mCurrentIndex",
        "getMCurrentIndex",
        "setMCurrentIndex",
        "mViews",
        "getMViews",
        "setMViews",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;",
        "recommendPlanetAdapter",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;",
        "getRecommendPlanetAdapter",
        "()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;",
        "setRecommendPlanetAdapter",
        "(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;)V",
        "chatUserList",
        "getChatUserList",
        "setChatUserList",
        "<init>",
        "()V",
        "RecommendPlanetAdapter",
        "ViewRunnable",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private chatUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public flLoading:Landroid/widget/FrameLayout;

.field public floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

.field private homeUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isBaseMatch:Z

.field private isCacheData:Z

.field public loading:Lcom/guochao/faceshow/views/SvgaImageViewV2;

.field private mCurrentIndex:I

.field private mViewRunnable:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public planet:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

.field private plantSex:I

.field public randomChat:Landroid/widget/TextView;

.field private recommendPlanetAdapter:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public tvSexTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViewRunnable:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->plantSex:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViews:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$dismissLoadingView(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->dismissLoadingView()V

    return-void
.end method

.method public static final synthetic access$getPlanetData(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanetData()V

    return-void
.end method

.method public static final synthetic access$refreshGenderIcon(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->refreshGenderIcon(I)V

    return-void
.end method

.method public static synthetic b0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->initView$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method private final checkLocalData()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "key_plant_masked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module_planet"

    invoke-static {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/PlanetResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PlanetResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PlanetResult;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isBaseMatch:Z

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setLayout(Z)V

    .line 8
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mCurrentIndex:I

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isCacheData:Z

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViewRunnable:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/i;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setOnTagClickListener(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;)V

    .line 16
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v1, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanetData()V

    .line 18
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-nez v1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanetData()V

    :cond_5
    return-void
.end method

.method private static final checkLocalData$lambda-4$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$it2"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getNickName()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x63

    const/4 p4, 0x1

    invoke-static {p0, p2, p3, p1, p4}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->plant_avatar_click:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanetCacheData$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method private final dismissLoadingView()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getFlLoading()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->checkLocalData$lambda-4$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Ljava/util/List;Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void
.end method

.method private final getPlanetCacheData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setLayout(Z)V

    .line 4
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mCurrentIndex:I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViewRunnable:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setOnTagClickListener(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->checkLocalData()V

    :goto_0
    return-void
.end method

.method private static final getPlanetCacheData$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const/16 v0, 0x63

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getNickName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p3, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->plant_avatar_click:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    return-void
.end method

.method private final getPlanetData()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isCacheData:Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->showLoadingView()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget v1, v1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->plantSex:I

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->plantSex:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const-string v1, "api/token/social/recommend/recommendUserForXq"

    .line 6
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestKt;->requestOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->plantSex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sex"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/PlanetResult;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$getPlanetData$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method private static final initView$lambda-0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final refreshGenderIcon(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const v1, 0x7f12071c

    if-eq p1, v0, :cond_0

    const p1, 0x7f0f02e1

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getTvSexTip()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f02e0

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getTvSexTip()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0f02df

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getTvSexTip()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f12071d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final setLoadingView()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "resources.openRawResourc\u2026ase.R.raw.loading_global)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$setLoadingView$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$setLoadingView$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    const-string v3, "global_loading"

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private final showLoadingView()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getFlLoading()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private final toRandomChatActivity()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetUserIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetUserIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_1
    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetBaseMatchUser()Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetBaseMatchUser()Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    move-result-object v5

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x64

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v1, v5, v6, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "userId"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v5, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->planet_surprise_click:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 16
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isBaseMatch:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->setPlanetBaseMatchUser(Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;)V

    .line 18
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isBaseMatch:Z

    .line 19
    :cond_3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetUserIdList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method


# virtual methods
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

.method public final getChatUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    return-object v0
.end method

.method public final getFlLoading()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->flLoading:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "flLoading"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFloatTitleBack()Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "floatTitleBack"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHomeUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0094

    return v0
.end method

.method public final getLoading()Lcom/guochao/faceshow/views/SvgaImageViewV2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->loading:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "loading"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mCurrentIndex:I

    return v0
.end method

.method public final getMViewRunnable()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViewRunnable:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    return-object v0
.end method

.method public final getMViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViews:Ljava/util/List;

    return-object v0
.end method

.method public final getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->planet:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "planet"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPlantSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->plantSex:I

    return v0
.end method

.method public final getRandomChat()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->randomChat:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "randomChat"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRecommendPlanetAdapter()Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->recommendPlanetAdapter:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;

    return-object v0
.end method

.method public final getTvSexTip()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->tvSexTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tvSexTip"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    const v1, 0x7f12071a

    .line 2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->plant_page:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    const v1, 0x7f0a042c

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.float_title_back)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setFloatTitleBack(Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getFloatTitleBack()Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const v3, 0x7f06038c

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const v1, 0x7f0a089f

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.planet)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setPlanet(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)V

    const v1, 0x7f0a041b

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.fl_loading)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setFlLoading(Landroid/widget/FrameLayout;)V

    const v1, 0x7f0a070a

    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.loading)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setLoading(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V

    const v1, 0x7f0a091a

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.random_chat)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setRandomChat(Landroid/widget/TextView;)V

    const v1, 0x7f0a0cf8

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.tv_sex_tip)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setTvSexTip(Landroid/widget/TextView;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getRandomChat()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getFlLoading()Landroid/widget/FrameLayout;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/g;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/g;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->setLoadingView()V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanet()Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setRefreshRate(F)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_planet_sex_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    iget v3, v3, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v3, "module_notification"

    invoke-static {v1, v3, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->plantSex:I

    .line 16
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->refreshGenderIcon(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const v1, 0x7f080344

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$initView$3;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    return-void
.end method

.method public final isBaseMatch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isBaseMatch:Z

    return v0
.end method

.method public final isCacheData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isCacheData:Z

    return v0
.end method

.method public loadData()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->getPlanetDataTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->checkLocalData()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getPlanetCacheData()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f0a091a

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->toRandomChatActivity()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setBaseMatch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isBaseMatch:Z

    return-void
.end method

.method public final setCacheData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->isCacheData:Z

    return-void
.end method

.method public final setChatUserList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->chatUserList:Ljava/util/List;

    return-void
.end method

.method public final setFlLoading(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->flLoading:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setFloatTitleBack(Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    return-void
.end method

.method public final setHomeUser(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->homeUser:Ljava/util/List;

    return-void
.end method

.method public final setLoading(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/views/SvgaImageViewV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->loading:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    return-void
.end method

.method public final setMCurrentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mCurrentIndex:I

    return-void
.end method

.method public final setMViewRunnable(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViewRunnable:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$ViewRunnable;

    return-void
.end method

.method public final setMViews(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->mViews:Ljava/util/List;

    return-void
.end method

.method public final setPlanet(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->planet:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    return-void
.end method

.method public final setPlantSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->plantSex:I

    return-void
.end method

.method public final setRandomChat(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->randomChat:Landroid/widget/TextView;

    return-void
.end method

.method public final setRecommendPlanetAdapter(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->recommendPlanetAdapter:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;

    return-void
.end method

.method public final setTvSexTip(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->tvSexTip:Landroid/widget/TextView;

    return-void
.end method
