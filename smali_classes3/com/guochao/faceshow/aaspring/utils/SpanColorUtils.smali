.class public Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalTextSpan;,
        Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 4
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v2, 0x11

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static append(Landroid/text/SpannableStringBuilder;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v2, 0x11

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static appendSpanner(Landroid/content/Context;FLandroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 4

    const-string v0, "  "

    .line 9
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 11
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    .line 12
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p0, 0x0

    .line 14
    invoke-virtual {v2, p0, p0}, Landroid/widget/TextView;->measure(II)V

    .line 15
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float v0, v0

    mul-float v0, v0, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    float-to-int p1, p1

    .line 16
    invoke-virtual {p2, p0, p0, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    new-instance p0, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const/16 v0, 0x11

    invoke-virtual {p3, p0, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p0, " "

    .line 18
    invoke-virtual {p3, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p3
.end method

.method public static appendSpanner(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 5

    const-string v0, "  "

    .line 1
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    int-to-float p0, v3

    int-to-float v0, v0

    mul-float v0, v0, p0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    float-to-int p0, p0

    .line 6
    invoke-virtual {p1, v2, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x11

    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p0, " "

    .line 8
    invoke-virtual {p2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p2
.end method

.method public static appendSpannerDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const-string v0, "  "

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v2, v2

    mul-float v2, v2, v5

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    float-to-int v3, v5

    .line 8
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;

    invoke-direct {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v3, 0x11

    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, " "

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static appendSpannerRes(Landroid/widget/TextView;I)V
    .locals 5

    const-string v0, "  "

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 7
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;

    invoke-direct {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v3, 0x11

    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, " "

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static containsChar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "[A-Za-z]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getCharIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_3

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 8
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 9
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_1
    if-ltz v2, :cond_6

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 13
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 14
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method public static getFirstCharIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static setColorSpan(ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    const/16 p2, 0x21

    invoke-virtual {p1, v1, v0, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static setColorSpan(ILandroid/text/SpannableStringBuilder;Ljava/lang/String;F)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 6
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    const/16 v2, 0x21

    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p0, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p0, v0, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static setCutSpannerString(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->getFirstCharIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/16 v3, 0x12

    if-ltz v2, :cond_2

    const/4 v4, 0x3

    add-int v5, v4, p3

    add-int/lit8 v5, v5, 0x1

    if-le v2, v5, :cond_1

    sub-int p3, v2, p3

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v0, p3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    const-string v5, "..."

    .line 5
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    sub-int/2addr v0, p3

    sub-int/2addr v0, v4

    sub-int/2addr v2, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    :goto_1
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    .line 10
    invoke-virtual {v1, p3, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setSpannerSize(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x12

    if-lez p1, :cond_1

    .line 6
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v3, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1, v3, v0, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static varargs setSpannerString(Landroid/widget/TextView;II[Ljava/lang/String;)V
    .locals 8

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 12
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p3, v5

    .line 13
    invoke-static {v0, v6}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->getCharIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p3

    const/16 v0, 0x12

    if-lez p3, :cond_3

    .line 15
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p2, v5, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 18
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 19
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    add-int/2addr v4, v5

    .line 20
    invoke-virtual {v1, v6, v7, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 21
    :cond_3
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p2, v3, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 22
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->getFirstCharIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v2, 0x12

    if-ltz v0, :cond_1

    .line 4
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 6
    invoke-virtual {v1, v3, v0, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
