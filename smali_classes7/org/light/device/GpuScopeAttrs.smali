.class public Lorg/light/device/GpuScopeAttrs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/device/GpuScopeAttrs$GpuBean;
    }
.end annotation


# static fields
.field private static final GPU_NAMES:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/light/device/GpuScopeAttrs;

.field private static final TAG:Ljava/lang/String; = "GpuScopeAttrs"


# instance fields
.field private thisDeviceModel:Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

.field private thisGpuModel:Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;

.field private thisSysVersionModel:Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Mali-T860"

    const-string v1, "Mali-T720"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/light/device/GpuScopeAttrs;->GPU_NAMES:[Ljava/lang/String;

    .line 2
    new-instance v0, Lorg/light/device/GpuScopeAttrs;

    invoke-direct {v0}, Lorg/light/device/GpuScopeAttrs;-><init>()V

    sput-object v0, Lorg/light/device/GpuScopeAttrs;->INSTANCE:Lorg/light/device/GpuScopeAttrs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/light/device/GpuScopeAttrs;
    .locals 1

    sget-object v0, Lorg/light/device/GpuScopeAttrs;->INSTANCE:Lorg/light/device/GpuScopeAttrs;

    return-object v0
.end method


# virtual methods
.method public getDeviceModel()Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;
    .locals 1

    iget-object v0, p0, Lorg/light/device/GpuScopeAttrs;->thisDeviceModel:Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    return-object v0
.end method

.method public getGPuModel()Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;
    .locals 1

    iget-object v0, p0, Lorg/light/device/GpuScopeAttrs;->thisGpuModel:Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;

    return-object v0
.end method

.method public getSysVersionModel()Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;
    .locals 1

    iget-object v0, p0, Lorg/light/device/GpuScopeAttrs;->thisSysVersionModel:Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "GpuScopeAttrs"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p5}, Lorg/light/utils/FileUtils;->genSeperateFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "device_config.json"

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 2
    invoke-static {p5}, Lorg/light/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p5, "assets://device_config.json"

    .line 3
    :cond_0
    invoke-static {p1, p5}, Lorg/light/utils/FileUtils;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x0

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lorg/light/device/GpuScopeAttrs$GpuBean;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/device/GpuScopeAttrs$GpuBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p5

    :goto_0
    if-eqz p1, :cond_6

    .line 6
    iput-object p5, p0, Lorg/light/device/GpuScopeAttrs;->thisGpuModel:Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;

    .line 7
    iget-object v1, p1, Lorg/light/device/GpuScopeAttrs$GpuBean;->gpuModels:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;

    if-eqz p3, :cond_1

    .line 9
    iget-object v3, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;->gpu:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iput-object v2, p0, Lorg/light/device/GpuScopeAttrs;->thisGpuModel:Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;

    .line 11
    :cond_2
    iput-object p5, p0, Lorg/light/device/GpuScopeAttrs;->thisDeviceModel:Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    .line 12
    iget-object v1, p1, Lorg/light/device/GpuScopeAttrs$GpuBean;->deviceModels:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;->device:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "->>deviceModels:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;->device:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",shareGLContextError:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->shareGLContextError:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object v2, p0, Lorg/light/device/GpuScopeAttrs;->thisDeviceModel:Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    .line 17
    :cond_4
    iput-object p5, p0, Lorg/light/device/GpuScopeAttrs;->thisSysVersionModel:Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;

    .line 18
    iget-object p1, p1, Lorg/light/device/GpuScopeAttrs$GpuBean;->sysVersionModels:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;

    if-eqz p3, :cond_5

    .line 20
    iget-object p5, p2, Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;->version:Ljava/lang/String;

    if-eqz p5, :cond_5

    invoke-virtual {p4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 21
    iput-object p2, p0, Lorg/light/device/GpuScopeAttrs;->thisSysVersionModel:Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;

    :cond_6
    return-void
.end method
