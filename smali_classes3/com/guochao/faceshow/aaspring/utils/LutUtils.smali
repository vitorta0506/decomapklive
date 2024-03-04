.class public Lcom/guochao/faceshow/aaspring/utils/LutUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final COLOR_DISTORTION:I = 0x4

.field static final COLUMN_DEPTH:I = 0x8

.field static final ROW_DEPTH:I = 0x8

.field static final X_DEPTH:I = 0x40

.field static final Y_DEPTH:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyLutToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    :try_start_0
    const-string v0, "new_lookup.png"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 5
    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/LutUtils;->applyLutToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyLutToBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 7
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LutUtils;->setFilerLevel(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    move-object v0, p1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v1, v9, v10

    .line 11
    new-array v11, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    .line 12
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v1, v1, v8

    new-array v12, v1, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v1, v12

    move v3, v8

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_2

    mul-int v3, v1, v9

    add-int/2addr v3, v2

    .line 16
    aget v4, v11, v3

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    .line 17
    aget v5, v11, v3

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    .line 18
    aget v6, v11, v3

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    .line 19
    invoke-static {v8, v4, v5, v6}, Lcom/guochao/faceshow/aaspring/utils/LutUtils;->getLutIndex(IIII)I

    move-result v4

    .line 20
    aget v5, v12, v4

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 21
    aget v6, v12, v4

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 22
    aget v4, v12, v4

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/high16 v7, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    .line 23
    aput v4, v11, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v9, v10, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    .line 25
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LutUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getLutIndex(IIII)I
    .locals 1

    .line 1
    rem-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x40

    add-int/2addr v0, p1

    .line 2
    div-int/lit8 p3, p3, 0x8

    mul-int/lit8 p3, p3, 0x40

    add-int/2addr p3, p2

    mul-int p3, p3, p0

    add-int/2addr p3, v0

    return p3
.end method

.method private static setFilerLevel(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const p1, 0x3fb33333    # 1.4f

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const p1, 0x3fe66666    # 1.8f

    const/high16 v1, 0x40400000    # 3.0f

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 4
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v6, 0x0

    .line 5
    invoke-virtual {v5, v6, v1}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 6
    invoke-virtual {v5, v0, v1}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    const/4 v0, 0x2

    .line 7
    invoke-virtual {v5, v0, v1}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 8
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 10
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 11
    invoke-virtual {p1, v5}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 13
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 14
    invoke-virtual {v3, p0, p1, p1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method
