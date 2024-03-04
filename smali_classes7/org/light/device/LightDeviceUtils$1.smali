.class final Lorg/light/device/LightDeviceUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/device/LightDeviceUtils;->recordCpuInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/stat"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const-string v0, " "

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x2

    .line 5
    :try_start_1
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x3

    aget-object v3, v0, v3

    .line 6
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x6

    aget-object v3, v0, v3

    .line 7
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x5

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    const/4 v4, 0x7

    aget-object v4, v0, v4

    .line 8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    const/16 v4, 0x8

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 9
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->access$100()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    invoke-static {}, Lorg/light/device/LightDeviceUtils;->access$200()J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    invoke-static {}, Lorg/light/device/LightDeviceUtils;->access$200()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->access$100()J

    move-result-wide v5

    sub-long v5, v3, v5

    long-to-float v0, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v0, v0, v5

    invoke-static {}, Lorg/light/device/LightDeviceUtils;->access$200()J

    move-result-wide v6

    sub-long v6, v1, v6

    long-to-float v6, v6

    div-float/2addr v0, v6

    sub-float/2addr v5, v0

    invoke-static {v5}, Lorg/light/device/LightDeviceUtils;->access$302(F)F

    .line 12
    :cond_0
    invoke-static {v3, v4}, Lorg/light/device/LightDeviceUtils;->access$102(J)J

    .line 13
    invoke-static {v1, v2}, Lorg/light/device/LightDeviceUtils;->access$202(J)J

    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Lorg/light/device/LightDeviceUtils;->access$402(I)I

    return-void

    :catch_0
    move-exception v0

    .line 15
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArrayIndexOutOfBoundsException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 16
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
