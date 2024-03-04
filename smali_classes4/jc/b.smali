.class public Ljc/b;
.super Lgi/a;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:F

.field private g:Z

.field private h:Ljc/f;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/high16 v0, 0x40e00000    # 7.0f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v6, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljc/b;-><init>(ZZZZF)V

    return-void
.end method

.method public constructor <init>(ZZZZF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lgi/a;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ljc/b;->g:Z

    .line 4
    iput-boolean p1, p0, Ljc/b;->b:Z

    .line 5
    iput-boolean p2, p0, Ljc/b;->c:Z

    .line 6
    iput-boolean p3, p0, Ljc/b;->d:Z

    .line 7
    iput-boolean p4, p0, Ljc/b;->e:Z

    .line 8
    iput p5, p0, Ljc/b;->f:F

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.image.glide.transform.CornerBitmapTransform_3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljc/b;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "bt1"

    goto :goto_0

    :cond_0
    const-string v1, "bt0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v1, p0, Ljc/b;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "br1"

    goto :goto_1

    :cond_1
    const-string v1, "br0"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean v1, p0, Ljc/b;->b:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "tl1"

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "tl0"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Ljc/b;->c:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "tr1"

    goto :goto_3

    :cond_3
    const-string/jumbo v1, "tr0"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/b;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Ljc/b;->h:Ljc/f;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljc/f;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const-string v1, "blur0"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljc/b;->g:Z

    if-eqz v1, :cond_5

    const-string v1, "cc1"

    goto :goto_5

    :cond_5
    const-string v1, "cc0"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(II)Landroid/graphics/Path;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 2
    iget v2, p0, Ljc/b;->f:F

    .line 3
    iget-boolean v3, p0, Ljc/b;->b:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 4
    :cond_0
    iget-boolean v3, p0, Ljc/b;->c:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 5
    :cond_1
    iget-boolean v3, p0, Ljc/b;->e:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 6
    :cond_2
    iget-boolean v3, p0, Ljc/b;->d:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 7
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lg0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Ljc/b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2, p3, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/a0;->b(Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 3
    iget-object v0, p0, Ljc/b;->h:Ljc/f;

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 4
    invoke-virtual/range {v0 .. v5}, Ljc/f;->a(Landroid/content/Context;Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 5
    iget-object p1, p0, Ljc/b;->h:Ljc/f;

    iget p1, p1, Ljc/f;->h:I

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    mul-int p1, p1, p3

    iget-object p3, p0, Ljc/b;->h:Ljc/f;

    iget p3, p3, Ljc/f;->h:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int p3, p3, v0

    const/4 v0, 0x0

    invoke-static {v3, p1, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p2, p1, p3, v0}, Lg0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-direct {p0, p4, p5}, Ljc/b;->c(II)Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 10
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    const/4 p4, 0x0

    invoke-virtual {p2, v3, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljc/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljc/b;

    .line 3
    invoke-virtual {p1}, Ljc/b;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Ljc/b;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Ljc/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljc/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    iget-object v0, p0, Ljc/b;->h:Ljc/f;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljc/f;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    :cond_0
    return-void
.end method
