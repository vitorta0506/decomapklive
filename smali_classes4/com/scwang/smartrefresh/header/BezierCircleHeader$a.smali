.class Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/BezierCircleHeader;->a(Lwd/j;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:I

.field final synthetic e:F

.field final synthetic f:Lcom/scwang/smartrefresh/header/BezierCircleHeader;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->f:Lcom/scwang/smartrefresh/header/BezierCircleHeader;

    iput p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->a:F

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->c:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->d:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    .line 3
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->d:I

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->f:Lcom/scwang/smartrefresh/header/BezierCircleHeader;

    iget v1, v1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->a:F

    .line 5
    :cond_0
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->d:I

    const/4 v4, 0x2

    if-ne v1, v3, :cond_2

    neg-float v1, v0

    .line 6
    iget v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->e:F

    div-float/2addr v1, v5

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->c:F

    .line 7
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->f:Lcom/scwang/smartrefresh/header/BezierCircleHeader;

    iget v6, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->j:F

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_1

    .line 8
    iput v1, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->j:F

    .line 9
    iget v1, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    add-float/2addr v1, v0

    iput v1, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    .line 10
    iget v1, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->a:F

    goto :goto_0

    .line 11
    :cond_1
    iput v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->d:I

    .line 12
    iput v2, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->j:F

    .line 13
    iput-boolean v3, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->m:Z

    .line 14
    iput-boolean v3, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->n:Z

    .line 15
    iget v1, v5, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->b:F

    .line 16
    :cond_2
    :goto_0
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->d:I

    if-ne v1, v4, :cond_3

    .line 17
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->f:Lcom/scwang/smartrefresh/header/BezierCircleHeader;

    iget v2, v1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    iget v4, v1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    cmpl-float v6, v2, v6

    if-lez v6, :cond_3

    div-float/2addr v4, v5

    .line 18
    iget v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->a:F

    sub-float/2addr v2, v6

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->f:Lcom/scwang/smartrefresh/header/BezierCircleHeader;

    iget v2, v1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    div-float/2addr v2, v5

    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->b:F

    sub-float/2addr v2, v4

    mul-float p1, p1, v2

    add-float/2addr p1, v4

    .line 20
    iget v2, v1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    cmpl-float v2, v2, p1

    if-lez v2, :cond_3

    .line 21
    iput p1, v1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;->f:Lcom/scwang/smartrefresh/header/BezierCircleHeader;

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->n:Z

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 23
    iput-boolean v3, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->o:Z

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->n:Z

    .line 25
    iput-boolean v3, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->s:Z

    const/16 v1, 0x5a

    .line 26
    iput v1, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->r:I

    .line 27
    iput v1, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->q:I

    .line 28
    :cond_4
    iget-boolean v1, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->t:Z

    if-nez v1, :cond_5

    .line 29
    iput v0, p1, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method
