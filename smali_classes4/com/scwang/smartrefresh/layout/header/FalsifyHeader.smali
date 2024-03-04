.class public Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# instance fields
.field protected d:Lwd/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->d:Lwd/i;

    if-eqz p1, :cond_0

    .line 2
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, p2}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->d:Lwd/i;

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, p2}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    .line 3
    invoke-static {v0}, Lae/b;->b(F)I

    move-result v0

    .line 4
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v7, -0x33333334

    .line 6
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v1}, Lae/b;->b(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x4

    new-array v3, v3, [F

    int-to-float v4, v0

    const/4 v8, 0x0

    aput v4, v3, v8

    const/4 v9, 0x1

    aput v4, v3, v9

    const/4 v10, 0x2

    aput v4, v3, v10

    const/4 v5, 0x3

    aput v4, v3, v5

    invoke-direct {v2, v3, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    move-object v1, p1

    move v2, v4

    move v3, v4

    move v4, v5

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4}, Lae/b;->c(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 0
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;->d:Lwd/i;

    return-void
.end method
