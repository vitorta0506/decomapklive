.class public final Lcom/guochao/lib_core/feature/Feature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/lib_core/feature/Feature$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0008\u001a\u00020\u0003J\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003J\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/lib_core/feature/Feature;",
        "",
        "featureName",
        "",
        "available",
        "",
        "paramJson",
        "(Ljava/lang/String;ZLjava/lang/String;)V",
        "getFeatureName",
        "getParamJson",
        "isAvailable",
        "setAvailable",
        "",
        "Companion",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final APPOINT_SQUARE:Ljava/lang/String; = "appoint_square"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/guochao/lib_core/feature/Feature$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EARN_DIAMOND:Ljava/lang/String; = "invite_earn_diamond"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EARN_MONEY:Ljava/lang/String; = "invite_earn_money"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FIRST_RECHARGE:Ljava/lang/String; = "new_first_recharge_gift_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final F_WITHDRAW_DIAMOND:Ljava/lang/String; = "user_f_to_diamond"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final F_WITHDRAW_MONEY:Ljava/lang/String; = "user_f_to_money"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HELLO_STAR:Ljava/lang/String; = "hello_star"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIVE_IM_MSG:Ljava/lang/String; = "live_im_msg"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIVE_MICROPHONE_MULTI:Ljava/lang/String; = "live_microphone_multi"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIVE_MICROPHONE_SINGLE:Ljava/lang/String; = "live_microphone_single"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIVE_TO_1V1_ANCHOR:Ljava/lang/String; = "live_to_1v1_anchor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIVE_TO_1V1_USER:Ljava/lang/String; = "live_to_1v1_user"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MVP_CUSTOMER_SERVICE:Ljava/lang/String; = "user_mvp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLANET_MATCH:Ljava/lang/String; = "planet_match"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VOICE_ROOM_SWITCH:Ljava/lang/String; = "live_voice_room_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final features:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/lib_core/feature/Feature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final viewModel:Lcom/guochao/lib_core/feature/FeatureViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private available:Z

.field private featureName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private paramJson:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/guochao/lib_core/feature/Feature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/lib_core/feature/Feature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/guochao/lib_core/feature/Feature;->features:Landroid/util/ArrayMap;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v2, "app()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v2, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    const-class v0, Lcom/guochao/lib_core/feature/FeatureViewModel;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;

    .line 5
    check-cast v0, Lcom/guochao/lib_core/feature/FeatureViewModel;

    .line 6
    sget-object v2, Lcom/guochao/lib_core/feature/a;->a:Lcom/guochao/lib_core/feature/a;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 7
    sput-object v0, Lcom/guochao/lib_core/feature/Feature;->viewModel:Lcom/guochao/lib_core/feature/FeatureViewModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "featureName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/lib_core/feature/Feature;->featureName:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/guochao/lib_core/feature/Feature;->available:Z

    .line 4
    iput-object p3, p0, Lcom/guochao/lib_core/feature/Feature;->paramJson:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/lib_core/feature/Feature;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/lib_core/feature/FeatureResult;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/lib_core/feature/Feature;->viewModel$lambda-2$lambda-1(Lcom/guochao/lib_core/feature/FeatureResult;)V

    return-void
.end method

.method public static final synthetic access$getFeatures$cp()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/guochao/lib_core/feature/Feature;->features:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static final synthetic access$getViewModel$cp()Lcom/guochao/lib_core/feature/FeatureViewModel;
    .locals 1

    sget-object v0, Lcom/guochao/lib_core/feature/Feature;->viewModel:Lcom/guochao/lib_core/feature/FeatureViewModel;

    return-object v0
.end method

.method public static final fetch()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature$Companion;->fetch()V

    return-void
.end method

.method public static final findFeature$lib_core_release(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/lib_core/feature/Feature$Companion;->findFeature$lib_core_release(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static final loadCacheFirst(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/lib_core/feature/Feature;->Companion:Lcom/guochao/lib_core/feature/Feature$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/lib_core/feature/Feature$Companion;->loadCacheFirst(Ljava/lang/String;)V

    return-void
.end method

.method private static final viewModel$lambda-2$lambda-1(Lcom/guochao/lib_core/feature/FeatureResult;)V
    .locals 8

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/lib_core/feature/FeatureResult;->getResultMap()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    sget-object v1, Lcom/guochao/lib_core/feature/Feature;->features:Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/guochao/lib_core/feature/Feature;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/lib_core/feature/FeatureResultData;

    invoke-virtual {v5}, Lcom/guochao/lib_core/feature/FeatureResultData;->getOpen()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/lib_core/feature/FeatureResultData;

    invoke-virtual {v7}, Lcom/guochao/lib_core/feature/FeatureResultData;->getParamJson()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v7}, Lcom/guochao/lib_core/feature/Feature;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hello_star"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/lib_core/feature/FeatureResultData;

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/FeatureResultData;->getOpen()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-string v1, "Check_hello_gift"

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getFeatureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/lib_core/feature/Feature;->featureName:Ljava/lang/String;

    return-object v0
.end method

.method public final getParamJson()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/lib_core/feature/Feature;->paramJson:Ljava/lang/String;

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/lib_core/feature/Feature;->available:Z

    return v0
.end method

.method public final setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/lib_core/feature/Feature;->available:Z

    return-void
.end method
