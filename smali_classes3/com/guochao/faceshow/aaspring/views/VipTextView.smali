.class public Lcom/guochao/faceshow/aaspring/views/VipTextView;
.super Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipTextView;->a:Landroid/graphics/Rect;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/VipTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipTextView;->a:Landroid/graphics/Rect;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/VipTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipTextView;->a:Landroid/graphics/Rect;

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/VipTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const-string v0, "#ffb423"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v5, v1

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/VipTextView;->a:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const-string v2, "#A05400"

    .line 6
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v2, v10

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/VipTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/VipTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8
    new-instance v11, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v6, v2

    const-string v2, "#ffeac8"

    .line 9
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v12, "#ffb423"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 10
    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 11
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/VipTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/VipTextView;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
