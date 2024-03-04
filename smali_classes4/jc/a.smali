.class public Ljc/a;
.super Lgi/a;
.source "SourceFile"


# static fields
.field private static d:I = 0x19

.field private static e:I = 0x1


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Ljc/a;->d:I

    sget v1, Ljc/a;->e:I

    invoke-direct {p0, v0, v1}, Ljc/a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget v0, Ljc/a;->e:I

    invoke-direct {p0, p1, v0}, Ljc/a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lgi/a;-><init>()V

    .line 4
    iput p1, p0, Ljc/a;->b:I

    .line 5
    iput p2, p0, Ljc/a;->c:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
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
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 3
    iget p5, p0, Ljc/a;->c:I

    div-int/2addr p1, p5

    .line 4
    div-int/2addr p4, p5

    .line 5
    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p2, p1, p4, p5}, Lg0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p3, p1}, Ljc/a;->b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 7
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    iget p4, p0, Ljc/a;->c:I

    int-to-float p5, p4

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p5, v0, p5

    int-to-float p4, p4

    div-float/2addr v0, p4

    invoke-virtual {p2, p5, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 9
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    const/4 p5, 0x2

    .line 10
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 p5, 0x0

    .line 11
    invoke-virtual {p2, p3, p5, p5, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 12
    sget-object p2, Lcom/google/android/renderscript/Toolkit;->INSTANCE:Lcom/google/android/renderscript/Toolkit;

    iget p3, p0, Ljc/a;->b:I

    invoke-virtual {p2, p1, p3}, Lcom/google/android/renderscript/Toolkit;->blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljc/a;

    if-eqz v0, :cond_0

    check-cast p1, Ljc/a;

    iget v0, p1, Ljc/a;->b:I

    iget v1, p0, Ljc/a;->b:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Ljc/a;->c:I

    iget v0, p0, Ljc/a;->c:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljc/a;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    const v1, -0x626416e1    # -4.12692E-21f

    add-int/2addr v1, v0

    iget v0, p0, Ljc/a;->c:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/a;->c:I

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

    const-string v1, "com.image.glide.transform.BlurTransformation.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Ljc/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Le0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
