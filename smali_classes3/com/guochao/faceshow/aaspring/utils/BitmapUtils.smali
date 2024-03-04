.class public Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v3, p0, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    sub-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x1

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1

    int-to-float v0, v0

    invoke-virtual {v3, p1, p0, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 8
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v2
.end method

.method public static createRepeater(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr p0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v1, v1, p0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v4, v4, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getBitmapByColor(II)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int v1, p0, p1

    .line 2
    new-array v2, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p0, :cond_0

    mul-int v5, v3, p0

    add-int/2addr v5, v4

    const/4 v6, -0x1

    .line 3
    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v4, p0

    move v7, p0

    move v8, p1

    .line 4
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method public static imageScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    .line 3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 5
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->isGif(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static isGif(Ljava/io/InputStream;)Z
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [I

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    aput v2, v0, v1

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v5, 0x3

    aput v2, v0, v5

    .line 9
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    sub-int/2addr v2, v3

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 10
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v6, 0x4

    aput v2, v0, v6

    aget v2, v0, v1

    const/16 v7, 0x47

    if-ne v2, v7, :cond_0

    aget v2, v0, v3

    const/16 v7, 0x49

    if-ne v2, v7, :cond_0

    aget v2, v0, v4

    const/16 v4, 0x46

    if-ne v2, v4, :cond_0

    aget v2, v0, v5

    const/16 v4, 0x38

    if-ne v2, v4, :cond_0

    aget v0, v0, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :goto_1
    throw v0

    .line 16
    :catch_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v1
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 1

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->isGif(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static makeNinePatchChunk(II)[B
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    div-int/2addr p0, v0

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v3, 0x1

    add-int/2addr p0, v3

    aput p0, v1, v3

    new-array p0, v0, [I

    .line 3
    div-int/2addr p1, v0

    aput p1, p0, v2

    add-int/2addr p1, v3

    aput p1, p0, v3

    const/16 p1, 0x54

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x9

    int-to-byte v4, v0

    .line 8
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v4, v1, v2

    .line 16
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v1, v1, v3

    .line 17
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v1, p0, v2

    .line 18
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget p0, p0, v3

    .line 19
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 20
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static makeNinePatchChunk(Landroid/graphics/Bitmap;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->makeNinePatchChunk(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static makeRoundCorner(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    sub-int v4, v0, v1

    .line 4
    div-int/lit8 v4, v4, 0x2

    add-int v5, v4, v1

    move v6, v1

    move v7, v5

    move v5, v2

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    if-le v1, v0, :cond_1

    sub-int v2, v1, v0

    .line 5
    div-int/lit8 v2, v2, 0x2

    add-int v4, v2, v0

    .line 6
    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    move v7, v0

    move v6, v4

    goto :goto_0

    :cond_1
    move v7, v0

    move v6, v1

    move v5, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 7
    :goto_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v8, -0xbdbdbe

    .line 9
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 10
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v4, v2, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 14
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-virtual {v1, v2, v5, v5, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 17
    invoke-virtual {v1, p0, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static mirror(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 4
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v4, v8

    move v5, v9

    .line 7
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v11, p0, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v10
.end method

.method public static toHorizontalMirror(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 5
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->createRepeater(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
