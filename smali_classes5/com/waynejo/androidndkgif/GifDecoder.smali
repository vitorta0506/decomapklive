.class public Lcom/waynejo/androidndkgif/GifDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:[Landroid/graphics/Bitmap;

.field private d:[I

.field private e:I

.field private f:Z


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

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/waynejo/androidndkgif/GifDecoder;->a:I

    .line 3
    iput v0, p0, Lcom/waynejo/androidndkgif/GifDecoder;->b:I

    new-array v1, v0, [Landroid/graphics/Bitmap;

    .line 4
    iput-object v1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->c:[Landroid/graphics/Bitmap;

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->d:[I

    .line 6
    iput-boolean v0, p0, Lcom/waynejo/androidndkgif/GifDecoder;->f:Z

    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeGetDelay(JI)I
.end method

.method private native nativeGetFrame(JI)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetFrameCount(J)I
.end method

.method private native nativeGetHeight(J)I
.end method

.method private native nativeGetWidth(J)I
.end method

.method private native nativeInit()J
.end method

.method private native nativeLoad(JLjava/lang/String;)Z
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/waynejo/androidndkgif/GifDecoder;->e:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->d:[I

    rem-int/2addr p1, v0

    aget p1, v1, p1

    return p1
.end method

.method public b(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget v0, p0, Lcom/waynejo/androidndkgif/GifDecoder;->e:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->c:[Landroid/graphics/Bitmap;

    rem-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/waynejo/androidndkgif/GifDecoder;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/waynejo/androidndkgif/GifDecoder;->b:I

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeInit()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeLoad(JLjava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeClose(J)V

    return v2

    .line 4
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeGetWidth(J)I

    move-result p1

    iput p1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->a:I

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeGetHeight(J)I

    move-result p1

    iput p1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->b:I

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeGetFrameCount(J)I

    move-result p1

    iput p1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->e:I

    .line 7
    new-array v3, p1, [Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/waynejo/androidndkgif/GifDecoder;->c:[Landroid/graphics/Bitmap;

    .line 8
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->d:[I

    .line 9
    :goto_0
    iget p1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->e:I

    if-ge v2, p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->c:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeGetFrame(JI)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, p1, v2

    .line 11
    iget-object p1, p0, Lcom/waynejo/androidndkgif/GifDecoder;->d:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeGetDelay(JI)I

    move-result v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->nativeClose(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/waynejo/androidndkgif/GifDecoder;->a:I

    return v0
.end method
