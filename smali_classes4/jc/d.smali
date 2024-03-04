.class public Ljc/d;
.super Lcom/bumptech/glide/load/resource/bitmap/j;
.source "SourceFile"


# instance fields
.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:Z


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    .line 5
    invoke-direct {p0, p1, p2}, Ljc/d;->b(FI)V

    return-void
.end method

.method public constructor <init>(FIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    .line 2
    iput-boolean p3, p0, Ljc/d;->e:Z

    .line 3
    invoke-direct {p0, p1, p2}, Ljc/d;->b(FI)V

    return-void
.end method

.method private b(FI)V
    .locals 1

    .line 1
    iput p1, p0, Ljc/d;->d:F

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ljc/d;->c:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4
    iget-object p1, p0, Ljc/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object p1, p0, Ljc/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Ljc/d;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Ljc/d;->c:Landroid/graphics/Paint;

    iget p2, p0, Ljc/d;->d:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public a(Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/j;->transform(Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lg0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 5
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 9
    iget v1, p0, Ljc/d;->d:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 10
    invoke-virtual {p3, p2, p2, p2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 11
    iget-boolean p4, p0, Ljc/d;->e:Z

    if-eqz p4, :cond_1

    .line 12
    iget p4, p0, Ljc/d;->d:F

    div-float/2addr p4, v0

    sub-float p4, p2, p4

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p4, v0

    iget-object v0, p0, Ljc/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p3, p2, p2, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 13
    :cond_1
    iget p4, p0, Ljc/d;->d:F

    div-float/2addr p4, v0

    sub-float p4, p2, p4

    iget-object v0, p0, Ljc/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p3, p2, p2, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p3, p2, p2, p2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljc/d;

    if-eqz v0, :cond_0

    check-cast p1, Ljc/d;

    iget p1, p1, Ljc/d;->d:F

    iget v0, p0, Ljc/d;->d:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.image.glide.transform.GlideCircleWithBorder3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/d;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljc/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected transform(Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Lg0/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3, p4}, Ljc/d;->a(Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.image.glide.transform.GlideCircleWithBorder3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/d;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljc/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Le0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
