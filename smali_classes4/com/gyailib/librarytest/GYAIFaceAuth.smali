.class public Lcom/gyailib/librarytest/GYAIFaceAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "all_in_one_so"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
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
.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/librarytest/GYAIFaceAuth;->nativePtr:J

    return-wide v0
.end method

.method public native processAllJni(Lcom/gyailib/librarytest/CrossTesterConfig;)I
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/librarytest/GYAIFaceAuth;->nativePtr:J

    return-void
.end method
