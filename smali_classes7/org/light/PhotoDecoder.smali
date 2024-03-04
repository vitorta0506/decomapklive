.class public Lorg/light/PhotoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/PhotoDecoder$OutputBitmap;
    }
.end annotation


# static fields
.field private static final ASSET:Ljava/lang/String; = "asset://"

.field private static final AlphaType_Opaque:I = 0x1

.field private static final AlphaType_Premul:I = 0x2

.field private static final AlphaType_Unpremul:I = 0x3

.field private static final ColorType_ARGB_4444:I = 0x3

.field private static final ColorType_Alpha_8:I = 0x1

.field private static final ColorType_BGRA_8888:I = 0x5

.field private static final ColorType_Gray_8:I = 0x7

.field private static final ColorType_Index_8:I = 0x6

.field private static final ColorType_RGBA_8888:I = 0x4

.field private static final ColorType_RGBA_F16:I = 0x8

.field private static final ColorType_RGB_565:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PhotoDecoder"


# instance fields
.field isNoConstrictFlag:Z

.field private photoHeight:I

.field private photoPath:Ljava/lang/String;

.field private photoWidth:I

.field private successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/light/PhotoDecoder;->successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/PhotoDecoder;->photoWidth:I

    .line 4
    iput v0, p0, Lorg/light/PhotoDecoder;->photoHeight:I

    .line 5
    iput-object p1, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    .line 6
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lorg/light/PhotoDecoder;->photoWidth:I

    .line 10
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lorg/light/PhotoDecoder;->photoHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static Create(Ljava/lang/String;)Lorg/light/PhotoDecoder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoDecoder"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lorg/light/PhotoDecoder;

    invoke-direct {v0, p0}, Lorg/light/PhotoDecoder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, v0, Lorg/light/PhotoDecoder;->isNoConstrictFlag:Z

    return-object v0
.end method

.method private convert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private decode(Z)Lorg/light/PhotoDecoder$OutputBitmap;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeReadPixel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoDecoder"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/light/PhotoDecoder;->successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return-object v2

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    const-string v3, "asset://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    invoke-static {}, Lorg/light/LibraryLoadUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v3, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    const/16 v4, 0x8

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    return-object v2

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    return-object v2

    .line 9
    :cond_3
    iget-boolean v3, p0, Lorg/light/PhotoDecoder;->isNoConstrictFlag:Z

    if-nez v3, :cond_4

    .line 10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_4

    return-object v2

    .line 11
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode done:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isPremultiplied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5

    .line 12
    iget-boolean v3, p0, Lorg/light/PhotoDecoder;->isNoConstrictFlag:Z

    if-nez v3, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    mul-int v3, v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_5
    move-object v3, v2

    .line 15
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-nez v4, :cond_6

    .line 16
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 17
    :cond_6
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v4, v5, :cond_7

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/light/PhotoDecoder;->photoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " need to convert"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, v0}, Lorg/light/PhotoDecoder;->convert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v2

    .line 20
    :cond_7
    new-instance v1, Lorg/light/PhotoDecoder$OutputBitmap;

    invoke-direct {v1, v2}, Lorg/light/PhotoDecoder$OutputBitmap;-><init>(Lorg/light/PhotoDecoder$1;)V

    iput-object v1, p0, Lorg/light/PhotoDecoder;->successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;

    if-nez p1, :cond_8

    .line 21
    iget-boolean p1, p0, Lorg/light/PhotoDecoder;->isNoConstrictFlag:Z

    if-nez p1, :cond_9

    if-eqz v3, :cond_9

    .line 22
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v1, Lorg/light/PhotoDecoder$OutputBitmap;->pixels:[B

    goto :goto_2

    .line 23
    :cond_8
    iput-object v0, v1, Lorg/light/PhotoDecoder$OutputBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 24
    :cond_9
    :goto_2
    iget-object p1, p0, Lorg/light/PhotoDecoder;->successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p1, Lorg/light/PhotoDecoder$OutputBitmap;->width:I

    .line 25
    iget-object p1, p0, Lorg/light/PhotoDecoder;->successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p1, Lorg/light/PhotoDecoder$OutputBitmap;->height:I

    .line 26
    iget-object p1, p0, Lorg/light/PhotoDecoder;->successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iput v0, p1, Lorg/light/PhotoDecoder$OutputBitmap;->rowBytes:I

    .line 27
    iget-object p1, p0, Lorg/light/PhotoDecoder;->successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;

    return-object p1
.end method

.method private height()I
    .locals 1

    iget v0, p0, Lorg/light/PhotoDecoder;->photoHeight:I

    return v0
.end method

.method private onRelease()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/light/PhotoDecoder;->successBitmap:Lorg/light/PhotoDecoder$OutputBitmap;

    return-void
.end method

.method private width()I
    .locals 1

    iget v0, p0, Lorg/light/PhotoDecoder;->photoWidth:I

    return v0
.end method


# virtual methods
.method public setNoConstrictFlag(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNoConstrictFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoDecoder"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lorg/light/PhotoDecoder;->isNoConstrictFlag:Z

    return-void
.end method
