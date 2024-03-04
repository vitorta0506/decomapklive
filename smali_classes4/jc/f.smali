.class public Ljc/f;
.super Ljc/a;
.source "SourceFile"


# instance fields
.field private f:I

.field private g:I

.field public h:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Ljc/a;-><init>(II)V

    const-string v0, "#8f000000"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljc/f;->f:I

    .line 3
    iput p1, p0, Ljc/f;->g:I

    .line 4
    iput p2, p0, Ljc/f;->h:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Ljc/f;-><init>(II)V

    .line 6
    iput p3, p0, Ljc/f;->f:I

    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;Lg0/d;III)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p2, p3, v0}, Lg0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 4
    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {v0, p0, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float v4, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p5}, Ljc/a;->a(Landroid/content/Context;Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget p3, p0, Ljc/f;->f:I

    invoke-static {p1, p2, p4, p5, p3}, Ljc/f;->c(Landroid/graphics/Bitmap;Lg0/d;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljc/f;

    if-eqz v0, :cond_0

    check-cast p1, Ljc/f;

    iget v0, p1, Ljc/f;->g:I

    iget v1, p0, Ljc/f;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Ljc/f;->h:I

    iget v1, p0, Ljc/f;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljc/f;->f:I

    iget p1, p1, Ljc/f;->f:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Ljc/f;->g:I

    mul-int/lit16 v0, v0, 0x3e8

    const v1, 0x54446d52

    add-int/2addr v1, v0

    iget v0, p0, Ljc/f;->h:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    iget v0, p0, Ljc/f;->f:I

    const v2, 0x186a0

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljc/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MaskBlurTransform(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/f;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.image.glide.transform.MaskBlurTransform.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/f;->g:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/f;->h:I

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/f;->f:I

    mul-int/lit16 v1, v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Le0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
