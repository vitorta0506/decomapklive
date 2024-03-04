.class public Lmc/e;
.super Lmc/b;
.source "SourceFile"


# instance fields
.field private c:F

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;Lmc/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmc/b;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;Lmc/c;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmc/e;->d:I

    .line 3
    iput-boolean p1, p0, Lmc/e;->e:Z

    .line 4
    iput-boolean p1, p0, Lmc/e;->f:Z

    .line 5
    iput-boolean p1, p0, Lmc/e;->g:Z

    .line 6
    new-instance p1, Lmc/e$a;

    invoke-direct {p1, p0}, Lmc/e$a;-><init>(Lmc/e;)V

    iput-object p1, p0, Lmc/e;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic g(Lmc/e;)I
    .locals 0

    iget p0, p0, Lmc/e;->d:I

    return p0
.end method

.method static synthetic h(Lmc/e;I)I
    .locals 0

    iput p1, p0, Lmc/e;->d:I

    return p1
.end method

.method static synthetic i(Lmc/e;)I
    .locals 2

    iget v0, p0, Lmc/e;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmc/e;->d:I

    return v0
.end method

.method static synthetic j(Lmc/e;)F
    .locals 0

    iget p0, p0, Lmc/e;->c:F

    return p0
.end method

.method static synthetic k(Lmc/e;F)F
    .locals 0

    iput p1, p0, Lmc/e;->c:F

    return p1
.end method

.method static synthetic l(Lmc/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmc/e;->h:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmc/b;->a:Lmc/c;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-interface/range {v0 .. v6}, Lmc/c;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/b;->a:Lmc/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lmc/c;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 2
    :cond_0
    iget-object p3, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->i()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 4
    iget-object p2, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->g()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lmc/e;->f:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lmc/e;->f:Z

    .line 5
    iget-object p2, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->k()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lmc/e;->e:Z

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p2, 0x1

    :goto_3
    iput-boolean p2, p0, Lmc/e;->e:Z

    .line 6
    iget-object p2, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result p2

    neg-int p2, p2

    if-ge p1, p2, :cond_6

    iget-boolean p2, p0, Lmc/e;->f:Z

    if-eqz p2, :cond_6

    return-void

    .line 7
    :cond_6
    iget-object p2, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result p2

    if-le p1, p2, :cond_7

    iget-boolean p1, p0, Lmc/e;->e:Z

    if-eqz p1, :cond_7

    return-void

    .line 8
    :cond_7
    iput p4, p0, Lmc/e;->c:F

    .line 9
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x453b8000    # 3000.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_8

    .line 10
    iget-object p1, p0, Lmc/e;->h:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    iput-boolean v0, p0, Lmc/e;->g:Z

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lmc/e;->c:F

    const/16 p1, 0x3c

    .line 13
    iput p1, p0, Lmc/e;->d:I

    :goto_4
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmc/b;->a:Lmc/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmc/c;->c(Landroid/view/MotionEvent;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v0

    invoke-static {p1, v0}, Lnc/b;->h(Landroid/view/View;I)Z

    move-result p1

    iput-boolean p1, p0, Lmc/e;->e:Z

    .line 3
    iget-object p1, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmc/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v0

    invoke-static {p1, v0}, Lnc/b;->g(Landroid/view/View;I)Z

    move-result p1

    iput-boolean p1, p0, Lmc/e;->f:Z

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmc/b;->a:Lmc/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmc/c;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmc/b;->a:Lmc/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmc/c;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Landroid/view/MotionEvent;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmc/b;->a:Lmc/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Lmc/e;->g:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Lmc/c;->e(Landroid/view/MotionEvent;Z)V

    .line 3
    :cond_1
    iput-boolean v1, p0, Lmc/e;->g:Z

    return-void
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmc/b;->a:Lmc/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmc/c;->f(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
