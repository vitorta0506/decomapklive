.class public final Lcom/guochao/lib_core/feature/Feature$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/lib_core/feature/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0007J\u0015\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008\u001fJ\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\"\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0002R\u0014\u0010\u0017\u001a\u00020\u0018X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/lib_core/feature/Feature$Companion;",
        "",
        "()V",
        "APPOINT_SQUARE",
        "",
        "EARN_DIAMOND",
        "EARN_MONEY",
        "FIRST_RECHARGE",
        "F_WITHDRAW_DIAMOND",
        "F_WITHDRAW_MONEY",
        "HELLO_STAR",
        "LIVE_IM_MSG",
        "LIVE_MICROPHONE_MULTI",
        "LIVE_MICROPHONE_SINGLE",
        "LIVE_TO_1V1_ANCHOR",
        "LIVE_TO_1V1_USER",
        "MVP_CUSTOMER_SERVICE",
        "PLANET_MATCH",
        "VOICE_ROOM_SWITCH",
        "features",
        "Landroid/util/ArrayMap;",
        "Lcom/guochao/lib_core/feature/Feature;",
        "getFeatures$annotations",
        "viewModel",
        "Lcom/guochao/lib_core/feature/FeatureViewModel;",
        "getViewModel$lib_core_release",
        "()Lcom/guochao/lib_core/feature/FeatureViewModel;",
        "fetch",
        "",
        "findFeature",
        "name",
        "findFeature$lib_core_release",
        "loadCacheFirst",
        "userId",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/lib_core/feature/Feature$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getFeatures$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final fetch()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/lib_core/feature/Feature$Companion;->getViewModel$lib_core_release()Lcom/guochao/lib_core/feature/FeatureViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/FeatureViewModel;->loadData()V

    return-void
.end method

.method public final findFeature$lib_core_release(Ljava/lang/String;)Lcom/guochao/lib_core/feature/Feature;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/lib_core/feature/Feature;->access$getFeatures$cp()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/lib_core/feature/Feature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/guochao/lib_core/feature/Feature;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/guochao/lib_core/feature/Feature;-><init>(Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    invoke-static {}, Lcom/guochao/lib_core/feature/Feature;->access$getFeatures$cp()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final getViewModel$lib_core_release()Lcom/guochao/lib_core/feature/FeatureViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/guochao/lib_core/feature/Feature;->access$getViewModel$cp()Lcom/guochao/lib_core/feature/FeatureViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final loadCacheFirst(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/lib_core/feature/Feature$Companion;->getViewModel$lib_core_release()Lcom/guochao/lib_core/feature/FeatureViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/lib_core/feature/FeatureViewModel;->loadCache(Ljava/lang/String;)V

    return-void
.end method
