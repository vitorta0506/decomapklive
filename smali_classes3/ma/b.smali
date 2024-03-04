.class public Lma/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/Bitmap$Config;

.field private static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lma/b;->a:Landroid/graphics/Bitmap$Config;

    .line 2
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lma/b;->b:Landroid/net/Uri;

    return-void
.end method

.method public static a(II)I
    .locals 3

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    return v0

    :cond_0
    if-gt p0, p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    mul-int v2, v1, v1

    :try_start_0
    div-int v2, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v2, p1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return v1

    :catch_0
    return v0
.end method

.method public static final b(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 3
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v1, v1, v4

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    .line 7
    invoke-static {v1, p1}, Lma/b;->a(II)I

    move-result p1

    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 10
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 11
    invoke-static {p1, p0, v3}, Lma/b;->f(Landroid/graphics/Bitmap;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static c(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    .line 5
    invoke-static {p0, v0, p1}, Lma/b;->b(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/net/Uri;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v2, "Orientation"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static e(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 4
    invoke-virtual {v5, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 7
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/graphics/Bitmap;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p1}, Lma/b;->d(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lma/b;->e(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method
