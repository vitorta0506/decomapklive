.class public Lea/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lea/d;->b:J

    .line 3
    iput-wide v0, p0, Lea/d;->c:J

    .line 4
    iput-object p1, p0, Lea/d;->a:Landroid/net/Uri;

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    shr-int/2addr p0, v1

    if-lt p0, p1, :cond_0

    shr-int/2addr v0, v1

    if-lt v0, p2, :cond_0

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    invoke-static {v0, p1, p2}, Lea/d;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Lcom/google/zxing/Result;
    .locals 9

    const-string v0, "\u8017\u65f6\uff1a"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lea/d;->b:J

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u89e3\u7801\uff1atime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lea/d;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecodeHandler"

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x190

    const/4 v4, 0x0

    const/16 v5, 0x1d

    if-lt v1, v5, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 5
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lea/d;->a:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7
    invoke-static {v1, v3, v3}, Lea/d;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 8
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lea/d;->a:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v4

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget-object v5, p0, Lea/d;->a:Landroid/net/Uri;

    invoke-static {v1, v5}, Lea/f;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1, v3, v3}, Lea/d;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-object v4

    .line 13
    :cond_1
    new-instance v3, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 14
    new-instance v5, Ljava/util/Hashtable;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/Hashtable;-><init>(I)V

    .line 15
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 16
    sget-object v7, Lea/b;->d:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 17
    sget-object v7, Lea/b;->e:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 18
    sget-object v7, Lea/b;->f:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 19
    sget-object v7, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v3, v5}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 21
    :try_start_1
    new-instance v5, Lcom/google/zxing/BinaryBitmap;

    new-instance v6, Lcom/google/zxing/common/HybridBinarizer;

    new-instance v7, Lea/a;

    invoke-direct {v7, v1}, Lea/a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v6, v7}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v5, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v3, v5}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v4

    const-string v1, "\u89e3\u6790\u7ed3\u679c"

    .line 22
    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lea/d;->c:J

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u7801\u6210\u529f\uff1atime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lea/d;->c:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lea/d;->c:J

    iget-wide v7, p0, Lea/d;->b:J

    sub-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "\u89e3\u6790\u7684\u56fe\u7247\u7ed3\u679c"

    const-string v3, "\u5931\u8d25"

    .line 26
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lea/d;->c:J

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u7801\u5931\u8d25\uff1atime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lea/d;->c:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lea/d;->c:J

    iget-wide v7, p0, Lea/d;->b:J

    sub-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v4
.end method
