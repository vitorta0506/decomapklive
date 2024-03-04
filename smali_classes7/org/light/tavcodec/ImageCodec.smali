.class public Lorg/light/tavcodec/ImageCodec;
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

.method private static CreateBitmapFromBytes(Ljava/nio/ByteBuffer;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/light/tavcodec/ImageCodec;->MakeOptions(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/light/tavcodec/ByteBufferInputStream;

    invoke-direct {v1, p0}, Lorg/light/tavcodec/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static CreateBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/light/tavcodec/ImageCodec;->MakeOptions(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static GetOrientationFromBytes(Ljava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 2
    new-instance v1, Lorg/light/tavcodec/ByteBufferInputStream;

    invoke-direct {v1, p0}, Lorg/light/tavcodec/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v1, "Orientation"

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private static GetOrientationFromPath(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    .line 2
    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private static GetSizeFromBytes(Ljava/nio/ByteBuffer;)[I
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

    .line 4
    :try_start_0
    new-instance v3, Lorg/light/tavcodec/ByteBufferInputStream;

    invoke-direct {v3, p0}, Lorg/light/tavcodec/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x0

    .line 5
    invoke-static {v3, p0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    .line 6
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, v0, p0

    .line 7
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static GetSizeFromPath(Ljava/lang/String;)[I
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

    .line 4
    :try_start_0
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    .line 5
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, v0, p0

    .line 6
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

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
