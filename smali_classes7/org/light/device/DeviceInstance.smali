.class public final Lorg/light/device/DeviceInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/device/DeviceInstance$SOCPhones;,
        Lorg/light/device/DeviceInstance$BrandNames;,
        Lorg/light/device/DeviceInstance$DEVICE_MEM;,
        Lorg/light/device/DeviceInstance$InstanceHolder;,
        Lorg/light/device/DeviceInstance$SOC_CLASS;
    }
.end annotation


# static fields
.field public static final BRAND_HUAWEI:Ljava/lang/String; = "HUAWEI"

.field public static final BRAND_MEIZU:Ljava/lang/String; = "MEIZU"

.field public static final BRAND_OPPO:Ljava/lang/String; = "OPPO"

.field public static final BRAND_VIVO:Ljava/lang/String; = "VIVO"

.field public static final BRAND_XIAOMI:Ljava/lang/String; = "XIAOMI"

.field public static final MODEL_COOLPAD_8150:Ljava/lang/String; = "8150"

.field public static final MODEL_K_TOUCH_W619:Ljava/lang/String; = "K-Touch W619"

.field public static final MODEL_NEXUS_6:Ljava/lang/String; = "MOTOROLA_Nexus_6"

.field public static final MODEL_NEXUS_6P:Ljava/lang/String; = "HUAWEI_Nexus_6P"

.field public static final MODEL_OPPO_X909:Ljava/lang/String; = "OPPO_X909"

.field public static final MODEL_VIVO_Y23L:Ljava/lang/String; = "VIVO_vivo_Y23L"

.field public static final NUBIA_NX511J:Ljava/lang/String; = "NUBIA_NX511J"

.field private static TAG:Ljava/lang/String; = "DeviceInstance"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceVersion:Ljava/lang/String;

.field private mModelMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSocMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mModelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mSocMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceVersion:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/light/device/DeviceInstance;->deviceId:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Lorg/light/device/DeviceInstance;->showDeviceInfo()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/light/device/DeviceInstance$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/light/device/DeviceInstance;-><init>()V

    return-void
.end method

.method private getHuaweiEMUIVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.version.emui"

    invoke-direct {p0, v0}, Lorg/light/device/DeviceInstance;->getOSVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/light/device/DeviceInstance;
    .locals 1

    invoke-static {}, Lorg/light/device/DeviceInstance$InstanceHolder;->access$100()Lorg/light/device/DeviceInstance;

    move-result-object v0

    return-object v0
.end method

.method private getOSVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 3
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private getOppoColorOSVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.version.opporom"

    invoke-direct {p0, v0}, Lorg/light/device/DeviceInstance;->getOSVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVivoOSVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.vivo.os.version"

    invoke-direct {p0, v0}, Lorg/light/device/DeviceInstance;->getOSVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getXiaomiMIUIVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.miui.ui.version.name"

    invoke-direct {p0, v0}, Lorg/light/device/DeviceInstance;->getOSVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initModels(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lorg/light/utils/FileUtils;->genSeperateFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "brand_name.json"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lorg/light/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "assets://brand_name.json"

    .line 3
    invoke-static {p1, p2}, Lorg/light/utils/FileUtils;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lorg/light/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lorg/light/utils/FileUtils;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lorg/light/device/DeviceInstance$BrandNames;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/device/DeviceInstance$BrandNames;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 8
    iget-object p1, p2, Lorg/light/device/DeviceInstance$BrandNames;->BRAND_NAMES:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object p2, p0, Lorg/light/device/DeviceInstance;->mModelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 11
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 13
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->mModelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initSOCs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lorg/light/utils/FileUtils;->genSeperateFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "score_phone.json"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lorg/light/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "assets://score_phone.json"

    .line 3
    invoke-static {p1, p2}, Lorg/light/utils/FileUtils;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lorg/light/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lorg/light/utils/FileUtils;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lorg/light/device/DeviceInstance$SOCPhones;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/device/DeviceInstance$SOCPhones;

    .line 7
    iget-object p2, p0, Lorg/light/device/DeviceInstance;->mSocMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, Lorg/light/device/DeviceInstance$SOCPhones;->SOC_SCORE:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, Lorg/light/device/DeviceInstance;->mSocMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private showDeviceInfo()V
    .locals 5

    .line 1
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    const-string v1, "****** DeviceInfo  (+) *****"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODEL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getBuildModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK_INT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BRAND = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISPLAY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HARDWARE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MANUFACTURER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRODUCT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAGS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOARD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    const-string v1, "****** DeviceInfo (-) *****"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static staticGetDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/device/DeviceInstance;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static staticGetDeviceName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static staticGetDeviceVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/device/DeviceInstance;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 4
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "0"

    .line 7
    iput-object v0, p0, Lorg/light/device/DeviceInstance;->deviceId:Ljava/lang/String;

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getBuildModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "K-Touch W619"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/light/device/DeviceInstance;->mModelMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "TIANYU"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v1, "8150"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "COOLPAD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/light/device/DeviceInstance;->mModelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/light/device/DeviceInstance;->mModelMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "null"

    if-nez v4, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    :cond_4
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceName:Ljava/lang/String;

    .line 13
    :goto_0
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceName:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(t)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceName:Ljava/lang/String;

    .line 14
    :cond_6
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSocClass(Ljava/lang/String;)Lorg/light/device/DeviceInstance$SOC_CLASS;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDeviceSocClass] + BEGIN, socInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/light/device/DeviceInstance;->mSocMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->mSocMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 4
    :goto_0
    sget-object v0, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDeviceSocClass] scoreValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lorg/light/device/DeviceInstance$SOC_CLASS;->NULL:Lorg/light/device/DeviceInstance$SOC_CLASS;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 8
    sget-object v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->V_HIGH:Lorg/light/device/DeviceInstance$SOC_CLASS;

    iget v2, v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->score:I

    if-lt p1, v2, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 9
    :cond_1
    sget-object v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->HIGH:Lorg/light/device/DeviceInstance$SOC_CLASS;

    iget v2, v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->score:I

    if-lt p1, v2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    sget-object v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->NORMAL:Lorg/light/device/DeviceInstance$SOC_CLASS;

    iget v2, v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->score:I

    if-lt p1, v2, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    sget-object v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->LOW:Lorg/light/device/DeviceInstance$SOC_CLASS;

    iget v2, v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->score:I

    if-lt p1, v2, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    sget-object v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->V_LOW:Lorg/light/device/DeviceInstance$SOC_CLASS;

    iget v2, v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->score:I

    if-le p1, v2, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    :goto_2
    sget-object p1, Lorg/light/device/DeviceInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDeviceSocClass] + END, socClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->isHuaweiDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/light/device/DeviceInstance;->getHuaweiEMUIVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceVersion:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->isOppoDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorOS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/light/device/DeviceInstance;->getOppoColorOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceVersion:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->isXiaoMiDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/light/device/DeviceInstance;->getXiaomiMIUIVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceVersion:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->isViVoDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VivoOS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/light/device/DeviceInstance;->getVivoOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceVersion:Ljava/lang/String;

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/light/device/DeviceInstance;->mDeviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxMemorySizeInKB()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/light/device/DeviceInstance$DEVICE_MEM;->values()[Lorg/light/device/DeviceInstance$DEVICE_MEM;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-static {v4}, Lorg/light/device/DeviceInstance$DEVICE_MEM;->access$200(Lorg/light/device/DeviceInstance$DEVICE_MEM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-static {v4}, Lorg/light/device/DeviceInstance$DEVICE_MEM;->access$300(Lorg/light/device/DeviceInstance$DEVICE_MEM;)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method public initSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/light/device/DeviceInstance;->initModels(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/light/device/DeviceInstance;->initSOCs(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public isHuaweiDevice()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMeiZuDevice()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MEIZU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOppoDevice()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViVoDevice()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isXiaoMiDevice()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XIAOMI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
