.class Lcom/guochao/faceshow/views/floatwindow/FloatView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/floatwindow/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/guochao/faceshow/views/floatwindow/FloatView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->a:F

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->b:F

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->j(Lcom/guochao/faceshow/views/floatwindow/FloatView;Z)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->a:F

    sub-float v1, v0, v1

    .line 5
    iget v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->b:F

    sub-float v2, p1, v2

    mul-float v1, v1, v1

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_3

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {v3}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 8
    iget v4, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->b:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    iget v4, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->a:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {v4}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->l(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result v4

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    neg-double v1, v1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {v4}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->m(Lcom/guochao/faceshow/views/floatwindow/FloatView;)I

    move-result v4

    if-ne v3, v4, :cond_2

    return-void

    :cond_2
    :goto_0
    const-wide v3, 0x4046800000000000L    # 45.0

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {v2, v1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->c(Lcom/guochao/faceshow/views/floatwindow/FloatView;I)V

    .line 13
    :cond_3
    iput v0, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->a:F

    .line 14
    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->b:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->k(Lcom/guochao/faceshow/views/floatwindow/FloatView;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->j(Lcom/guochao/faceshow/views/floatwindow/FloatView;Z)Z

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->j(Lcom/guochao/faceshow/views/floatwindow/FloatView;Z)Z

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->a:F

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->b:F

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getRight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->d(Lcom/guochao/faceshow/views/floatwindow/FloatView;I)I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/views/floatwindow/FloatView$d;->c:Lcom/guochao/faceshow/views/floatwindow/FloatView;

    invoke-static {p1}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->g(Lcom/guochao/faceshow/views/floatwindow/FloatView;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/views/floatwindow/FloatView;->f(Lcom/guochao/faceshow/views/floatwindow/FloatView;I)I

    :goto_0
    return v0
.end method
