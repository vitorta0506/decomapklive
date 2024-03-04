.class public Lmc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmc/c;


# instance fields
.field protected a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmc/f;->d:Z

    .line 3
    iput-boolean v0, p0, Lmc/f;->e:Z

    .line 4
    iput-boolean v0, p0, Lmc/f;->f:Z

    .line 5
    iput-boolean v0, p0, Lmc/f;->g:Z

    const-string v0, "The coprocessor can not be null."

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    return-void
.end method

.method private g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lmc/f;->h:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private h()V
    .locals 9

    .line 1
    iget-object v0, p0, Lmc/f;->h:Landroid/view/MotionEvent;

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result p1

    .line 2
    iget-object p2, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->K()Z

    move-result p2

    if-eqz p2, :cond_0

    int-to-float p2, p1

    cmpl-float p2, p4, p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->E()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Lmc/a;

    move-result-object p2

    float-to-int p3, p6

    invoke-virtual {p2, p3}, Lmc/a;->A(I)V

    .line 4
    :cond_0
    iget-object p2, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->D()Z

    move-result p2

    if-eqz p2, :cond_1

    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gtz p1, :cond_1

    .line 5
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Lmc/a;

    move-result-object p1

    float-to-int p2, p6

    invoke-virtual {p1, p2}, Lmc/a;->x(I)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    goto/16 :goto_3

    .line 2
    :cond_0
    iput-object p1, p0, Lmc/f;->h:Landroid/view/MotionEvent;

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lmc/f;->b:F

    sub-float/2addr v0, v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lmc/f;->c:F

    sub-float/2addr v1, v4

    .line 5
    iget-boolean v4, p0, Lmc/f;->d:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v4

    invoke-static {v0, v4}, Lnc/b;->h(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->h0()V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmc/f;->b:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lmc/f;->c:F

    .line 10
    invoke-direct {p0}, Lmc/f;->g()V

    .line 11
    iput-boolean v2, p0, Lmc/f;->d:Z

    return v2

    :cond_1
    cmpg-float v0, v1, v5

    if-gez v0, :cond_2

    .line 12
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v4

    invoke-static {v0, v4}, Lnc/b;->g(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->g0()V

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmc/f;->b:F

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lmc/f;->c:F

    .line 16
    iput-boolean v2, p0, Lmc/f;->d:Z

    .line 17
    invoke-direct {p0}, Lmc/f;->g()V

    return v2

    .line 18
    :cond_2
    iget-boolean v0, p0, Lmc/f;->d:Z

    if-eqz v0, :cond_f

    .line 19
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->K()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->I()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->N()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v3

    invoke-static {v0, v3}, Lnc/b;->h(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    :cond_4
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 23
    :cond_5
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 24
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 25
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Lmc/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmc/a;->L(F)V

    goto :goto_0

    .line 26
    :cond_6
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->H()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->M()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v4

    invoke-static {v0, v4}, Lnc/b;->g(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 28
    :cond_7
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 29
    :cond_8
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->u()I

    move-result p1

    neg-int p1, p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 30
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 31
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Lmc/a;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lmc/a;->K(F)V

    :cond_9
    :goto_0
    cmpl-float p1, v1, v5

    if-nez p1, :cond_a

    .line 32
    iget-boolean p1, p0, Lmc/f;->g:Z

    if-nez p1, :cond_a

    .line 33
    iput-boolean v2, p0, Lmc/f;->g:Z

    .line 34
    invoke-direct {p0}, Lmc/f;->h()V

    :cond_a
    return v2

    .line 35
    :cond_b
    :goto_1
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 36
    :cond_c
    iget-boolean v0, p0, Lmc/f;->d:Z

    if-eqz v0, :cond_f

    .line 37
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->N()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 38
    iput-boolean v2, p0, Lmc/f;->e:Z

    goto :goto_2

    .line 39
    :cond_d
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->M()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 40
    iput-boolean v2, p0, Lmc/f;->f:Z

    .line 41
    :cond_e
    :goto_2
    iput-boolean v1, p0, Lmc/f;->d:Z

    return v2

    .line 42
    :cond_f
    :goto_3
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 43
    :cond_10
    iput-boolean v1, p0, Lmc/f;->g:Z

    .line 44
    iput-boolean v1, p0, Lmc/f;->d:Z

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmc/f;->b:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmc/f;->c:F

    .line 47
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->L()Z

    move-result v0

    if-nez v0, :cond_11

    .line 49
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->d0(Z)V

    .line 50
    :cond_11
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->C()Z

    move-result v0

    if-nez v0, :cond_12

    .line 51
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->c0(Z)V

    .line 52
    :cond_12
    iget-object v0, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    return v2
.end method

.method public e(Landroid/view/MotionEvent;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-boolean p1, p0, Lmc/f;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Lmc/a;

    move-result-object p1

    invoke-virtual {p1}, Lmc/a;->G()V

    :cond_0
    if-nez p2, :cond_1

    .line 3
    iget-boolean p1, p0, Lmc/f;->f:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lmc/f;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->o()Lmc/a;

    move-result-object p1

    invoke-virtual {p1}, Lmc/a;->H()V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lmc/f;->e:Z

    .line 6
    iput-boolean p1, p0, Lmc/f;->f:Z

    return-void
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
