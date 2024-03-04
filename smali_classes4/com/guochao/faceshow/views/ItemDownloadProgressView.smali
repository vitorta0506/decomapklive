.class public Lcom/guochao/faceshow/views/ItemDownloadProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field private c:I

.field d:Landroid/graphics/RectF;

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->b:Landroid/graphics/Paint;

    const/16 p1, 0x64

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->c:I

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->b:Landroid/graphics/Paint;

    const/16 p1, 0x64

    .line 9
    iput p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->c:I

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a:Landroid/graphics/Paint;

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->b:Landroid/graphics/Paint;

    const/16 p1, 0x64

    .line 14
    iput p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->c:I

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a:Landroid/graphics/Paint;

    const-string v1, "#C7C7C7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->b:Landroid/graphics/Paint;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->d:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->d:Landroid/graphics/RectF;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->d:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget v0, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->e:I

    mul-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->c:I

    div-int/2addr v0, v1

    int-to-float v7, v0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->b:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->c:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
