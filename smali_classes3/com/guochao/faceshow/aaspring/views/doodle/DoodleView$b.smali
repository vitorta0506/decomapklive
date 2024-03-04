.class Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranX()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranY()F

    move-result v1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v0

    .line 5
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->r(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9
    :goto_0
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->o(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;->a(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
