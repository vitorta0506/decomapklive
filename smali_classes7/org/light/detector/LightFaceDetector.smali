.class public Lorg/light/detector/LightFaceDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_CPU:Ljava/lang/String; = "CPU"

.field private static final MODEL_KEY_ROOT:Ljava/lang/String; = "face-root"

.field private static final TAG:Ljava/lang/String; = "LightFaceDetector"

.field private static modelDir:Ljava/lang/String; = "/sdcard/light_assets/models/LightFaceModel.bundle/"


# instance fields
.field private gyaiFace:Lcom/gyailib/library/GYAIFace;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gyailib/library/GYAIFace;

    invoke-direct {v0}, Lcom/gyailib/library/GYAIFace;-><init>()V

    iput-object v0, p0, Lorg/light/detector/LightFaceDetector;->gyaiFace:Lcom/gyailib/library/GYAIFace;

    return-void
.end method

.method private buildFaceList(Lcom/gyailib/library/FaceDetector;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gyailib/library/FaceDetector;",
            ")",
            "Ljava/util/List<",
            "Lorg/light/bean/LightFaceFeature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/gyailib/library/FaceDetector;->faces:[Lcom/gyailib/library/FaceDetectorFeature;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p1, p1, Lcom/gyailib/library/FaceDetector;->faces:[Lcom/gyailib/library/FaceDetectorFeature;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4
    new-instance v5, Lorg/light/bean/LightFaceFeature;

    invoke-direct {v5}, Lorg/light/bean/LightFaceFeature;-><init>()V

    .line 5
    iget-object v6, v5, Lorg/light/bean/LightFaceFeature;->faceBoundsRect:[F

    iget v7, v4, Lcom/gyailib/library/FaceDetectorFeature;->boundsX:I

    int-to-float v7, v7

    aput v7, v6, v2

    .line 6
    iget v7, v4, Lcom/gyailib/library/FaceDetectorFeature;->boundsY:I

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v6, v8

    const/4 v7, 0x2

    .line 7
    iget v8, v4, Lcom/gyailib/library/FaceDetectorFeature;->boundsW:I

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x3

    .line 8
    iget v8, v4, Lcom/gyailib/library/FaceDetectorFeature;->boundsH:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 9
    iget v6, v4, Lcom/gyailib/library/FaceDetectorFeature;->yaw:F

    iput v6, v5, Lorg/light/bean/LightFaceFeature;->yaw:F

    .line 10
    iget v6, v4, Lcom/gyailib/library/FaceDetectorFeature;->roll:F

    iput v6, v5, Lorg/light/bean/LightFaceFeature;->roll:F

    .line 11
    iget v6, v4, Lcom/gyailib/library/FaceDetectorFeature;->pitch:F

    iput v6, v5, Lorg/light/bean/LightFaceFeature;->pitch:F

    .line 12
    iget-object v4, v4, Lcom/gyailib/library/FaceDetectorFeature;->fFeatures256:[F

    iget-object v6, v5, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    const/16 v7, 0x200

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private buildModelConfig()Lcom/gyailib/library/SDKModelConfig;
    .locals 4

    .line 1
    new-instance v0, Lcom/gyailib/library/SDKModelConfig;

    invoke-direct {v0}, Lcom/gyailib/library/SDKModelConfig;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/gyailib/library/SDKModelConfig;->modelPaths:Ljava/util/Map;

    .line 3
    sget-object v2, Lorg/light/detector/LightFaceDetector;->modelDir:Ljava/lang/String;

    const-string v3, "face-root"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private initDevice()I
    .locals 2

    .line 1
    new-instance v0, Lcom/gyailib/library/SDKDeviceConfig;

    invoke-direct {v0}, Lcom/gyailib/library/SDKDeviceConfig;-><init>()V

    const-string v1, "CPU"

    .line 2
    invoke-virtual {v0, v1}, Lcom/gyailib/library/SDKDeviceConfig;->setDevice(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lorg/light/detector/LightFaceDetector;->gyaiFace:Lcom/gyailib/library/GYAIFace;

    invoke-virtual {v1, v0}, Lcom/gyailib/library/GYAIFace;->initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I

    move-result v0

    return v0
.end method

.method private initModel()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/detector/LightFaceDetector;->buildModelConfig()Lcom/gyailib/library/SDKModelConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/detector/LightFaceDetector;->gyaiFace:Lcom/gyailib/library/GYAIFace;

    invoke-virtual {v1, v0}, Lcom/gyailib/library/GYAIFace;->setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I

    move-result v0

    return v0
.end method

.method public static updateModelPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lorg/light/detector/LightFaceDetector;->modelDir:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/detector/LightFaceDetector;->gyaiFace:Lcom/gyailib/library/GYAIFace;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/gyailib/library/GYAIFace;->cleanupModelData()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightFaceDetector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public detect(Landroid/graphics/Bitmap;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Ljava/util/List<",
            "Lorg/light/bean/LightFaceFeature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/light/detector/LightFaceDetector;->gyaiFace:Lcom/gyailib/library/GYAIFace;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/gyailib/library/FaceDetector;

    invoke-direct {v0}, Lcom/gyailib/library/FaceDetector;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/light/detector/LightFaceDetector;->gyaiFace:Lcom/gyailib/library/GYAIFace;

    invoke-virtual {v1, p1, v0, p2}, Lcom/gyailib/library/GYAIFace;->forwardDetect(Landroid/graphics/Bitmap;Lcom/gyailib/library/FaceDetector;I)I

    .line 4
    invoke-direct {p0, v0}, Lorg/light/detector/LightFaceDetector;->buildFaceList(Lcom/gyailib/library/FaceDetector;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public init()I
    .locals 4

    .line 1
    new-instance v0, Lcom/gyailib/library/GYAIFace;

    invoke-direct {v0}, Lcom/gyailib/library/GYAIFace;-><init>()V

    iput-object v0, p0, Lorg/light/detector/LightFaceDetector;->gyaiFace:Lcom/gyailib/library/GYAIFace;

    .line 2
    invoke-direct {p0}, Lorg/light/detector/LightFaceDetector;->initDevice()I

    move-result v0

    const-string v1, "LightFaceDetector"

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDevice ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/detector/LightFaceDetector;->initModel()I

    move-result v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initModel ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
