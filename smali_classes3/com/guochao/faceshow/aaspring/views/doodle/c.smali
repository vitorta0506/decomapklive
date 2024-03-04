.class public Lcom/guochao/faceshow/aaspring/views/doodle/c;
.super Lcom/guochao/faceshow/aaspring/views/doodle/m$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/doodle/c$c;
    }
.end annotation


# instance fields
.field private A:F

.field private B:Lla/f;

.field private C:Lcom/guochao/faceshow/aaspring/views/doodle/c$c;

.field private D:Z

.field private E:F

.field private F:F

.field private G:F

.field private H:D

.field private I:F

.field private J:F

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Ljava/lang/Float;

.field private l:Ljava/lang/Float;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroid/graphics/Path;

.field private s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

.field private t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

.field private u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

.field private v:Landroid/animation/ValueAnimator;

.field private w:F

.field private x:F

.field private y:Landroid/animation/ValueAnimator;

.field private z:F


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Lcom/guochao/faceshow/aaspring/views/doodle/c$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/m$b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->D:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->G:F

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->getCopyLocation()Lcom/guochao/faceshow/aaspring/views/doodle/a;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->j()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->o(FF)V

    .line 8
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->C:Lcom/guochao/faceshow/aaspring/views/doodle/c$c;

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m:F

    return p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/doodle/c;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n:F

    return p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->w:F

    return p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->x:F

    return p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->z:F

    return p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->A:F

    return p0
.end method

.method private n(Lla/e;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->TEXT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne v0, v1, :cond_2

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public G(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$b;->G(Landroid/view/MotionEvent;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->g:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->h:F

    return-void
.end method

.method public S(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$b;->S(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n(Lla/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz v0, :cond_1

    .line 4
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {v1}, Lla/c;->g()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->i:F

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {p1}, Lla/c;->h()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->j:F

    .line 7
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->i:F

    const/4 v1, 0x0

    sub-float v2, v1, p1

    sub-float p1, v1, p1

    mul-float v2, v2, p1

    sub-float p1, v1, v0

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    add-float/2addr v2, p1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->H:D

    div-double v2, v0, v2

    double-to-float p1, v2

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {v2}, Lla/c;->f()F

    move-result v3

    mul-float v3, v3, p1

    invoke-interface {v2, v3}, Lla/c;->i(F)V

    .line 10
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->H:D

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "--mRadius="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->H:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sqrt"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public U(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->c:F

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->d:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setScrollingDoodle(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n(Lla/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    if-eqz v1, :cond_1

    .line 8
    check-cast p1, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->L(Z)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->o(Z)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D(Lla/c;)V

    :cond_3
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public a(Lcom/guochao/faceshow/aaspring/views/doodle/l;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->d()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m:F

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->e()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n:F

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->k:Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->l:Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 4
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v2, v0

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n:F

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->l:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v0, v3

    .line 6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->E:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->E:F

    .line 8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->F:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->F:F

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->D:Z

    if-nez v3, :cond_3

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationX()F

    move-result v4

    add-float/2addr v4, v2

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->E:F

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setDoodleTranslationX(F)V

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationY()F

    move-result v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->F:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setDoodleTranslationY(F)V

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->F:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->E:F

    .line 13
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->f()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3ba3d70a    # 0.005f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->D:Z

    if-nez v2, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {v0}, Lla/c;->f()F

    move-result v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->f()F

    move-result p1

    mul-float v2, v2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->G:F

    mul-float v2, v2, p1

    invoke-interface {v0, v2}, Lla/c;->i(F)V

    goto :goto_3

    .line 16
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleScale()F

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->f()F

    move-result p1

    mul-float v0, v0, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->G:F

    mul-float v0, v0, p1

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m:F

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n:F

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H(FFF)V

    .line 18
    :goto_3
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->G:F

    goto :goto_4

    .line 19
    :cond_7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->G:F

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/l;->f()F

    move-result p1

    mul-float v0, v0, p1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->G:F

    .line 20
    :goto_4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->k:Ljava/lang/Float;

    .line 21
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->l:Ljava/lang/Float;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/guochao/faceshow/aaspring/views/doodle/l;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->o(Z)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->k()V

    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/views/doodle/l;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->k:Ljava/lang/Float;

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->l:Ljava/lang/Float;

    const/4 p1, 0x1

    return p1
.end method

.method public k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleScale()F

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->v:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->v:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    .line 4
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->v:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;-><init>(Lcom/guochao/faceshow/aaspring/views/doodle/c;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->w:F

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->x:F

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->v:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleScale()F

    move-result v5

    aput v5, v3, v4

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->o(Z)V

    :goto_0
    return-void
.end method

.method public l(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$b;->l(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {v1}, Lla/c;->g()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->I:F

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {p1}, Lla/c;->h()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->I:F

    const/4 p1, 0x0

    sub-float v1, p1, v0

    sub-float v0, p1, v0

    mul-float v1, v1, v0

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->J:F

    sub-float v2, p1, v0

    sub-float/2addr p1, v0

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->H:D

    :cond_0
    return-void
.end method

.method public m()Lla/f;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    return-object v0
.end method

.method public o(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v0

    const/16 v1, 0x5a

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationX()F

    move-result v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationY()F

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleBound()Landroid/graphics/RectF;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationX()F

    move-result v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationY()F

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getCenterWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getRotateScale()F

    move-result v7

    mul-float v6, v6, v7

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getCenterHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getRotateScale()F

    move-result v8

    mul-float v7, v7, v8

    .line 6
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/16 v12, 0xb4

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 7
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v8

    if-ne v8, v12, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleScale()F

    move-result v4

    mul-float v4, v4, v6

    sub-float v4, v6, v4

    div-float/2addr v4, v10

    goto/16 :goto_5

    .line 9
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleScale()F

    move-result v5

    mul-float v5, v5, v7

    sub-float v5, v7, v5

    div-float/2addr v5, v10

    goto/16 :goto_5

    .line 10
    :cond_3
    iget v8, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v8, v11

    if-lez v9, :cond_a

    .line 11
    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v9, v9, v13

    if-ltz v9, :cond_a

    .line 12
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-ne v9, v12, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-ne v9, v1, :cond_6

    :cond_5
    sub-float/2addr v4, v8

    goto :goto_5

    :cond_6
    :goto_1
    add-float/2addr v4, v8

    goto :goto_5

    .line 14
    :cond_7
    :goto_2
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-nez v9, :cond_9

    :cond_8
    sub-float/2addr v5, v8

    goto :goto_5

    :cond_9
    :goto_3
    add-float/2addr v5, v8

    goto :goto_5

    .line 15
    :cond_a
    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_d

    iget v8, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v11

    if-gtz v8, :cond_d

    .line 16
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    .line 17
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-ne v9, v12, :cond_b

    goto :goto_4

    .line 18
    :cond_b
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-ne v9, v1, :cond_5

    goto :goto_1

    .line 19
    :cond_c
    :goto_4
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    .line 20
    :cond_d
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_10

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-ne v1, v12, :cond_e

    goto :goto_6

    .line 22
    :cond_e
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleScale()F

    move-result v1

    mul-float v1, v1, v7

    sub-float/2addr v7, v1

    div-float v5, v7, v10

    goto/16 :goto_b

    .line 23
    :cond_f
    :goto_6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleScale()F

    move-result v1

    mul-float v1, v1, v6

    sub-float/2addr v6, v1

    div-float v4, v6, v10

    goto/16 :goto_b

    .line 24
    :cond_10
    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v6, v11

    if-lez v7, :cond_17

    .line 25
    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_17

    .line 26
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v12, :cond_11

    goto :goto_8

    .line 27
    :cond_11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v1, :cond_13

    :cond_12
    add-float/2addr v5, v6

    goto :goto_b

    :cond_13
    :goto_7
    sub-float/2addr v5, v6

    goto :goto_b

    .line 28
    :cond_14
    :goto_8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    sub-float/2addr v4, v6

    goto :goto_b

    :cond_16
    :goto_9
    add-float/2addr v4, v6

    goto :goto_b

    .line 29
    :cond_17
    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1a

    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_1a

    .line 30
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v3

    .line 31
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v12, :cond_18

    goto :goto_a

    .line 32
    :cond_18
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v1, :cond_12

    goto :goto_7

    .line 33
    :cond_19
    :goto_a
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_9

    :cond_1a
    :goto_b
    if-eqz p1, :cond_1c

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->y:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1b

    .line 35
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->y:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    .line 36
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/doodle/c$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/doodle/c$b;-><init>(Lcom/guochao/faceshow/aaspring/views/doodle/c;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    :cond_1b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->y:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v4, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 39
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->z:F

    .line 40
    iput v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->A:F

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c

    .line 42
    :cond_1c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1, v4, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I(FF)V

    :goto_c
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->f:F

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->c:F

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->d:F

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n(Lla/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {p3, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->o(FF)V

    goto/16 :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object p1

    if-ne p1, p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->d()F

    move-result p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {p3, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f()F

    move-result p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    .line 10
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e()F

    move-result p3

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result p4

    add-float/2addr p3, p4

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g()F

    move-result p4

    sub-float/2addr p3, p4

    .line 11
    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->o(FF)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getShape()Lla/g;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HAND_WRITE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    if-ne p1, p2, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->r:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->c:F

    .line 14
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->d:F

    .line 15
    invoke-virtual {p3, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result p3

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->c:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 16
    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result p4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->d:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 17
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v0

    .line 18
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->r:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->X(Landroid/graphics/Path;)V

    goto/16 :goto_1

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e:F

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->f:F

    invoke-virtual {p3, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result p3

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result p4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->Z(FFFF)V

    goto/16 :goto_1

    .line 21
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz p1, :cond_6

    .line 22
    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->K()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->q:F

    .line 24
    invoke-interface {p1}, Lla/c;->g()F

    move-result p3

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {p4}, Lla/c;->h()F

    move-result p4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v1

    .line 25
    invoke-static {p3, p4, v0, v1}, Lma/a;->a(FFFF)F

    move-result p3

    add-float/2addr p2, p3

    invoke-interface {p1, p2}, Lla/c;->d(F)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->o:F

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    .line 27
    invoke-virtual {p3, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e:F

    invoke-virtual {p3, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result p3

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p:F

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    .line 28
    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result p4

    add-float/2addr p3, p4

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->f:F

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result p4

    sub-float/2addr p3, p4

    .line 29
    invoke-interface {p1, p2, p3}, Lla/c;->n(FF)V

    goto :goto_1

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->o:F

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    add-float/2addr p2, p3

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e:F

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p:F

    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    add-float/2addr p3, p4

    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->f:F

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I(FF)V

    .line 32
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->c:F

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->d:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllItem()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_4

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lla/c;

    .line 9
    invoke-interface {v4}, Lla/c;->c()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    instance-of v5, v4, Lla/f;

    if-nez v5, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    check-cast v4, Lla/f;

    .line 12
    instance-of v5, v4, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v6, v7}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v6

    invoke-interface {v4, v5, v6}, Lla/f;->o(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    instance-of v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v2

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v5

    invoke-virtual {v0, v2, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->J(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->r(Lla/f;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p(Lla/f;)V

    .line 17
    :goto_1
    invoke-interface {v4}, Lla/c;->r()Landroid/graphics/PointF;

    move-result-object v0

    .line 18
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->o:F

    .line 19
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p:F

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz v0, :cond_8

    .line 21
    instance-of v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v5, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result p1

    invoke-virtual {v2, v4, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->J(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->r(Lla/f;)V

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p(Lla/f;)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->C:Lcom/guochao/faceshow/aaspring/views/doodle/c$c;

    if-eqz p1, :cond_8

    .line 26
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-interface {p1, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/c$c;->a(Lla/a;Lla/f;Z)V

    goto :goto_4

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n(Lla/e;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->C:Lcom/guochao/faceshow/aaspring/views/doodle/c$c;

    if-eqz p1, :cond_8

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/c$c;->b(Lla/a;FF)V

    goto :goto_4

    .line 30
    :cond_7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->x(Landroid/view/MotionEvent;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    invoke-virtual {p1, v0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 32
    invoke-virtual {p0, p1, p1, v0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->U(Landroid/view/MotionEvent;)V

    .line 34
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return v1
.end method

.method public p(Lla/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-interface {v0, p1}, Lla/f;->a(Z)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->C:Lcom/guochao/faceshow/aaspring/views/doodle/c$c;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-interface {v1, v2, v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c$c;->a(Lla/a;Lla/f;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D(Lla/c;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Lla/f;->a(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->C:Lcom/guochao/faceshow/aaspring/views/doodle/c$c;

    if-eqz p1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {p1, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c$c;->a(Lla/a;Lla/f;Z)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C(Lla/c;)V

    :cond_3
    return-void
.end method

.method public q(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/m$b;->q(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz v0, :cond_2

    .line 4
    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/k;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;-><init>()V

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {v2}, Lla/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {v2}, Lla/c;->f()F

    move-result v2

    .line 9
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->i(F)V

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {v2}, Lla/c;->m()F

    move-result v2

    .line 11
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->h(F)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->g(Landroid/graphics/Rect;)V

    .line 13
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {v2}, Lla/c;->r()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->f(Landroid/graphics/PointF;)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->V(Lcom/guochao/faceshow/aaspring/views/doodle/k;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->U(Z)V

    .line 18
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->I(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G(Lla/c;)V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->J(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->r(Lla/f;)V

    :cond_2
    return-void
.end method

.method public r(Lla/f;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lla/f;->a(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->C:Lcom/guochao/faceshow/aaspring/views/doodle/c$c;

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {p1, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c$c;->a(Lla/a;Lla/f;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C(Lla/c;)V

    :cond_1
    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->D:Z

    return-void
.end method

.method public setSelectionListener(Lcom/guochao/faceshow/aaspring/views/doodle/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->C:Lcom/guochao/faceshow/aaspring/views/doodle/c$c;

    return-void
.end method

.method public x(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->c:F

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->d:F

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setScrollingDoodle(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->n(Lla/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object p1

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getSize()F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->a(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->l(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->k(Z)V

    goto/16 :goto_2

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getPen()Lla/e;

    move-result-object p1

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->l(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->h()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->k(Z)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->t:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->m(FF)V

    .line 13
    :cond_2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->r:Landroid/graphics/Path;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getShape()Lla/g;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HAND_WRITE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    if-ne p1, v0, :cond_3

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->r:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->S(Lla/a;Landroid/graphics/Path;)Lcom/guochao/faceshow/aaspring/views/doodle/e;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e:F

    .line 18
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->f:F

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v3

    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->T(Lla/a;FFFF)Lcom/guochao/faceshow/aaspring/views/doodle/e;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C(Lla/c;)V

    goto/16 :goto_2

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s:Lcom/guochao/faceshow/aaspring/views/doodle/e;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d(Lla/c;)V

    goto/16 :goto_2

    .line 23
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    if-eqz p1, :cond_6

    .line 24
    invoke-interface {p1}, Lla/c;->r()Landroid/graphics/PointF;

    move-result-object p1

    .line 25
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->o:F

    .line 26
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p:F

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    .line 28
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->J(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/doodle/f;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->L(Z)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {p1}, Lla/c;->m()F

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    .line 31
    invoke-interface {v0}, Lla/c;->g()F

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->B:Lla/f;

    invoke-interface {v1}, Lla/c;->h()F

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->a:F

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->b:F

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lma/a;->a(FFFF)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->q:F

    goto :goto_2

    .line 32
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationX()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->o:F

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleTranslationY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p:F

    .line 35
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c;->u:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method
