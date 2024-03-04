.class public Lcom/guochao/faceshow/views/r;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 3
    iget p4, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p4, p7

    add-int/2addr p4, p7

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, p4

    .line 5
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
