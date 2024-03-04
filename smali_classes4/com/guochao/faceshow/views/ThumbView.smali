.class public Lcom/guochao/faceshow/views/ThumbView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/views/ThumbView;->d:I

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/views/ThumbView;->b:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, 0x41700000    # 15.0f

    .line 5
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/views/ThumbView;->a:I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/ThumbView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/guochao/faceshow/views/ThumbView;->a:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public getRangeIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/ThumbView;->e:I

    return v0
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/views/ThumbView;->c:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/views/ThumbView;->d:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/ThumbView;->b:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/guochao/faceshow/views/ThumbView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/ThumbView;->c:Z

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/ThumbView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setThumbWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/ThumbView;->d:I

    return-void
.end method

.method public setTickIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/ThumbView;->e:I

    return-void
.end method
