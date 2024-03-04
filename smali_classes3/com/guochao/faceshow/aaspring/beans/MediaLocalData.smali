.class public Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$SelectHolderType;
    }
.end annotation


# static fields
.field public static final ADD_ALL:I = 0x6a

.field public static final ADD_IMAGE:I = 0x68

.field public static final ADD_VIDEO:I = 0x69

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
            ">;"
        }
    .end annotation
.end field

.field public static final NORMAL_ALL:I = 0x67

.field public static final NORMAL_IMAGE:I = 0x65

.field public static final NORMAL_VIDEO:I = 0x66


# instance fields
.field private fileSmallUrl:Ljava/lang/String;

.field private fileUrl:Ljava/lang/String;

.field private height:I

.field private id:J

.field private transient isLoading:Z

.field private transient mUri:Landroid/net/Uri;

.field private mediaType:I
    .annotation build Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$SelectHolderType;
    .end annotation
.end field

.field private thumb:Ljava/lang/String;

.field private type:I

.field private videoPath:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->height:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->width:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->height:I

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->width:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->id:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->videoPath:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mediaType:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->fileUrl:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->type:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->height:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->width:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->fileSmallUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getUgcPublishPath(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Ljava/lang/String;IZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->compressToFile(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method private compressToFile(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Ljava/lang/String;IZ)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->justCopyFile(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    .line 6
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 7
    invoke-static {v2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8
    invoke-static {v2}, Lma/c;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_0
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 12
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 13
    div-int/2addr v3, p3

    if-gt v3, v1, :cond_2

    const/4 v3, 0x1

    .line 14
    :cond_2
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p4, :cond_3

    .line 15
    :try_start_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3

    .line 16
    invoke-static {p3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 17
    invoke-static {p3}, Lma/c;->a(Ljava/io/Closeable;)V

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    const/4 v0, 0x2

    invoke-static {p3, p4, v0}, Lcom/guochao/faceshow/aaspring/utils/LutUtils;->applyLutToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getUri()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3

    .line 20
    invoke-static {p3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 21
    invoke-static {p3}, Lma/c;->a(Ljava/io/Closeable;)V

    move-object p3, p4

    .line 22
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 23
    new-instance p4, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p4, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v0, "Orientation"

    .line 24
    invoke-virtual {p4, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p4

    const/4 v0, 0x3

    if-eq p4, v0, :cond_6

    const/4 v0, 0x6

    if-eq p4, v0, :cond_5

    const/16 v0, 0x8

    if-eq p4, v0, :cond_4

    const/4 p4, 0x0

    goto :goto_2

    :cond_4
    const/16 p4, 0x10e

    goto :goto_2

    :cond_5
    const/16 p4, 0x5a

    goto :goto_2

    :cond_6
    const/16 p4, 0xb4

    .line 25
    :goto_2
    invoke-direct {p0, p3, p4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 26
    :try_start_2
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p4}, Ljava/io/File;->deleteOnExit()V

    .line 28
    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 29
    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_7
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    const-string v3, ".png"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    const/16 v3, 0x64

    if-eqz p4, :cond_8

    .line 32
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p3, p2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    goto :goto_4

    .line 33
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    const-string v4, ".jpg"

    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p4, ".jpeg"

    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    goto :goto_4

    .line 34
    :cond_a
    :goto_3
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p3, p2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    .line 35
    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    if-eqz p3, :cond_b

    .line 36
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setHeight(I)V

    .line 37
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setWidth(I)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setType(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :cond_b
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception p4

    .line 40
    :try_start_5
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz p3, :cond_c

    .line 41
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    return p2

    :catchall_0
    move-exception p2

    move-object v4, v0

    goto :goto_6

    :catch_2
    move-object v4, v0

    goto :goto_8

    :catchall_1
    move-exception p2

    .line 43
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception p4

    .line 44
    :try_start_7
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-eqz p3, :cond_d

    .line 45
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    :cond_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 47
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 48
    :catch_4
    :goto_8
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_9

    :catch_5
    move-exception p2

    .line 49
    :try_start_9
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    if-eqz p3, :cond_e

    .line 50
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_a
    return v2
.end method

.method public static getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    const/4 v6, 0x0

    const-string v4, "_data=? "

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string p1, "content://media/external/images/media"

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 12
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const-string v1, "relative_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "_data"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 15
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getUgcPublishPath(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ugc_files/image/to_publish/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private justCopyFile(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/GifUtils;->oldGifToNewGif(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mUri:Landroid/net/Uri;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v2}, Lcom/guochao/faceshow/utils/FileUtil;->copyUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    return v1

    .line 4
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 p2, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    .line 10
    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 13
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 15
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_2
    move-object p2, v3

    goto :goto_8

    :catch_2
    move-exception p1

    move-object v0, p2

    :goto_3
    move-object p2, v3

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v0, p2

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v0, p2

    .line 17
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p2, :cond_4

    .line 18
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 20
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_7
    return v2

    :catchall_3
    move-exception p1

    :goto_8
    if-eqz p2, :cond_6

    .line 21
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception p2

    goto :goto_a

    :cond_6
    :goto_9
    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    .line 23
    :goto_a
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_7
    :goto_b
    throw p1

    :cond_8
    :goto_c
    return v2
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p2, :cond_1

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 2
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setHeight(I)V

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setWidth(I)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setType(I)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2

    :cond_1
    return-object p1
.end method


# virtual methods
.method public copy(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
            "Z)",
            "Lio/reactivex/k<",
            "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData$2;-><init>(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    .line 3
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayThumbUri()Landroid/net/Uri;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getImageContentUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileSmallUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->fileSmallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->height:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->id:J

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mediaType:I

    return v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mediaType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->width:I

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->isLoading:Z

    return v0
.end method

.method public setFileSmallUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->fileSmallUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->height:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->id:J

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->isLoading:Z

    return-void
.end method

.method public setMediaType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mediaType:I

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->type:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->videoPath:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->thumb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->mediaType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->fileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->fileSmallUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
