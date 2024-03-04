.class public Lorg/libpag/ImageCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALPHA_8:I = 0x1

.field private static final ARGB_8888_PREMULTIPLIED:I = 0x2

.field private static final ARGB_8888_UNPREMULTIPLIED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetExifInterfaceFromBytes([B)Landroid/media/ExifInterface;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 3
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method private static GetExifInterfaceFromPath(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static GetSizeFromBytes([B)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 4
    :try_start_0
    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    invoke-static {p0}, Lorg/libpag/ImageCodec;->GetExifInterfaceFromBytes([B)Landroid/media/ExifInterface;

    move-result-object p0

    .line 6
    invoke-static {p0, v1}, Lorg/libpag/ImageCodec;->GetSizeFromOptions(Landroid/media/ExifInterface;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static GetSizeFromOptions(Landroid/media/ExifInterface;Landroid/graphics/BitmapFactory$Options;)[I
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    const-string v3, "Orientation"

    .line 3
    invoke-virtual {p0, v3, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    const/4 v3, 0x6

    if-eq p0, v3, :cond_0

    const/4 v3, 0x7

    if-eq p0, v3, :cond_0

    const/16 v3, 0x8

    if-eq p0, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :cond_1
    :goto_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput v0, p0, p1

    aput v1, p0, v2

    return-object p0
.end method

.method private static GetSizeFromPath(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    invoke-static {p0}, Lorg/libpag/ImageCodec;->GetExifInterfaceFromPath(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0

    .line 6
    invoke-static {p0, v1}, Lorg/libpag/ImageCodec;->GetSizeFromOptions(Landroid/media/ExifInterface;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static MakeOptions(I)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object p0
.end method

.method private static ReadPixels(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;Ljava/nio/ByteBuffer;)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "Orientation"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    .line 2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 5
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 8
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 10
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 11
    :pswitch_5
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 12
    :pswitch_6
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 13
    :pswitch_7
    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    return-void

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ReadPixelsFromBytes([BILjava/nio/ByteBuffer;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/libpag/ImageCodec;->MakeOptions(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/libpag/ImageCodec;->GetExifInterfaceFromBytes([B)Landroid/media/ExifInterface;

    move-result-object p0

    .line 5
    invoke-static {p1, p0, p2}, Lorg/libpag/ImageCodec;->ReadPixels(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private static ReadPixelsFromPath(Ljava/lang/String;ILjava/nio/ByteBuffer;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/libpag/ImageCodec;->MakeOptions(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/libpag/ImageCodec;->GetExifInterfaceFromPath(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0

    .line 5
    invoke-static {p1, p0, p2}, Lorg/libpag/ImageCodec;->ReadPixels(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
