.class public Lorg/light/FontBitmapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FONT_STYLE_ITALIC:Ljava/lang/String; = "italic"

.field private static final FONT_STYLE_NORMAL:Ljava/lang/String; = "normal"

.field private static final FONT_STYLE_OBLIQUE:Ljava/lang/String; = "oblique"

.field private static final FONT_WEIGHT_BOLD:Ljava/lang/String; = "bold"

.field private static final FONT_WEIGHT_NORMAL:Ljava/lang/String; = "normal"

.field static final NAME:Ljava/lang/String; = "FontBitmapManager"

.field private static final TAG:Ljava/lang/String; = "FontBitmapManager"


# instance fields
.field private final loadedTypefaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/FontBitmapManager;->loadedTypefaceMap:Ljava/util/Map;

    return-void
.end method

.method private typeFaceStyleFromW3CFont(II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    :goto_0
    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p2, v0, :cond_2

    if-ne p1, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :cond_2
    move v0, p1

    :cond_3
    :goto_2
    return v0
.end method

.method private typefaceFromW3CFontParameters(IILjava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/FontBitmapManager;->loadedTypefaceMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/light/FontBitmapManager;->loadedTypefaceMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/light/FontBitmapManager;->loadedTypefaceMap:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/FontBitmapManager;->typeFaceStyleFromW3CFont(II)I

    move-result p1

    invoke-static {p3, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createBitmap(IILjava/lang/String;Ljava/lang/String;FZF)Lorg/light/FontBitmap;
    .locals 3

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    const-string p3, "android_system_default"

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/light/FontBitmapManager;->typefaceFromW3CFontParameters(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8
    :goto_0
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 p1, -0x10000

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    if-eqz p6, :cond_2

    .line 10
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 11
    :cond_2
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    cmpl-float p2, p7, p1

    if-lez p2, :cond_3

    .line 12
    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    neg-float p2, p2

    .line 14
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    const/high16 p5, 0x3f000000    # 0.5f

    add-float/2addr p3, p5

    float-to-int p3, p3

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result p6

    add-float/2addr p6, p2

    add-float/2addr p6, p5

    float-to-int p5, p6

    if-lez p3, :cond_5

    if-gtz p5, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    new-instance p6, Lorg/light/FontBitmap;

    invoke-direct {p6}, Lorg/light/FontBitmap;-><init>()V

    .line 17
    sget-object p7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p5, p7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 18
    new-instance p5, Landroid/graphics/Canvas;

    invoke-direct {p5, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    invoke-virtual {p5, p4, p1, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 20
    iput-object p3, p6, Lorg/light/FontBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    iput p1, p6, Lorg/light/FontBitmap;->ascent:F

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result p1

    iput p1, p6, Lorg/light/FontBitmap;->descent:F

    return-object p6

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getTextLineHeight(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "normal"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "italic"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "oblique"

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 5
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "bold"

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p2, 0x0

    .line 7
    :goto_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    invoke-direct {p0, p1, p2, p4}, Lorg/light/FontBitmapManager;->typefaceFromW3CFontParameters(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float p1, p3

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p5, v1, p2, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    return p1

    :cond_6
    :goto_3
    return v1
.end method

.method public measureText(IILjava/lang/String;Ljava/lang/String;FZF)F
    .locals 3

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    const-string p3, "android_system_default"

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/light/FontBitmapManager;->typefaceFromW3CFontParameters(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8
    :goto_0
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p6, :cond_2

    .line 9
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    cmpl-float p1, p7, v1

    if-lez p1, :cond_3

    .line 11
    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public saveImage(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "FontBitmap"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
