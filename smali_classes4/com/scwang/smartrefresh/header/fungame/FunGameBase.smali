.class public abstract Lcom/scwang/smartrefresh/header/fungame/FunGameBase;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# instance fields
.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:F

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected l:Lwd/i;

.field protected m:Lwd/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 2
    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->f:I

    .line 4
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-void
.end method


# virtual methods
.method public c(Lwd/j;Z)I
    .locals 3
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->i:Z

    .line 2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->h:Z

    .line 4
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->j:Z

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->g:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->s()V

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->c(Lwd/j;Z)I

    return v1

    :cond_0
    const p1, 0x7fffffff

    return p1

    :cond_1
    return v1
.end method

.method public e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->k:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 0
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    .line 2
    iput p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->d:I

    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    .line 5
    invoke-interface {p1, p0, p2}, Lwd/i;->a(Lwd/h;Z)Lwd/i;

    :cond_0
    return-void
.end method

.method public k(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->h:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public o(ZFIII)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->j:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->r(FIII)V

    goto :goto_0

    .line 2
    :cond_0
    iput p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->d:I

    .line 3
    iget p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->k:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->k:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 3
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->j:Z

    if-nez v1, :cond_2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->t()V

    .line 5
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_5

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v6, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->g:F

    sub-float/2addr v1, v6

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_4

    .line 7
    iget v6, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    mul-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    .line 8
    iget v8, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->f:I

    mul-int/lit8 v8, v8, 0x2

    div-int/2addr v8, v4

    int-to-double v4, v8

    const-wide/16 v8, 0x0

    float-to-double v10, v1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v12

    .line 9
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    neg-double v14, v8

    div-double/2addr v14, v4

    .line 10
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v10, v4

    mul-double v6, v6, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 11
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v1, v4, v2}, Lwd/i;->g(IZ)Lwd/i;

    goto :goto_1

    .line 12
    :cond_4
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    invoke-interface {v1, v3, v2}, Lwd/i;->g(IZ)Lwd/i;

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->s()V

    const/high16 v1, -0x40800000    # -1.0f

    .line 14
    iput v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->g:F

    .line 15
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->h:Z

    if-eqz v1, :cond_7

    .line 16
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    iget v2, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    invoke-interface {v1, v2, v3}, Lwd/i;->g(IZ)Lwd/i;

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->g:F

    .line 18
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    invoke-interface {v1, v2, v3}, Lwd/i;->g(IZ)Lwd/i;

    :cond_7
    :goto_1
    return v3
.end method

.method protected abstract r(FIII)V
.end method

.method protected s()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->j:Z

    .line 3
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->g:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    invoke-interface {v0}, Lwd/i;->k()Lwd/j;

    move-result-object v0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->i:Z

    invoke-virtual {p0, v0, v1}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->c(Lwd/j;Z)I

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    invoke-interface {v0, v2}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    invoke-interface {v0, v2, v1}, Lwd/i;->g(IZ)Lwd/i;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->m:Lwd/e;

    invoke-interface {v0}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    invoke-interface {v0, v2, v1}, Lwd/i;->g(IZ)Lwd/i;

    :goto_1
    return-void
.end method

.method protected t()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->j:Z

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->l:Lwd/i;

    invoke-interface {v0}, Lwd/i;->i()Lwd/e;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->m:Lwd/e;

    .line 4
    invoke-interface {v0}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
