.class public Lcom/gyailib/librarytest/GYAITestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "c++_shared"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "gy_test_all"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native compareDetectCommonResult(Lcom/gyailib/library/GYDetectCommonResultStruct;Lcom/gyailib/library/GYDetectCommonResultStruct;)[[D
.end method

.method public static native differChannel(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)F
.end method

.method public static native iou(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[F
.end method
