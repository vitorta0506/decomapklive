.class public Lmc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

.field private b:Landroid/view/animation/DecelerateInterpolator;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmc/a;->c:Z

    .line 3
    iput-boolean v0, p0, Lmc/a;->d:Z

    .line 4
    iput-boolean v0, p0, Lmc/a;->e:Z

    .line 5
    iput-boolean v0, p0, Lmc/a;->f:Z

    .line 6
    iput-boolean v0, p0, Lmc/a;->g:Z

    .line 7
    iput-boolean v0, p0, Lmc/a;->h:Z

    .line 8
    iput-boolean v0, p0, Lmc/a;->i:Z

    .line 9
    iput-boolean v0, p0, Lmc/a;->j:Z

    .line 10
    iput-boolean v0, p0, Lmc/a;->k:Z

    .line 11
    iput-boolean v0, p0, Lmc/a;->l:Z

    .line 12
    iput-boolean v0, p0, Lmc/a;->m:Z

    .line 13
    iput-boolean v0, p0, Lmc/a;->n:Z

    .line 14
    new-instance v0, Lmc/a$a;

    invoke-direct {v0, p0}, Lmc/a$a;-><init>(Lmc/a;)V

    iput-object v0, p0, Lmc/a;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 15
    new-instance v0, Lmc/a$b;

    invoke-direct {v0, p0}, Lmc/a$b;-><init>(Lmc/a;)V

    iput-object v0, p0, Lmc/a;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 16
    new-instance v0, Lmc/a$c;

    invoke-direct {v0, p0}, Lmc/a$c;-><init>(Lmc/a;)V

    iput-object v0, p0, Lmc/a;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 17
    new-instance v0, Lmc/a$d;

    invoke-direct {v0, p0}, Lmc/a$d;-><init>(Lmc/a;)V

    iput-object v0, p0, Lmc/a;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 18
    iput-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 19
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lmc/a;->b:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method private I()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "footer translationY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private J()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "header translationY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",Visible head height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private M(F)V
    .locals 2

    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private N(F)V
    .locals 2

    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private O(I)V
    .locals 1

    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->q()Landroid/view/View;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->e:Z

    return p1
.end method

.method static synthetic b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;
    .locals 0

    iget-object p0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    return-object p0
.end method

.method static synthetic c(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->j:Z

    return p1
.end method

.method static synthetic d(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->k:Z

    return p1
.end method

.method static synthetic e(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->l:Z

    return p1
.end method

.method static synthetic f(Lmc/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lmc/a;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic g(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->m:Z

    return p1
.end method

.method static synthetic h(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->n:Z

    return p1
.end method

.method static synthetic i(Lmc/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lmc/a;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic j(Lmc/a;F)V
    .locals 0

    invoke-direct {p0, p1}, Lmc/a;->N(F)V

    return-void
.end method

.method static synthetic k(Lmc/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmc/a;->O(I)V

    return-void
.end method

.method static synthetic l(Lmc/a;F)V
    .locals 0

    invoke-direct {p0, p1}, Lmc/a;->M(F)V

    return-void
.end method

.method static synthetic m(Lmc/a;)Z
    .locals 0

    iget-boolean p0, p0, Lmc/a;->c:Z

    return p0
.end method

.method static synthetic n(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->c:Z

    return p1
.end method

.method static synthetic o(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->f:Z

    return p1
.end method

.method static synthetic p(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->g:Z

    return p1
.end method

.method static synthetic q(Lmc/a;)Z
    .locals 0

    iget-boolean p0, p0, Lmc/a;->d:Z

    return p0
.end method

.method static synthetic r(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->d:Z

    return p1
.end method

.method static synthetic s(Lmc/a;)I
    .locals 0

    invoke-direct {p0}, Lmc/a;->I()I

    move-result p0

    return p0
.end method

.method static synthetic t(Lmc/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lmc/a;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic u(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->h:Z

    return p1
.end method

.method static synthetic v(Lmc/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmc/a;->i:Z

    return p1
.end method


# virtual methods
.method public A(I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lmc/a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmc/a;->i:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animHeadHideByVy\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1f40

    .line 5
    :cond_1
    invoke-direct {p0}, Lmc/a;->J()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lmc/a;->J()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    int-to-long v3, p1

    iget-object v5, p0, Lmc/a;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lmc/a$j;

    invoke-direct {v6, p0}, Lmc/a$j;-><init>(Lmc/a;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmc/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public B()V
    .locals 4

    const-string v0, "animHeadToRefresh:"

    .line 1
    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmc/a;->e:Z

    .line 3
    invoke-direct {p0}, Lmc/a;->J()I

    move-result v0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->s()I

    move-result v1

    iget-object v2, p0, Lmc/a;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lmc/a$e;

    invoke-direct {v3, p0}, Lmc/a$e;-><init>(Lmc/a;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lmc/a;->D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sub-int/2addr p1, p2

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public E(FI)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animOverScrollBottom\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",computeTimes->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lmc/a;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->g0()V

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 5
    iget-object p2, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    move-result p1

    :cond_1
    move v2, p1

    const/16 p1, 0x32

    if-gt v2, p1, :cond_2

    const/16 p1, 0x73

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fd3333333333333L    # 0.3

    int-to-double v0, v2

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    add-double/2addr v0, p1

    double-to-int p1, v0

    .line 6
    :goto_0
    iget-boolean p2, p0, Lmc/a;->d:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->k0()V

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lmc/a;->n:Z

    .line 9
    iput-boolean p2, p0, Lmc/a;->m:Z

    const/4 v1, 0x0

    int-to-long v3, p1

    .line 10
    iget-object v5, p0, Lmc/a;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lmc/a$m;

    invoke-direct {v6, p0, v2, p1}, Lmc/a$m;-><init>(Lmc/a;II)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmc/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    return-void
.end method

.method public F(FI)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animOverScrollTop\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",computeTimes->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lmc/a;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmc/a;->l:Z

    .line 4
    iput-boolean v0, p0, Lmc/a;->k:Z

    .line 5
    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->h0()V

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 7
    iget-object p2, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    move-result p1

    :cond_1
    move v2, p1

    const/16 p1, 0x32

    if-gt v2, p1, :cond_2

    const/16 p1, 0x73

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fd3333333333333L    # 0.3

    int-to-double v0, v2

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    add-double/2addr v0, p1

    double-to-int p1, v0

    .line 8
    :goto_0
    invoke-direct {p0}, Lmc/a;->J()I

    move-result v1

    int-to-long v3, p1

    iget-object v5, p0, Lmc/a;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lmc/a$l;

    invoke-direct {v6, p0, v2, p1}, Lmc/a$l;-><init>(Lmc/a;II)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmc/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->J()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmc/a;->J()I

    move-result v0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->s()I

    move-result v1

    iget-object v2, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lmc/a;->B()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lmc/a;->z(Z)V

    :goto_0
    return-void
.end method

.method public H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->J()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmc/a;->I()I

    move-result v0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()I

    move-result v1

    iget-object v2, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lmc/a;->y()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lmc/a;->w(Z)V

    :goto_0
    return-void
.end method

.method public K(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmc/a;->b:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->u()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, p1

    div-float/2addr v0, v2

    .line 2
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->J()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->h()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->F()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    .line 6
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lmc/a;->d:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 12
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    neg-float v1, v0

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->V(F)V

    .line 13
    :goto_2
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object p1

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public L(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmc/a;->b:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()F

    move-result v1

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, p1

    div-float/2addr v0, v2

    .line 2
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->J()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->j()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->G()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    .line 6
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lmc/a;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 12
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->U(F)V

    .line 13
    :goto_2
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->E()Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    float-to-int p1, v0

    .line 15
    invoke-direct {p0, p1}, Lmc/a;->O(I)V

    :cond_4
    return-void
.end method

.method public w(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animBottomBack\uff1afinishLoading?->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmc/a;->h:Z

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v1, p0, Lmc/a;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->c0(Z)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lmc/a;->I()I

    move-result v0

    const/4 v1, 0x0

    new-instance v2, Lmc/a$h;

    invoke-direct {v2, p0}, Lmc/a$h;-><init>(Lmc/a;)V

    new-instance v3, Lmc/a$i;

    invoke-direct {v3, p0, p1}, Lmc/a$i;-><init>(Lmc/a;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lmc/a;->D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public x(I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animBottomHideByVy\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lmc/a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmc/a;->j:Z

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1f40

    .line 5
    :cond_1
    invoke-direct {p0}, Lmc/a;->I()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lmc/a;->I()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    int-to-long v3, v0

    iget-object v5, p0, Lmc/a;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Lmc/a$k;

    invoke-direct {v6, p0}, Lmc/a$k;-><init>(Lmc/a;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmc/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public y()V
    .locals 4

    const-string v0, "animBottomToLoad"

    .line 1
    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmc/a;->g:Z

    .line 3
    invoke-direct {p0}, Lmc/a;->I()I

    move-result v0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()I

    move-result v1

    iget-object v2, p0, Lmc/a;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lmc/a$g;

    invoke-direct {v3, p0}, Lmc/a$g;-><init>(Lmc/a;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lmc/a;->D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public z(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animHeadBack\uff1afinishRefresh?->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmc/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmc/a;->f:Z

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v1, p0, Lmc/a;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lmc/a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->d0(Z)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lmc/a;->J()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lmc/a;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lmc/a$f;

    invoke-direct {v3, p0, p1}, Lmc/a$f;-><init>(Lmc/a;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lmc/a;->D(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
