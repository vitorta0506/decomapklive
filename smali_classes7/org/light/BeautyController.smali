.class public Lorg/light/BeautyController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final LIPS_STRENGTH_DEFULT:Ljava/lang/String; = "0"

.field public static final MAKEUP_TYPE_BEAUTY_MULTIPLY:I = 0x3

.field public static final MAKEUP_TYPE_LIPS:I = 0x1

.field public static final MAKEUP_TYPE_SOFT_LIGHT:I = 0x2

.field static final MULTIPLY_STRENGTH_DEFAULT:Ljava/lang/String; = "0"

.field static final SOFTLIGHT_STRENGTH_DEFAULT:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "BeautyController"

.field private static final TIME_SPACING:I = 0x64


# instance fields
.field private cameraController:Lorg/light/CameraController;

.field private config:Lorg/light/CameraConfig;

.field private configData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currTime:J


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/light/BeautyController;->currTime:J

    .line 3
    iput-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    return-void
.end method

.method private formatDecimalValue(I)Ljava/lang/String;
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isShowTime()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/light/BeautyController;->currTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/BeautyController;->currTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enableAssetBeautyMakeup(IZ)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "true"

    const-string v2, "false"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string p2, "makeup.makeupMultiply.enable"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2
    :cond_2
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    const-string p2, "makeup.softLight.enable"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3
    :cond_4
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    const-string p2, "makeup.lips.enable"

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_3
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_6

    .line 5
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_6
    return-void
.end method

.method public enableBasicBeautyMakeup(IZ)V
    .locals 3

    const-string v0, "true"

    if-eqz p2, :cond_0

    .line 1
    iget-object v1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v2, "beauty.faceFeature.enable"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    const-string v2, "false"

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    const-string p2, "beauty.makeupMultiply.enable"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3
    :cond_3
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    const-string p2, "beauty.softLight.enable"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4
    :cond_5
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    const-string p2, "beauty.lips.enable"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_3
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_7

    .line 6
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public isAssetHasMakeUp(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/BeautyController;->cameraController:Lorg/light/CameraController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lorg/light/Controller;->hasSpecificMakeUpType(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public native isBeautyAuthorized(Ljava/lang/String;)Z
.end method

.method public openAndUpdateBasicLips(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/BeautyController;->isShowTime()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/light/BeautyController;->enableAssetBeautyMakeup(IZ)V

    .line 3
    invoke-virtual {p0, v1, v1}, Lorg/light/BeautyController;->enableBasicBeautyMakeup(IZ)V

    .line 4
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/light/BeautyController;->formatDecimalValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "beauty.faceFeatureLipsLut"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v0, "beauty.lips.lipsMask"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "beauty.lips.lipsType"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public openAndUpdateBasicMultiply(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/BeautyController;->isShowTime()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/light/BeautyController;->enableAssetBeautyMakeup(IZ)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Lorg/light/BeautyController;->enableBasicBeautyMakeup(IZ)V

    .line 4
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v1, "beauty.faceFeature.enable"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/light/BeautyController;->formatDecimalValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "beauty.faceFeatureRedCheek"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v0, "beauty.makeupMultiply.multiplyMask"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public openAndUpdateBasicSoftLight(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/BeautyController;->isShowTime()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/light/BeautyController;->enableAssetBeautyMakeup(IZ)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Lorg/light/BeautyController;->enableBasicBeautyMakeup(IZ)V

    .line 4
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v1, "beauty.faceFeature.enable"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/light/BeautyController;->formatDecimalValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "beauty.faceFeatureSoftlight"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v0, "beauty.softLight.softLightMask"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public setBeautyLipsLevel(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/light/BeautyController;->formatDecimalValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "beauty.faceFeatureLipsLut"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setBeautyMultiplyLevel(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/light/BeautyController;->formatDecimalValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "beauty.faceFeatureRedCheek"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setBeautyMultiplyMask(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v1, "beauty.faceFeature.enable"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v1, "beauty.makeupMultiply.multiplyMask"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setBeautySoftLevel(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/light/BeautyController;->formatDecimalValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "beauty.faceFeatureSoftlight"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setCameraConfig(Lorg/light/CameraConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    .line 2
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    return-void
.end method

.method public setCameraController(Lorg/light/CameraController;)V
    .locals 0

    iput-object p1, p0, Lorg/light/BeautyController;->cameraController:Lorg/light/CameraController;

    return-void
.end method

.method public setLipsLut(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v1, "beauty.lips.lipsMask"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "beauty.lips.lipsType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p2, v0}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLipsLut "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BeautyController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSoftLightMask(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v1, "beauty.faceFeature.enable"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    const-string v1, "beauty.softLight.softLightMask"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setStrength(IF)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "beauty.faceFeatureRedCheek"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "beauty.faceFeatureSoftlight"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string v0, "beauty.faceFeatureLipsLut"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object p1, p0, Lorg/light/BeautyController;->config:Lorg/light/CameraConfig;

    if-eqz p1, :cond_3

    .line 5
    iget-object p2, p0, Lorg/light/BeautyController;->configData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_3
    return-void
.end method
