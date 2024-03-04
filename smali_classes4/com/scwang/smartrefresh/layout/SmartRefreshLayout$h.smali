.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->a:Z

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_8

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-eqz v2, :cond_8

    .line 2
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->a:Z

    invoke-interface {v2, v1, v3}, Lwd/h;->c(Lwd/j;Z)I

    move-result v1

    .line 4
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    instance-of v5, v2, Lwd/f;

    if-eqz v5, :cond_0

    .line 5
    check-cast v2, Lwd/f;

    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->a:Z

    invoke-interface {v3, v2, v5}, Lzd/c;->d(Lwd/f;Z)V

    :cond_0
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_9

    .line 6
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v5, :cond_1

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v5, :cond_1

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v2}, Lwd/e;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 7
    :goto_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v4, :cond_2

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    neg-int v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sub-int/2addr v5, v2

    .line 8
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-nez v4, :cond_3

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    if-eqz v2, :cond_6

    .line 9
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 10
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_5

    .line 11
    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 12
    iget v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    sub-int/2addr v6, v5

    iput v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 13
    iput-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    .line 14
    iget-boolean v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const/4 v10, 0x0

    .line 15
    iget v11, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    int-to-float v13, v6

    add-float/2addr v4, v13

    iget v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v12, v4, v6

    const/4 v4, 0x0

    move-wide v6, v14

    move-wide v8, v14

    move/from16 v16, v13

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 16
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v10, 0x2

    iget v11, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    add-float v12, v4, v16

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 17
    :cond_5
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    if-eqz v4, :cond_6

    .line 18
    iput v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    const/4 v10, 0x1

    .line 19
    iget v11, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    iget v12, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    const/4 v13, 0x0

    move-wide v6, v14

    move-wide v8, v14

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 20
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    .line 21
    iput v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 22
    :cond_6
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h$a;

    invoke-direct {v3, v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h$a;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;I)V

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->c:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v4, :cond_7

    int-to-long v4, v1

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    :goto_3
    invoke-virtual {v2, v3, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 23
    :cond_8
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;->b:Z

    if-eqz v2, :cond_9

    .line 24
    invoke-virtual {v1, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_9
    :goto_4
    return-void
.end method
