.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f027e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x2c

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->b:I

    const/16 v0, 0x12

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->c:I

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->a:Ljava/lang/String;

    const/high16 v0, 0x42300000    # 44.0f

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->b:I

    const/high16 v0, 0x41900000    # 18.0f

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->c:I

    .line 7
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;->bindTextView(Landroid/widget/TextView;)V

    .line 8
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->b:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->c:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->b:I

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->c:I

    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/request/a;->a0(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d$a;

    invoke-direct {p2, p0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->b:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->c:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;

    invoke-interface {v1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;

    .line 8
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-ne v3, p0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-int/2addr p8, p6

    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p3

    div-int/lit8 p8, p8, 0x2

    add-int/2addr p8, p6

    int-to-float p3, p8

    .line 4
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p2, p1

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->c:I

    .line 4
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x4

    sub-int p3, p1, p2

    add-int/2addr p1, p2

    neg-int p1, p1

    .line 5
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 6
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 7
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 8
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 9
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;->b:I

    return p1
.end method
