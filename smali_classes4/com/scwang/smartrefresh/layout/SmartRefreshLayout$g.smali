.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y(IZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-eqz v1, :cond_8

    .line 2
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->a:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I()Lwd/j;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->a:Z

    invoke-interface {v1, v0, v2}, Lwd/h;->c(Lwd/j;Z)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    instance-of v3, v1, Lwd/g;

    if-eqz v3, :cond_1

    .line 7
    check-cast v1, Lwd/g;

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->a:Z

    invoke-interface {v2, v1, v3}, Lzd/c;->l(Lwd/g;Z)V

    :cond_1
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_8

    .line 8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    if-eqz v1, :cond_4

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    iget-object v12, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_3

    .line 11
    iget v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 12
    iput v3, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 13
    iput-boolean v3, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    const/4 v8, 0x0

    .line 14
    iget v9, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v5, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v11, 0x0

    move-wide v4, v1

    move-wide v6, v1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 15
    iget-object v12, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v8, 0x2

    iget v9, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iget v5, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v5, v5

    add-float v10, v4, v5

    move-wide v4, v1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 16
    :cond_3
    iget-object v12, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    if-eqz v4, :cond_4

    .line 17
    iput v3, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    const/4 v8, 0x1

    .line 18
    iget v9, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v10, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    const/4 v11, 0x0

    move-wide v4, v1

    move-wide v6, v1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 19
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    .line 20
    iput v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v2, :cond_6

    const/4 v2, 0x0

    .line 22
    iget-object v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/animation/Interpolator;

    iget v5, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    if-eqz v3, :cond_5

    .line 24
    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    invoke-interface {v2, v1}, Lwd/e;->c(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    :cond_5
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 25
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_6
    if-gez v2, :cond_7

    .line 26
    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/animation/Interpolator;

    iget v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 27
    :cond_7
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v0, v3, v3}, Lwd/i;->g(IZ)Lwd/i;

    .line 28
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J()V

    :cond_8
    :goto_0
    return-void
.end method
