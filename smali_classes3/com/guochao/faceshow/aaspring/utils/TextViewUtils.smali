.class public Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calTextWidth(ILjava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p0, p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static calTextWidth(Landroid/text/TextPaint;Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static containsAllEmoji(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->isEmojiCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static getStaticLayout(Landroid/widget/TextView;I)Landroid/text/StaticLayout;
    .locals 13

    .line 1
    new-instance v12, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v7

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v10

    const/4 v2, 0x0

    move-object v0, v12

    move v5, p1

    move v11, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v12
.end method

.method private static getStaticLayout23(Landroid/widget/TextView;I)Landroid/text/StaticLayout;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v3, v1, v2, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 4
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 5
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 16
    :cond_2
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method public static getSubStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-gtz p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->length(Ljava/lang/String;)I

    move-result v0

    if-gt v0, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_5

    if-lt v2, p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    aget-char v3, p0, v1

    .line 7
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->isEmojiCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    aget-char v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const-string p0, "..."

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_3
    return-object p0
.end method

.method public static getTextViewLines(Landroid/widget/TextView;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getStaticLayout23(Landroid/widget/TextView;I)Landroid/text/StaticLayout;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getStaticLayout(Landroid/widget/TextView;I)Landroid/text/StaticLayout;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    if-le p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static isEmojiCharacter(C)Z
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmojiCharacter(I)Z
    .locals 1

    const/16 v0, 0x80

    if-gt v0, p0, :cond_0

    const/16 v0, 0x2af

    if-le p0, v0, :cond_18

    :cond_0
    const/16 v0, 0x300

    if-gt v0, p0, :cond_1

    const/16 v0, 0x3ff

    if-le p0, v0, :cond_18

    :cond_1
    const/16 v0, 0x600

    if-gt v0, p0, :cond_2

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_18

    :cond_2
    const/16 v0, 0xc00

    if-gt v0, p0, :cond_3

    const/16 v0, 0xc7f

    if-le p0, v0, :cond_18

    :cond_3
    const/16 v0, 0x1dc0

    if-gt v0, p0, :cond_4

    const/16 v0, 0x1dff

    if-le p0, v0, :cond_18

    :cond_4
    const/16 v0, 0x1e00

    if-gt v0, p0, :cond_5

    const/16 v0, 0x1eff

    if-le p0, v0, :cond_18

    :cond_5
    const/16 v0, 0x2000

    if-gt v0, p0, :cond_6

    const/16 v0, 0x209f

    if-le p0, v0, :cond_18

    :cond_6
    const/16 v0, 0x20d0

    if-gt v0, p0, :cond_7

    const/16 v0, 0x214f

    if-le p0, v0, :cond_18

    :cond_7
    const/16 v0, 0x2190

    if-gt v0, p0, :cond_8

    const/16 v0, 0x23ff

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2460

    if-gt v0, p0, :cond_9

    const/16 v0, 0x25ff

    if-le p0, v0, :cond_18

    :cond_9
    const/16 v0, 0x2600

    if-gt v0, p0, :cond_a

    const/16 v0, 0x27ef

    if-le p0, v0, :cond_18

    :cond_a
    const/16 v0, 0x2900

    if-gt v0, p0, :cond_b

    const/16 v0, 0x29ff

    if-le p0, v0, :cond_18

    :cond_b
    const/16 v0, 0x2b00

    if-gt v0, p0, :cond_c

    const/16 v0, 0x2bff

    if-le p0, v0, :cond_18

    :cond_c
    const/16 v0, 0x2c60

    if-gt v0, p0, :cond_d

    const/16 v0, 0x2c7f

    if-le p0, v0, :cond_18

    :cond_d
    const/16 v0, 0x2e00

    if-gt v0, p0, :cond_e

    const/16 v0, 0x2e7f

    if-le p0, v0, :cond_18

    :cond_e
    const v0, 0xa490

    if-gt v0, p0, :cond_f

    const v0, 0xa4cf

    if-le p0, v0, :cond_18

    :cond_f
    const v0, 0xe000

    if-gt v0, p0, :cond_10

    const v0, 0xf8ff

    if-le p0, v0, :cond_18

    :cond_10
    const v0, 0xfe00

    if-gt v0, p0, :cond_11

    const v0, 0xfe0f

    if-le p0, v0, :cond_18

    :cond_11
    const v0, 0xfe30

    if-gt v0, p0, :cond_12

    const v0, 0xfe4f

    if-le p0, v0, :cond_18

    :cond_12
    const v0, 0x1f000

    if-gt v0, p0, :cond_13

    const v0, 0x1f02f

    if-le p0, v0, :cond_18

    :cond_13
    const v0, 0x1f0a0

    if-gt v0, p0, :cond_14

    const v0, 0x1f0ff

    if-le p0, v0, :cond_18

    :cond_14
    const v0, 0x1f100

    if-gt v0, p0, :cond_15

    const v0, 0x1f64f

    if-le p0, v0, :cond_18

    :cond_15
    const v0, 0x1f680

    if-gt v0, p0, :cond_16

    const v0, 0x1f6ff

    if-le p0, v0, :cond_18

    :cond_16
    const v0, 0x1f910

    if-gt v0, p0, :cond_17

    const v0, 0x1f96b

    if-le p0, v0, :cond_18

    :cond_17
    const v0, 0x1f980

    if-gt v0, p0, :cond_19

    const v0, 0x1f9e0

    if-gt p0, v0, :cond_19

    :cond_18
    const/4 p0, 0x1

    goto :goto_0

    :cond_19
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLetter(C)Z
    .locals 0

    div-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 3
    aget-char v2, p0, v0

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static varargs setCustomBold(I[Landroid/widget/TextView;)V
    .locals 5
    .param p0    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 5
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 6
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs setCustomBold([Landroid/widget/TextView;)V
    .locals 1

    .line 1
    sget v0, Lcom/guochao/lib_base/R$dimen;->text_bold_level_4:I

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold(I[Landroid/widget/TextView;)V

    return-void
.end method

.method public static varargs setCustomBoldById(Landroid/app/Activity;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBoldById(Landroid/view/View;[I)V

    return-void
.end method

.method public static varargs setCustomBoldById(Landroid/view/View;[I)V
    .locals 5

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 4
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold([Landroid/widget/TextView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setGradientTextColor(Landroid/widget/TextView;III)V
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/text/TextPaint;->getTextSize()F

    move-result p3

    .line 2
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v4, p3, v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 6
    new-instance p3, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, p3

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    return-void
.end method

.method public static setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->length(Ljava/lang/String;)I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static subStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-gtz p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_5

    if-lt v2, p1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    aget-char v4, p0, v1

    .line 6
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->isEmojiCharacter(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    array-length v5, p0

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    aget-char v4, p0, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    array-length v4, p0

    sub-int/2addr v4, v6

    if-ne v1, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x2

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    add-int/2addr v1, v6

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "..."

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    const-string p0, ""

    return-object p0
.end method
