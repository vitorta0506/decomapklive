.class public Lcom/gyailib/library/GYAISceneChain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "c++_shared"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "TNN"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "light_ai_base"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "light_detect_base"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "light_detect_face"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "light_detect_gender"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "light_detect_scene_chain"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native cleanupModelData()I
.end method

.method public native forwardDetect(Landroid/graphics/Bitmap;Lcom/gyailib/library/GYDetectCommonResultStruct;I)I
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYAISceneChain;->nativePtr:J

    return-wide v0
.end method

.method public native initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYAISceneChain;->nativePtr:J

    return-void
.end method

.method public native setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I
.end method
