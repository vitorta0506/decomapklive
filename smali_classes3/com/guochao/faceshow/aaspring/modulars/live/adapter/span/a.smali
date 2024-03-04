.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0089

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;->bindTextView(Landroid/widget/TextView;)V

    const/high16 p2, 0x41900000    # 18.0f

    .line 4
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->b:I

    .line 5
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->b:I

    invoke-virtual {p2, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    new-instance p2, Ljc/d;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Ljc/d;-><init>(FI)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->b:I

    invoke-virtual {p1, p2, p2}, Lcom/bumptech/glide/request/a;->a0(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

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
    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 6
    move-object v2, v0

    check-cast v2, Landroid/text/Spannable;

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;

    .line 8
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-ne v3, p0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->getDrawable()Landroid/graphics/drawable/Drawable;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->c:Landroid/graphics/drawable/Drawable;

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
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->b:I

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
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;->b:I

    return p1
.end method
