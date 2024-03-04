.class public Lcom/guochao/faceshow/utils/VideoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GPU_GL_ONE_THREAD:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PowerVR SGX 544MP"

    const-string v1, "Adreno (TM) 306"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/utils/VideoUtil;->GPU_GL_ONE_THREAD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayToList([F)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/guochao/faceshow/utils/VideoUtil;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    aget v3, p0, v2

    .line 10
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static arrayToList([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/utils/VideoUtil;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    aget v3, p0, v2

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5
    invoke-static {p0, v1}, Lcom/guochao/faceshow/utils/VideoUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to copy asset file: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " into "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    return-object v0
.end method

.method public static getFaceAngle(Ljava/util/List;)F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/utils/VideoUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    const/16 v2, 0x12

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    .line 4
    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, v2, v3

    sub-float/2addr v2, v3

    .line 5
    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    mul-float v5, v4, v2

    mul-float v6, v3, v1

    add-float/2addr v5, v6

    mul-float v4, v4, v4

    add-float/2addr v4, v1

    float-to-double v6, v4

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    div-float/2addr v5, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v3, v5, v2

    if-gez v3, :cond_1

    const/high16 v3, -0x40000000    # -2.0f

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    cmpl-float v2, v5, v1

    if-lez v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v5, v2

    if-gez v2, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    float-to-double v1, v5

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 9
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    cmpg-float p0, v0, p0

    if-gez p0, :cond_3

    neg-float v1, v1

    :cond_3
    return v1
.end method

.method public static getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "assets://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static hasHoneycomb()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasJellyBeanMR1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasJellyBeanMR2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasKitKat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static indexOutOfBounds(Ljava/util/Collection;I)Z
    .locals 0

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isEmpty([F)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 3
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isEmpty([I)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static declared-synchronized unZip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-class v0, Lcom/guochao/faceshow/utils/VideoUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v2

    .line 3
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-nez p0, :cond_1

    .line 5
    monitor-exit v0

    return-object v2

    .line 6
    :cond_1
    :try_start_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :cond_2
    const/16 p0, 0x1000

    .line 9
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 10
    :try_start_4
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v4, v2

    move-object v5, v4

    .line 11
    :catch_0
    :cond_3
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v6, :cond_4

    .line 12
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 14
    :catch_1
    monitor-exit v0

    return-object v2

    .line 15
    :cond_4
    :try_start_7
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "../"

    .line 16
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 17
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 21
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 23
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    new-array v6, p0, [B

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 25
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 26
    :try_start_8
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 27
    :try_start_9
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v7, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 28
    :goto_1
    :try_start_a
    invoke-virtual {v1, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_7

    const/4 v8, 0x0

    .line 29
    invoke-virtual {v4, v6, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 30
    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 31
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 32
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catch_2
    move-object v5, v4

    move-object v4, v7

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v5, v4

    goto :goto_2

    :catch_3
    move-object v5, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    move-object v4, v7

    goto :goto_4

    :catch_4
    :goto_3
    move-object v4, v7

    goto :goto_5

    :catchall_2
    move-exception p0

    :goto_4
    if-eqz v5, :cond_8

    .line 33
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_8
    if-eqz v4, :cond_9

    .line 34
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 35
    :catch_5
    :cond_9
    :try_start_d
    throw p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catch_6
    :goto_5
    if-eqz v5, :cond_a

    .line 36
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_a
    if-eqz v4, :cond_3

    .line 37
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception p0

    move-object v2, v1

    goto :goto_6

    :catch_7
    move-object p0, v2

    move-object v2, v1

    goto :goto_7

    :catchall_4
    move-exception p0

    goto :goto_6

    :catch_8
    move-object p0, v2

    goto :goto_7

    :catchall_5
    move-exception p0

    move-object v3, v2

    :goto_6
    if-eqz v2, :cond_b

    .line 38
    :try_start_f
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    .line 39
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 40
    :catch_9
    :cond_c
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catch_a
    move-object p0, v2

    move-object v3, p0

    :goto_7
    if-eqz v2, :cond_d

    .line 41
    :try_start_11
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_d
    if-eqz v3, :cond_e

    .line 42
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 43
    :catch_b
    :cond_e
    monitor-exit v0

    return-object p0

    :catchall_6
    move-exception p0

    monitor-exit v0

    throw p0
.end method
