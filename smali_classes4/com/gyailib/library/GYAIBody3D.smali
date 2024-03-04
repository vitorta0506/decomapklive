.class public Lcom/gyailib/library/GYAIBody3D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativePtr:J


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

.method public static getCpuName()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":\\s+"

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static queryBundleLevelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gyailib/library/GYAIBody3D;->getCpuName()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public native cleanupModelData()I
.end method

.method public native forwardDetect(Landroid/graphics/Bitmap;Lcom/gyailib/library/GYDetectCommonResultStruct;I)I
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYAIBody3D;->nativePtr:J

    return-wide v0
.end method

.method public native initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYAIBody3D;->nativePtr:J

    return-void
.end method

.method public native setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I
.end method
