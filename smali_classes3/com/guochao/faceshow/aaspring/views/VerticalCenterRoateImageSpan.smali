.class public Lcom/guochao/faceshow/aaspring/views/VerticalCenterRoateImageSpan;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalCenterRoateImageSpan;->a:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    instance-of p3, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_1

    .line 3
    move-object p3, p2

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int/2addr p8, p6

    .line 6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p3

    div-int/lit8 p8, p8, 0x2

    add-int/2addr p8, p6

    int-to-float p3, p8

    .line 7
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p3, 0x41a00000    # 20.0f

    .line 8
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    .line 9
    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/VerticalCenterRoateImageSpan;->a:F

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p5, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 4
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p3, p1

    .line 5
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p4

    .line 6
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x4

    sub-int p4, p1, p3

    add-int/2addr p1, p3

    neg-int p1, p1

    .line 7
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 9
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 10
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 11
    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public setRoateX(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalCenterRoateImageSpan;->a:F

    return-void
.end method
