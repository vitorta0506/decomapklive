.class public Lorg/light/device/OfflineConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/device/OfflineConfig$CutOutVersion;
    }
.end annotation


# static fields
.field private static final BENCHMARK_CPU_INFOS_PATH:Ljava/lang/String; = "benchmark/cpu_infos.json"

.field private static final BENCHMARK_DEVICE_MODELS_DIR:Ljava/lang/String; = "benchmark/device_models/"

.field private static final BENCHMARK_LEVEL_HIGH:F = 1.0f

.field private static final BENCHMARK_LEVEL_UNKNOWN:F = -1.0f

.field private static final BENCHMARK_SOC_MODELS_PATH:Ljava/lang/String; = "benchmark/soc_models.json"

.field private static final BENCHMARK_STRATEGY_CPU_MAX_FREQ:Ljava/lang/String; = "CpuMaxFreq"

.field private static final BENCHMARK_STRATEGY_CPU_PART:Ljava/lang/String; = "CpuPart"

.field private static final BENCHMARK_STRATEGY_CPU_PART_AND_MAX_FREQ:Ljava/lang/String; = "CpuPartAndMaxFreq"

.field private static final BENCHMARK_STRATEGY_DEFAULT_VALUE:Ljava/lang/String; = "DefaultValue"

.field private static final BENCHMARK_STRATEGY_DEVICE_MODEL:Ljava/lang/String; = "DeviceModel"

.field private static final BENCHMARK_STRATEGY_SOC_NAME:Ljava/lang/String; = "SocName"

.field public static final DEVICE_PERF_LEVEL_HIGH:I = 0x4

.field public static final DEVICE_PERF_LEVEL_LOW:I = 0x2

.field public static final DEVICE_PERF_LEVEL_MIDDLE:I = 0x3

.field public static final DEVICE_PERF_LEVEL_UNKNOWN:I = -0x1

.field public static final DEVICE_PERF_LEVEL_VERYHIGH:I = 0x5

.field public static final DEVICE_PERF_LEVEL_VERYLOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OfflineConfig"

.field private static benchmarkStrategy:Ljava/lang/String; = "DefaultValue"

.field private static sAssetsPath:Ljava/lang/String; = null

.field protected static sGauLowMaxSize:F = 360.0f

.field protected static sGauLowPhoneYear:I = 0x7de

.field protected static sGauMidMaxSize:F = 480.0f

.field protected static sGauMidderPhoneYear:I = 0x7df

.field protected static sGauSuperMaxSzie:F = 540.0f

.field protected static sGauSuperPhoneYear:I = 0x7e1

.field protected static sGaussMaxSize:I = -0x1

.field protected static sGaussScale:F = -1.0f

.field protected static sIsGaussResize:Z = true

.field protected static sIsPagEncodeBgStaus:I = 0x0

.field protected static sLowDevYearPag:I = 0x7df

.field protected static sLowDevYearRapidnet:I = 0x7df

.field protected static sNeedSoftDecoder:Z = false

.field protected static sNotSupportRealTimePag:Z = false

.field protected static sPagNeedScaleStatus:I = 0x0

.field protected static sPagScaleVaue:F = 0.5f

.field private static sPhonePerfLevel:I = 0x0

.field protected static sRapidnetSkipMode:I = 0x0

.field protected static sUpdateGaussSetting:Z = false

.field public static useCutoutVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/light/device/OfflineConfig$CutOutVersion;->NEW:Lorg/light/device/OfflineConfig$CutOutVersion;

    iget v0, v0, Lorg/light/device/OfflineConfig$CutOutVersion;->value:I

    sput v0, Lorg/light/device/OfflineConfig;->useCutoutVersion:I

    const/4 v0, -0x1

    .line 2
    sput v0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    const-string v0, ""

    .line 3
    sput-object v0, Lorg/light/device/OfflineConfig;->sAssetsPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertBenchmarkLevelToPerfLevel(I)I
    .locals 2

    const/4 v0, 0x5

    rsub-int/lit8 p0, p0, 0x5

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-ge p0, v1, :cond_0

    return v1

    :cond_0
    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method private static getBenchmarkLevelByCpuFreq(Lcom/google/gson/JsonObject;)F
    .locals 7

    .line 1
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getMaxCpuFreq()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const-string v2, "cpuFreq"

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    int-to-double v2, v0

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v2, v2, v4

    double-to-float v0, v2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "[]\\s\\(]+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 6
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v5, 0x1

    .line 7
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    cmpg-float v2, v0, v4

    if-gtz v2, :cond_3

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p0

    return p0

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    cmpl-float p0, v0, v2

    if-lez p0, :cond_5

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_5
    return v1
.end method

.method private static getBenchmarkLevelByCpuPart(Lcom/google/gson/JsonObject;)F
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getLastCpuPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "cpuPart"

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static getBenchmarkStrategy()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/light/device/OfflineConfig;->benchmarkStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public static getGauMaxSize()I
    .locals 1

    sget v0, Lorg/light/device/OfflineConfig;->sGaussMaxSize:I

    return v0
.end method

.method public static getGauPhoneType(I)Lorg/light/bean/PhoneType;
    .locals 1

    sget v0, Lorg/light/device/OfflineConfig;->sGauSuperPhoneYear:I

    if-lt p0, v0, :cond_0

    sget-object p0, Lorg/light/bean/PhoneType;->SUPER_PHONE:Lorg/light/bean/PhoneType;

    goto :goto_0

    :cond_0
    sget v0, Lorg/light/device/OfflineConfig;->sGauMidderPhoneYear:I

    if-lt p0, v0, :cond_1

    sget-object p0, Lorg/light/bean/PhoneType;->MIDDER_PHONE:Lorg/light/bean/PhoneType;

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/light/bean/PhoneType;->LOW_PHONE:Lorg/light/bean/PhoneType;

    :goto_0
    return-object p0
.end method

.method public static getGauScaleFromPhoneYear(I)F
    .locals 1

    .line 1
    sget-object v0, Lorg/light/device/OfflineConfig$1;->$SwitchMap$org$light$bean$PhoneType:[I

    invoke-static {p0}, Lorg/light/device/OfflineConfig;->getGauPhoneType(I)Lorg/light/bean/PhoneType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 2
    :cond_0
    sget p0, Lorg/light/device/OfflineConfig;->sGauLowMaxSize:F

    return p0

    .line 3
    :cond_1
    sget p0, Lorg/light/device/OfflineConfig;->sGauMidMaxSize:F

    return p0

    .line 4
    :cond_2
    sget p0, Lorg/light/device/OfflineConfig;->sGauSuperMaxSzie:F

    return p0
.end method

.method public static getGauScaleValue()F
    .locals 1

    sget v0, Lorg/light/device/OfflineConfig;->sGaussScale:F

    return v0
.end method

.method private static getJsonObjectFromBenchmarkFile(Landroid/content/Context;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 2

    .line 1
    sget-object v0, Lorg/light/device/OfflineConfig;->sAssetsPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lorg/light/device/FileOfflineUtil;->readStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/light/device/OfflineConfig;->sAssetsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/light/device/FileOfflineUtil;->readJsonStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0, p1}, Lorg/light/device/FileOfflineUtil;->readStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p0}, Lorg/light/utils/GsonUtils;->json2JsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getPagLowDeviceYear()I
    .locals 1

    sget v0, Lorg/light/device/OfflineConfig;->sLowDevYearPag:I

    return v0
.end method

.method public static getPagNeedScaleStatus()I
    .locals 1

    sget v0, Lorg/light/device/OfflineConfig;->sPagNeedScaleStatus:I

    return v0
.end method

.method public static getPagPlayScale()F
    .locals 1

    sget v0, Lorg/light/device/OfflineConfig;->sPagScaleVaue:F

    return v0
.end method

.method private static getPerfLevelByCpuInfo(Landroid/content/Context;)I
    .locals 6

    const-string v0, "benchmark/cpu_infos.json"

    .line 1
    invoke-static {p0, v0}, Lorg/light/device/OfflineConfig;->getJsonObjectFromBenchmarkFile(Landroid/content/Context;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/light/device/OfflineConfig;->getBenchmarkLevelByCpuPart(Lcom/google/gson/JsonObject;)F

    move-result v1

    .line 3
    invoke-static {p0}, Lorg/light/device/OfflineConfig;->getBenchmarkLevelByCpuFreq(Lcom/google/gson/JsonObject;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    cmpg-float v5, v2, v3

    if-gez v5, :cond_1

    return v0

    :cond_1
    cmpg-float v0, v2, v3

    if-gez v0, :cond_2

    const-string p0, "CpuPart"

    .line 4
    sput-object p0, Lorg/light/device/OfflineConfig;->benchmarkStrategy:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lorg/light/device/OfflineConfig;->convertBenchmarkLevelToPerfLevel(I)I

    move-result p0

    sput p0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return p0

    :cond_2
    if-gez v4, :cond_3

    const-string p0, "CpuMaxFreq"

    .line 6
    sput-object p0, Lorg/light/device/OfflineConfig;->benchmarkStrategy:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lorg/light/device/OfflineConfig;->convertBenchmarkLevelToPerfLevel(I)I

    move-result p0

    sput p0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return p0

    :cond_3
    const-string v0, "CpuPartAndMaxFreq"

    .line 8
    sput-object v0, Lorg/light/device/OfflineConfig;->benchmarkStrategy:Ljava/lang/String;

    const-string v0, "cpuPartRatio"

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p0

    mul-float v1, v1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 10
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 11
    invoke-static {p0}, Lorg/light/device/OfflineConfig;->convertBenchmarkLevelToPerfLevel(I)I

    move-result p0

    sput p0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return p0
.end method

.method private static getPerfLevelByDeviceModel(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getBuildModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "benchmark/device_models/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p0, v1}, Lorg/light/device/OfflineConfig;->getJsonObjectFromBenchmarkFile(Landroid/content/Context;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "DeviceModel"

    .line 6
    sput-object v1, Lorg/light/device/OfflineConfig;->benchmarkStrategy:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    .line 8
    invoke-static {p0}, Lorg/light/device/OfflineConfig;->convertBenchmarkLevelToPerfLevel(I)I

    move-result p0

    sput p0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private static getPerfLevelBySocModel(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getSocName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "benchmark/soc_models.json"

    .line 3
    invoke-static {p0, v1}, Lorg/light/device/OfflineConfig;->getJsonObjectFromBenchmarkFile(Landroid/content/Context;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "SocName"

    .line 6
    sput-object p0, Lorg/light/device/OfflineConfig;->benchmarkStrategy:Ljava/lang/String;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    invoke-static {p0}, Lorg/light/device/OfflineConfig;->convertBenchmarkLevelToPerfLevel(I)I

    move-result p0

    sput p0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return p0

    :cond_3
    return v2
.end method

.method public static getPhonePerfLevel(Landroid/content/Context;)I
    .locals 3

    .line 1
    sget v0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x3

    if-nez p0, :cond_1

    const-string p0, "OfflineConfig"

    const-string v1, "getPhonePerfLevel: context is null"

    .line 2
    invoke-static {p0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sput v0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return v0

    .line 4
    :cond_1
    invoke-static {p0}, Lorg/light/device/OfflineConfig;->getPerfLevelByDeviceModel(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 5
    sget p0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return p0

    .line 6
    :cond_2
    invoke-static {p0}, Lorg/light/device/OfflineConfig;->getPerfLevelBySocModel(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 7
    sget p0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return p0

    .line 8
    :cond_3
    invoke-static {p0}, Lorg/light/device/OfflineConfig;->getPerfLevelByCpuInfo(Landroid/content/Context;)I

    move-result p0

    if-eq p0, v1, :cond_4

    .line 9
    sget p0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return p0

    .line 10
    :cond_4
    sput v0, Lorg/light/device/OfflineConfig;->sPhonePerfLevel:I

    return v0
.end method

.method public static getPhoneType(I)I
    .locals 1

    sget v0, Lorg/light/device/OfflineConfig;->sGauSuperPhoneYear:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    sget v0, Lorg/light/device/OfflineConfig;->sGauMidderPhoneYear:I

    if-lt p0, v0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    sget v0, Lorg/light/device/OfflineConfig;->sGauLowPhoneYear:I

    if-lt p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static isEncodeBackGround()I
    .locals 1

    sget v0, Lorg/light/device/OfflineConfig;->sIsPagEncodeBgStaus:I

    return v0
.end method

.method public static isGausResize()Z
    .locals 1

    sget-boolean v0, Lorg/light/device/OfflineConfig;->sIsGaussResize:Z

    return v0
.end method

.method public static isGaussSettingUpdate()Z
    .locals 1

    sget-boolean v0, Lorg/light/device/OfflineConfig;->sUpdateGaussSetting:Z

    return v0
.end method

.method public static isNeedScale()Z
    .locals 3

    sget v0, Lorg/light/device/OfflineConfig;->sPagNeedScaleStatus:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/light/device/YearClass;->get(Landroid/content/Context;)I

    move-result v0

    sget v2, Lorg/light/device/OfflineConfig;->sLowDevYearPag:I

    if-le v0, v2, :cond_2

    :cond_0
    sget v0, Lorg/light/device/OfflineConfig;->sPagNeedScaleStatus:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isNeedSkipRapidnet(Landroid/content/Context;)Z
    .locals 2

    sget v0, Lorg/light/device/OfflineConfig;->sRapidnetSkipMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/light/device/YearClass;->get(Landroid/content/Context;)I

    move-result p0

    sget v0, Lorg/light/device/OfflineConfig;->sLowDevYearRapidnet:I

    if-le p0, v0, :cond_2

    :cond_0
    sget p0, Lorg/light/device/OfflineConfig;->sRapidnetSkipMode:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isNeedSoftDecode()Z
    .locals 1

    sget-boolean v0, Lorg/light/device/OfflineConfig;->sNeedSoftDecoder:Z

    return v0
.end method

.method public static isNotSuptPagRealTime()Z
    .locals 1

    sget-boolean v0, Lorg/light/device/OfflineConfig;->sNotSupportRealTimePag:Z

    return v0
.end method

.method public static setAssetsPath(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/light/device/OfflineConfig;->sAssetsPath:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    sput-object p0, Lorg/light/device/OfflineConfig;->sAssetsPath:Ljava/lang/String;

    :goto_0
    return-void
.end method
