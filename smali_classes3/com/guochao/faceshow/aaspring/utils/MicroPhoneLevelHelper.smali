.class public final Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\tH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;",
        "",
        "()V",
        "checkMicroPhoneLevel",
        "",
        "multiLiveRoom",
        "getMicroPhoneLevelMultiData",
        "Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;",
        "getMicroPhoneLevelMultiSwitch",
        "",
        "getMicroPhoneLevelSingleData",
        "getMicroPhoneLevelSingleSwitch",
        "app_GooglePlayRelease"
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getMicroPhoneLevelMultiData()Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelMultiData$paramJson$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelMultiData$paramJson$1;

    const-string v1, "live_microphone_multi"

    invoke-static {v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->getParamJson()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;

    invoke-direct {v0, v1, v1}, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;-><init>(IZ)V

    return-object v0

    .line 4
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getGson().fromJson(param\u2026oneLevelData::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;

    invoke-direct {v0, v1, v1}, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;-><init>(IZ)V

    return-object v0
.end method

.method private final getMicroPhoneLevelMultiSwitch()I
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelMultiSwitch$available$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelMultiSwitch$available$1;

    const-string v1, "live_microphone_multi"

    invoke-static {v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    .line 3
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelMultiSwitch$paramJson$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelMultiSwitch$paramJson$1;

    invoke-static {v1, v2}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/lib_core/feature/Feature;->getParamJson()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private final getMicroPhoneLevelSingleData()Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelSingleData$paramJson$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelSingleData$paramJson$1;

    const-string v1, "live_microphone_single"

    invoke-static {v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->getParamJson()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;

    invoke-direct {v0, v1, v1}, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;-><init>(IZ)V

    return-object v0

    .line 4
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getGson().fromJson(param\u2026oneLevelData::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;

    invoke-direct {v0, v1, v1}, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;-><init>(IZ)V

    return-object v0
.end method

.method private final getMicroPhoneLevelSingleSwitch()I
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelSingleSwitch$available$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelSingleSwitch$available$1;

    const-string v1, "live_microphone_single"

    invoke-static {v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/Feature;->isAvailable()Z

    move-result v0

    .line 3
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelSingleSwitch$paramJson$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper$getMicroPhoneLevelSingleSwitch$paramJson$1;

    invoke-static {v1, v2}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/lib_core/feature/Feature;->getParamJson()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public final checkMicroPhoneLevel(Z)Z
    .locals 10

    const-string v0, "app().getString(\n       \u2026vel\n                    )"

    const v1, 0x7f12059f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->getMicroPhoneLevelMultiSwitch()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v4

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    new-array v5, v3, [Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->getMicroPhoneLevelMultiData()Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;->getMinLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 5
    invoke-virtual {p1, v1, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 6
    invoke-static/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return v3

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->getMicroPhoneLevelSingleSwitch()I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v4

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    new-array v5, v3, [Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->getMicroPhoneLevelSingleData()Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;->getMinLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 11
    invoke-virtual {p1, v1, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    return v3

    :cond_1
    return v2
.end method
