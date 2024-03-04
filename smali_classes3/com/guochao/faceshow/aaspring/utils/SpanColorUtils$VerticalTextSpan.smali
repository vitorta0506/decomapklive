.class public Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerticalTextSpan"
.end annotation


# instance fields
.field private textSize:F

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;->textSize:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;->textSize:F

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;->typeFace:Landroid/graphics/Typeface;

    return-void
.end method

.method private getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;
    .locals 1

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;->typeFace:Landroid/graphics/Typeface;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;->textSize:F

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-object v0
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
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    invoke-direct {p0, p9}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;->getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget p9, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p9, p7

    add-int/2addr p9, p7

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p9, p4

    div-int/lit8 p9, p9, 0x2

    add-int/2addr p8, p6

    div-int/lit8 p8, p8, 0x2

    sub-int/2addr p9, p8

    sub-int/2addr p7, p9

    int-to-float p4, p7

    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;->getCustomTextPaint(Landroid/graphics/Paint;)Landroid/text/TextPaint;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
