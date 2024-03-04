.class public Ljc/c;
.super Lgi/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgi/a;-><init>()V

    .line 2
    iput-object p1, p0, Ljc/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
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
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-interface {p2, p4, p5, p1}, Lg0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, p3, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    const/4 v2, -0x1

    .line 5
    invoke-virtual {p3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 6
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x3

    .line 7
    iput v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v2, 0x7f0d0361

    invoke-virtual {p3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    .line 9
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v2, 0x7f0a0bb2

    .line 10
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BuzzCast \r\nID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljc/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5728\u4e48 \r\nID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljc/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v2, 0x186a0

    const/high16 v3, -0x80000000

    .line 14
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p3, v4, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 15
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 16
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 17
    invoke-virtual {p3, v4, v4, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 18
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 19
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 21
    invoke-virtual {p3, v6}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v6, 0x40400000    # 3.0f

    .line 22
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    add-int/2addr v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    if-le v6, p4, :cond_1

    int-to-float p3, v2

    mul-float p3, p3, v8

    div-float/2addr p3, v7

    int-to-float v6, p4

    :goto_1
    div-float/2addr p3, v6

    goto :goto_2

    :cond_1
    const/high16 v6, 0x41000000    # 8.0f

    .line 23
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    add-int/2addr v6, v3

    if-le v6, p5, :cond_2

    int-to-float p3, v3

    mul-float p3, p3, v8

    div-float/2addr p3, v7

    int-to-float v6, p5

    goto :goto_1

    :cond_2
    :goto_2
    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    cmpg-float v0, p3, v8

    if-gez v0, :cond_3

    int-to-float v0, v2

    mul-float v0, v0, p3

    float-to-int v0, v0

    int-to-float v2, v3

    mul-float v2, v2, p3

    float-to-int p3, v2

    .line 24
    invoke-static {v5, v0, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 25
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    sub-int/2addr p4, p3

    int-to-float p3, p4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p5, p4

    const/high16 p4, 0x40a00000    # 5.0f

    invoke-static {p4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p4

    sub-int/2addr p5, p4

    int-to-float p4, p5

    invoke-virtual {p2, v5, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljc/c;

    if-eqz v0, :cond_0

    check-cast p1, Ljc/c;

    iget-object p1, p1, Ljc/c;->b:Ljava/lang/String;

    iget-object v0, p0, Ljc/c;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.image.glide.transform.FaceCastWaterMarkTransformation1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljc/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceCastWaterMarkTransformation{mUserId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljc/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    const-string v1, "com.image.glide.transform.FaceCastWaterMarkTransformation1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljc/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
