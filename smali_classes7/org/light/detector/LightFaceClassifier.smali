.class public Lorg/light/detector/LightFaceClassifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_ARM:Ljava/lang/String; = "ARM"

.field private static final MODEL_KEY:Ljava/lang/String; = "root-path"

.field private static final TAG:Ljava/lang/String; = "LightFaceClassifier"

.field private static modelDir:Ljava/lang/String; = "/sdcard/light_assets/models/LightFaceClassify.bundle"


# instance fields
.field private mFaceClassify:Lcom/gyailib/library/GYAIFaceClassify;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    sget-object v2, Lorg/light/detector/LightFaceClassifier;->modelDir:Ljava/lang/String;

    const-string v3, "root-path"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private initDevice()I
    .locals 2

    .line 1
    new-instance v0, Lcom/gyailib/library/SDKDeviceConfig;

    invoke-direct {v0}, Lcom/gyailib/library/SDKDeviceConfig;-><init>()V

    const-string v1, "ARM"

    .line 2
    invoke-virtual {v0, v1}, Lcom/gyailib/library/SDKDeviceConfig;->setDevice(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lorg/light/detector/LightFaceClassifier;->mFaceClassify:Lcom/gyailib/library/GYAIFaceClassify;

    invoke-virtual {v1, v0}, Lcom/gyailib/library/GYAIFaceClassify;->initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I

    move-result v0

    return v0
.end method

.method private initModel()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/detector/LightFaceClassifier;->buildModelConfig()Lcom/gyailib/library/SDKModelConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/light/detector/LightFaceClassifier;->mFaceClassify:Lcom/gyailib/library/GYAIFaceClassify;

    invoke-virtual {v1, v0}, Lcom/gyailib/library/GYAIFaceClassify;->setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I

    move-result v0

    return v0
.end method

.method public static setModelDir(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/light/detector/LightFaceClassifier;->modelDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/detector/LightFaceClassifier;->mFaceClassify:Lcom/gyailib/library/GYAIFaceClassify;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/gyailib/library/GYAIFaceClassify;->cleanupModelData()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightFaceClassifier"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public detect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;[FI)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/light/detector/LightFaceClassifier;->mFaceClassify:Lcom/gyailib/library/GYAIFaceClassify;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/gyailib/library/GYDetectCommonResultStruct;

    invoke-direct {v0}, Lcom/gyailib/library/GYDetectCommonResultStruct;-><init>()V

    .line 3
    iget-object v2, p0, Lorg/light/detector/LightFaceClassifier;->mFaceClassify:Lcom/gyailib/library/GYAIFaceClassify;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/gyailib/library/GYAIFaceClassify;->forwardDetect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;[FLcom/gyailib/library/GYDetectCommonResultStruct;I)I

    .line 4
    iget-object p1, v0, Lcom/gyailib/library/GYDetectCommonResultStruct;->items:[Lcom/gyailib/library/GYDetectCommonItemParams;

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    aget-object p2, p1, v1

    if-eqz p2, :cond_0

    aget-object p1, p1, v1

    iget p1, p1, Lcom/gyailib/library/GYDetectCommonItemParams;->index:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    return v1
.end method

.method public init()I
    .locals 4

    .line 1
    new-instance v0, Lcom/gyailib/library/GYAIFaceClassify;

    invoke-direct {v0}, Lcom/gyailib/library/GYAIFaceClassify;-><init>()V

    iput-object v0, p0, Lorg/light/detector/LightFaceClassifier;->mFaceClassify:Lcom/gyailib/library/GYAIFaceClassify;

    .line 2
    invoke-direct {p0}, Lorg/light/detector/LightFaceClassifier;->initDevice()I

    move-result v0

    const-string v1, "LightFaceClassifier"

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
    invoke-direct {p0}, Lorg/light/detector/LightFaceClassifier;->initModel()I

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
