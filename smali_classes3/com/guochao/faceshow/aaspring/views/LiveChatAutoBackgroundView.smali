.class public Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:I

.field c:I

.field d:I

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "#66000000"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->b:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "#66000000"

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->b:I

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "#66000000"

    .line 8
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->b:I

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    sget-object v1, Lcom/guochao/faceshow/R$styleable;->LiveChatAutoBackgroundView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "#40000000"

    .line 2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->b:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a:Landroid/graphics/Paint;

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->b:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 10
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->c:I

    .line 11
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->d:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    .line 3
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    :cond_0
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v2

    int-to-float v8, v1

    .line 4
    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->d:I

    int-to-float v9, v1

    int-to-float v10, v1

    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v2

    int-to-float v1, v1

    .line 5
    iget v2, v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->c:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v2

    move-object/from16 v19, v4

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 6
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getPaintColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->b:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01e2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0bec

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->f:Landroid/widget/TextView;

    return-void
.end method

.method public setPaintColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->b:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->b:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
