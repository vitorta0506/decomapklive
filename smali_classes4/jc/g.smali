.class public Ljc/g;
.super Lcom/bumptech/glide/load/resource/bitmap/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Ljc/g;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, -0x4fa708e4

    return v0
.end method

.method protected transform(Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lg0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lg0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p3, p3, v0

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 4
    invoke-virtual {p4, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 5
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    sget-object v0, Le0/b;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.image.glide.transform.ScaleTopTransform2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
