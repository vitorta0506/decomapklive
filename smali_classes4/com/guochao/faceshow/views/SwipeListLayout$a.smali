.class Lcom/guochao/faceshow/views/SwipeListLayout$a;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/SwipeListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/SwipeListLayout;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/SwipeListLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p3}, Lcom/guochao/faceshow/views/SwipeListLayout;->a(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1

    if-lez p2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->b(Lcom/guochao/faceshow/views/SwipeListLayout;)I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->b(Lcom/guochao/faceshow/views/SwipeListLayout;)I

    move-result p1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p2}, Lcom/guochao/faceshow/views/SwipeListLayout;->a(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->c(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p3}, Lcom/guochao/faceshow/views/SwipeListLayout;->a(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    add-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xvel == "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "   ;   math == "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/views/SwipeListLayout;->a(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   ;   right == "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/views/SwipeListLayout;->a(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ;  hiddenViewWidth == "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/views/SwipeListLayout;->b(Lcom/guochao/faceshow/views/SwipeListLayout;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ;  /== "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/views/SwipeListLayout;->b(Lcom/guochao/faceshow/views/SwipeListLayout;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  offset== "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "xxxx"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    cmpl-float p3, p2, p1

    if-nez p3, :cond_0

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    .line 6
    invoke-static {p3}, Lcom/guochao/faceshow/views/SwipeListLayout;->a(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/views/SwipeListLayout;->b(Lcom/guochao/faceshow/views/SwipeListLayout;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->d(Lcom/guochao/faceshow/views/SwipeListLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/SwipeListLayout;->e(Lcom/guochao/faceshow/views/SwipeListLayout;Z)V

    goto :goto_0

    :cond_0
    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->d(Lcom/guochao/faceshow/views/SwipeListLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/SwipeListLayout;->e(Lcom/guochao/faceshow/views/SwipeListLayout;Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->d(Lcom/guochao/faceshow/views/SwipeListLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/SwipeListLayout;->f(Lcom/guochao/faceshow/views/SwipeListLayout;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    iget-object p2, p0, Lcom/guochao/faceshow/views/SwipeListLayout$a;->a:Lcom/guochao/faceshow/views/SwipeListLayout;

    invoke-static {p2}, Lcom/guochao/faceshow/views/SwipeListLayout;->a(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
