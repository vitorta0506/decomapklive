.class public Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field b:Landroid/graphics/Paint;

.field c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a:Z

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a:Z

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a()V

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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a:Z

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    int-to-float p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->c:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->c:F

    sub-float v3, v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->b:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBottomEnable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->a:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
