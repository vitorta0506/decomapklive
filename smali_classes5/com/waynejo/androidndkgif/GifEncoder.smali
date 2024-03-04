.class public Lcom/waynejo/androidndkgif/GifEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waynejo/androidndkgif/GifEncoder$EncodingType;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "androidndkgif"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/waynejo/androidndkgif/GifEncoder;->a:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/waynejo/androidndkgif/GifEncoder;->b:I

    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeEncodeFrame(JLandroid/graphics/Bitmap;I)Z
.end method

.method private native nativeInit(IILjava/lang/String;II)J
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/waynejo/androidndkgif/GifEncoder;->a:J

    invoke-direct {p0, v0, v1}, Lcom/waynejo/androidndkgif/GifEncoder;->nativeClose(J)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/waynejo/androidndkgif/GifEncoder;->a:J

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;I)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/waynejo/androidndkgif/GifEncoder;->a:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/waynejo/androidndkgif/GifEncoder;->c:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/waynejo/androidndkgif/GifEncoder;->d:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/waynejo/androidndkgif/GifEncoder;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/waynejo/androidndkgif/GifEncoder;->nativeEncodeFrame(JLandroid/graphics/Bitmap;I)Z

    return v3

    .line 4
    :cond_1
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/waynejo/androidndkgif/GifEncoder;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/waynejo/androidndkgif/GifEncoder;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "The size specified at initialization differs from the size of the image.\n expected:(%d, %d) actual:(%d,%d)"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/waynejo/androidndkgif/GifEncoder$EncodingType;->ENCODING_TYPE_NORMAL_LOW_MEMORY:Lcom/waynejo/androidndkgif/GifEncoder$EncodingType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/waynejo/androidndkgif/GifEncoder;->d(IILjava/lang/String;Lcom/waynejo/androidndkgif/GifEncoder$EncodingType;)V

    return-void
.end method

.method public d(IILjava/lang/String;Lcom/waynejo/androidndkgif/GifEncoder$EncodingType;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/waynejo/androidndkgif/GifEncoder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/waynejo/androidndkgif/GifEncoder;->a()V

    .line 3
    :cond_0
    iput p1, p0, Lcom/waynejo/androidndkgif/GifEncoder;->c:I

    .line 4
    iput p2, p0, Lcom/waynejo/androidndkgif/GifEncoder;->d:I

    .line 5
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget v10, p0, Lcom/waynejo/androidndkgif/GifEncoder;->b:I

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/waynejo/androidndkgif/GifEncoder;->nativeInit(IILjava/lang/String;II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/waynejo/androidndkgif/GifEncoder;->a:J

    cmp-long p3, v2, p1

    if-eqz p3, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method
