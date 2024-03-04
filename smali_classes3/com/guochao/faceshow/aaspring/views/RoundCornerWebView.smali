.class public Lcom/guochao/faceshow/aaspring/views/RoundCornerWebView;
.super Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
.source "SourceFile"


# instance fields
.field s:I

.field t:Landroid/graphics/Path;

.field u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->init()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerWebView;->u:Z

    const/high16 v0, 0x41800000    # 16.0f

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerWebView;->s:I

    .line 4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerWebView;->t:Landroid/graphics/Path;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerWebView;->u:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerWebView;->s:I

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    if-le v5, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 8
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerWebView;->t:Landroid/graphics/Path;

    .line 9
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    int-to-float v6, v2

    const/4 v7, 0x0

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    sub-int v8, v3, v2

    int-to-float v8, v8

    add-float/2addr v8, v1

    .line 11
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 12
    invoke-virtual {v5, v3, v7, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    int-to-float v1, v4

    add-float/2addr v0, v1

    .line 13
    invoke-virtual {v5, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    invoke-virtual {v5, v3, v0, v3, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 15
    invoke-virtual {v5, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    invoke-virtual {v5, v7, v1, v7, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 17
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    invoke-virtual {v5, v7, v7, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    if-lez v2, :cond_0

    .line 19
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
