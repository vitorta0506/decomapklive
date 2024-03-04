.class public final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\'B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J4\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016JR\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u0016\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR$\u0010 \u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00158\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0017\"\u0004\u0008!\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;",
        "Landroid/graphics/Paint;",
        "paint",
        "",
        "text",
        "",
        "start",
        "end",
        "Landroid/graphics/Paint$FontMetricsInt;",
        "fontMetricsInt",
        "getSize",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "x",
        "top",
        "y",
        "bottom",
        "",
        "draw",
        "Landroid/graphics/drawable/Drawable;",
        "defaultDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getDefaultDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "",
        "url",
        "Ljava/lang/String;",
        "size",
        "I",
        "value",
        "icon",
        "setIcon",
        "(Landroid/graphics/drawable/Drawable;)V",
        "Landroid/widget/TextView;",
        "textView",
        "<init>",
        "(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/widget/TextView;)V",
        "IconTarget",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final defaultDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private icon:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final size:I

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "defaultDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->url:Ljava/lang/String;

    const/high16 v0, 0x41700000    # 15.0f

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->size:I

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->icon:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/request/a;->a0(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 9
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    return-void
.end method

.method public static final synthetic access$setIcon(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->icon:Landroid/graphics/drawable/Drawable;

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->size:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_2

    .line 6
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;

    .line 8
    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;

    const-string v2, "avatarSpans"

    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-ne v3, p0, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "paint"

    invoke-static {p9, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->icon:Landroid/graphics/drawable/Drawable;

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

.method public final getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "paint"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p2, p1

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->size:I

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
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;->size:I

    return p1
.end method
