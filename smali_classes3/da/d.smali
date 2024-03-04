.class public final Lda/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "da.d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/hardware/Camera;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lda/d;->b(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Landroid/hardware/Camera;
    .locals 5

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lda/d;->a:Ljava/lang/String;

    const-string v0, "No cameras!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v2, 0x0

    if-ltz p0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_3

    .line 3
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 4
    invoke-static {p0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge p0, v0, :cond_4

    .line 6
    sget-object v0, Lda/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening camera #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 8
    sget-object v0, Lda/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested camera does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 9
    :cond_5
    sget-object p0, Lda/d;->a:Ljava/lang/String;

    const-string v0, "No camera facing back; returning camera #0"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    :goto_3
    return-object v1
.end method
