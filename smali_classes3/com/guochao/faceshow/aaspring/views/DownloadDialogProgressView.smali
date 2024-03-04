.class public Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field d:Landroid/graphics/RectF;

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->b:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->c:I

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->b:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->c:I

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 10
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->b:I

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->c:I

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->a:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->e:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->d:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->e:I

    int-to-float v2, v1

    int-to-float v1, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->e:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->d:Landroid/graphics/RectF;

    .line 5
    :cond_0
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->d:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->b:I

    int-to-float v1, v1

    div-float v8, v0, v1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->a:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
