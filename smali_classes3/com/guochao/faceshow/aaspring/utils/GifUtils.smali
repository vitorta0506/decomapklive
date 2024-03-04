.class public Lcom/guochao/faceshow/aaspring/utils/GifUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;
    }
.end annotation


# static fields
.field static final FPS:I = 0x6

.field public static final TAG:Ljava/lang/String; = "GifUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;FFFIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/guochao/faceshow/aaspring/utils/GifUtils;->doCrop(Ljava/lang/String;FFFIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/GifUtils;->doConvert(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static convertMp4ToGif(Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p2

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;

    invoke-direct {v0, p3, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$3;-><init>(Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method private static cropBitmap(Landroid/graphics/Bitmap;FFFII)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr v2, v1

    float-to-int p3, v2

    const/4 v2, 0x1

    .line 3
    invoke-static {p0, v0, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-float v0, v0

    mul-float v0, v0, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 6
    invoke-static {p0, p1, p2, p3, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_0
    invoke-static {p1, p4, p5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method

.method public static cropGif(Ljava/lang/String;FFFIILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;)Lth/b;
    .locals 10

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v9, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;-><init>(Ljava/lang/String;FFFIILjava/lang/String;)V

    invoke-virtual {v0, v9}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 2
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v1, v4, p0, v3}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lvh/g;)Lth/b;

    move-result-object v0

    return-object v0
.end method

.method private static doConvert(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/waynejo/androidndkgif/GifEncoder;

    invoke-direct {p0}, Lcom/waynejo/androidndkgif/GifEncoder;-><init>()V

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 7
    :cond_0
    sget-object v1, Lcom/waynejo/androidndkgif/GifEncoder$EncodingType;->ENCODING_TYPE_SIMPLE_FAST:Lcom/waynejo/androidndkgif/GifEncoder$EncodingType;

    invoke-virtual {p0, p2, p2, p1, v1}, Lcom/waynejo/androidndkgif/GifEncoder;->d(IILjava/lang/String;Lcom/waynejo/androidndkgif/GifEncoder$EncodingType;)V

    const/16 p1, 0x9

    .line 8
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-float p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x6

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/16 v3, 0xa6

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_5

    .line 10
    new-instance v2, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 11
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    mul-int/lit16 v6, v1, 0x3e8

    mul-int/lit16 v6, v6, 0x3e8

    .line 12
    div-int/lit8 v6, v6, 0x6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7, v4, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v2, p2, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 14
    invoke-virtual {p0, v2, v3}, Lcom/waynejo/androidndkgif/GifEncoder;->b(Landroid/graphics/Bitmap;I)Z

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_5

    mul-int/lit16 v2, v1, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    .line 16
    div-int/lit8 v2, v2, 0x6

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-static {v2, p2, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 18
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 19
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 20
    invoke-virtual {v8, v6, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 21
    invoke-virtual {p0, v7, v3}, Lcom/waynejo/androidndkgif/GifEncoder;->b(Landroid/graphics/Bitmap;I)Z

    .line 22
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {p0}, Lcom/waynejo/androidndkgif/GifEncoder;->a()V

    .line 26
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void
.end method

.method private static doCrop(Ljava/lang/String;FFFIILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/waynejo/androidndkgif/GifDecoder;

    invoke-direct {v0}, Lcom/waynejo/androidndkgif/GifDecoder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/waynejo/androidndkgif/GifDecoder;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3
    new-instance p0, Lcom/waynejo/androidndkgif/GifEncoder;

    invoke-direct {p0}, Lcom/waynejo/androidndkgif/GifEncoder;-><init>()V

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 7
    :cond_0
    invoke-virtual {p0, p4, p5, p6}, Lcom/waynejo/androidndkgif/GifEncoder;->c(IILjava/lang/String;)V

    const/4 p6, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/waynejo/androidndkgif/GifDecoder;->c()I

    move-result v1

    if-ge p6, v1, :cond_1

    .line 9
    invoke-virtual {v0, p6}, Lcom/waynejo/androidndkgif/GifDecoder;->b(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/GifUtils;->cropBitmap(Landroid/graphics/Bitmap;FFFII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10
    invoke-virtual {v0, p6}, Lcom/waynejo/androidndkgif/GifDecoder;->a(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/waynejo/androidndkgif/GifEncoder;->b(Landroid/graphics/Bitmap;I)Z

    .line 11
    invoke-virtual {v0, p6}, Lcom/waynejo/androidndkgif/GifDecoder;->b(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/waynejo/androidndkgif/GifEncoder;->a()V

    return-void

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "decode gif file failed..."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static oldGifToNewGif(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crop"

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {v3, p0, v2}, Lcom/guochao/faceshow/utils/FileUtil;->copyUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    .line 4
    new-instance p0, Lcom/waynejo/androidndkgif/GifDecoder;

    invoke-direct {p0}, Lcom/waynejo/androidndkgif/GifDecoder;-><init>()V

    .line 5
    invoke-virtual {p0, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lcom/waynejo/androidndkgif/GifEncoder;

    invoke-direct {v1}, Lcom/waynejo/androidndkgif/GifEncoder;-><init>()V

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/waynejo/androidndkgif/GifDecoder;->f()I

    move-result v2

    invoke-virtual {p0}, Lcom/waynejo/androidndkgif/GifDecoder;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/waynejo/androidndkgif/GifEncoder;->c(IILjava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/waynejo/androidndkgif/GifDecoder;->c()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/waynejo/androidndkgif/GifDecoder;->b(I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/LutUtils;->applyLutToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 13
    invoke-virtual {p0, p1}, Lcom/waynejo/androidndkgif/GifDecoder;->a(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/waynejo/androidndkgif/GifEncoder;->b(Landroid/graphics/Bitmap;I)Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/waynejo/androidndkgif/GifDecoder;->b(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/waynejo/androidndkgif/GifEncoder;->a()V

    const/4 p0, 0x1

    return p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "decode gif file failed..."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method
