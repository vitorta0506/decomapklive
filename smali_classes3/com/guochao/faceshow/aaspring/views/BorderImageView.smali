.class public Lcom/guochao/faceshow/aaspring/views/BorderImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/BorderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/BorderImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#9671F0"

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->c:I

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->a:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->b:I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->a:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v5, v0, v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->b:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/BorderImageView;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    .line 5
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
