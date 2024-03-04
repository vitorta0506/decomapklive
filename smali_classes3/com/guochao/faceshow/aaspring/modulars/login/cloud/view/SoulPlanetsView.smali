.class public Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lk9/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;
    }
.end annotation


# instance fields
.field private A:F

.field public a:I

.field private b:F

.field private c:Ll9/a;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:[F

.field private l:[F

.field private m:Z

.field private n:Landroid/view/ViewGroup$MarginLayoutParams;

.field private o:I

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:Lk9/b;

.field private s:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:Z

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b:F

    const v0, 0x3f666666    # 0.9f

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->j:F

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->k:[F

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l:[F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->p:Z

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->q:Landroid/os/Handler;

    .line 8
    new-instance v0, Lk9/a;

    invoke-direct {v0}, Lk9/a;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r:Lk9/b;

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->u(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f70f27c    # 0.9412f
        0x3f44c2f8    # 0.7686f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b:F

    const v0, 0x3f666666    # 0.9f

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->j:F

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 13
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->k:[F

    new-array v0, v0, [F

    .line 14
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l:[F

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->p:Z

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->q:Landroid/os/Handler;

    .line 17
    new-instance v0, Lk9/a;

    invoke-direct {v0}, Lk9/a;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r:Lk9/b;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->u(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f70f27c    # 0.9412f
        0x3f44c2f8    # 0.7686f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x41000000    # 8.0f

    .line 20
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b:F

    const p3, 0x3f666666    # 0.9f

    .line 21
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->j:F

    const/4 p3, 0x4

    new-array v0, p3, [F

    .line 22
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->k:[F

    new-array p3, p3, [F

    .line 23
    fill-array-data p3, :array_1

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l:[F

    const/4 p3, 0x0

    .line 24
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->p:Z

    .line 25
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->q:Landroid/os/Handler;

    .line 26
    new-instance p3, Lk9/a;

    invoke-direct {p3}, Lk9/a;-><init>()V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r:Lk9/b;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->u(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f70f27c    # 0.9412f
        0x3f44c2f8    # 0.7686f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->f:F

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->f:F

    return p1
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->g:F

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    return p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->g:F

    return p1
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->s:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->h:F

    return p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->h:F

    return p1
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->j:F

    return p0
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Ll9/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    return-object p0
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)[F
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->l:[F

    return-object p0
.end method

.method static synthetic n(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)[F
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->k:[F

    return-object p0
.end method

.method static synthetic o(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)Lk9/b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r:Lk9/b;

    return-object p0
.end method

.method static synthetic p(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic q(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d:F

    return p0
.end method

.method private r(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->s:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$b;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private s(FF)F
    .locals 0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private t(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->x:Z

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    if-eq v2, v1, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_7

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->v:F

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v2, p1

    .line 8
    invoke-direct {p0, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->s(FF)F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->w:F

    return v1

    :cond_2
    if-ne v0, v1, :cond_4

    .line 9
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->x:Z

    if-nez v2, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->t:F

    sub-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->u:F

    sub-float/2addr v1, v2

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->w(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->h:F

    div-float/2addr v1, v2

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v1, v1, v3

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b:F

    mul-float v1, v1, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v1, v1, v5

    neg-float v0, v0

    div-float/2addr v0, v2

    mul-float v0, v0, v3

    mul-float v0, v0, v4

    mul-float v0, v0, v5

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v3, v1, v2

    .line 14
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d:F

    div-float v2, v0, v2

    .line 15
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    .line 16
    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->x(FF)V

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->t:F

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->u:F

    .line 19
    :cond_3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->t:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->u:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->z:F

    sub-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->w(FF)Z

    move-result p1

    return p1

    :cond_4
    if-ne v0, v4, :cond_9

    .line 20
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v2, p1

    .line 22
    invoke-direct {p0, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->s(FF)F

    move-result p1

    .line 23
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->w:F

    sub-float v0, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->v:F

    mul-float v0, v0, v2

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_5

    const v0, 0x3fa66666    # 1.3f

    :cond_5
    cmpg-float v2, v0, p1

    if-gez v2, :cond_6

    goto :goto_0

    :cond_6
    move p1, v0

    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return v1

    .line 26
    :cond_7
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->x:Z

    .line 27
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->p:Z

    goto :goto_1

    .line 28
    :cond_8
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->p:Z

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->t:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->u:F

    .line 31
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->t:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->y:F

    .line 32
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->z:F

    :cond_9
    :goto_1
    return v3
.end method

.method private u(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 2
    new-instance v1, Ll9/a;

    invoke-direct {v1}, Ll9/a;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    if-eqz p2, :cond_0

    .line 3
    sget-object v1, Lcom/guochao/faceshow/R$styleable;->SoulPlanetsView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->a:I

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setManualScroll(Z)V

    const/4 p2, 0x6

    const v1, 0x3dcccccd    # 0.1f

    .line 6
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d:F

    const/4 p2, 0x7

    .line 7
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    const/4 p2, 0x4

    .line 8
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->j:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setRadiusPercent(F)V

    const/4 p2, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->setScrollSpeed(F)V

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    :cond_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->a:I

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 13
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 15
    :cond_1
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 16
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 17
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->o:I

    return-void
.end method

.method private w(FF)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

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

.method private x(FF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ll9/a;->k(F)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    invoke-virtual {v0, p2}, Ll9/a;->l(F)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    invoke-virtual {v0}, Ll9/a;->r()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    invoke-virtual {v2, v1}, Ll9/a;->d(I)Ll9/b;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ll9/b;->i()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r:Lk9/b;

    invoke-virtual {v2}, Ll9/b;->a()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lk9/b;->onThemeColorChanged(Landroid/view/View;I)V

    .line 10
    invoke-virtual {v2}, Ll9/b;->h()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 11
    invoke-virtual {v2}, Ll9/b;->h()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 12
    invoke-virtual {v2}, Ll9/b;->h()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    const/high16 v4, -0x40800000    # -1.0f

    .line 13
    invoke-virtual {v3, v4}, Landroid/view/View;->setZ(F)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setZ(F)V

    .line 15
    :goto_1
    invoke-virtual {v2}, Ll9/b;->h()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 16
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->f:F

    invoke-virtual {v2}, Ll9/b;->b()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 17
    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->g:F

    invoke-virtual {v2}, Ll9/b;->c()F

    move-result v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-eqz v5, :cond_2

    .line 19
    array-length v6, v5

    if-lez v6, :cond_2

    .line 20
    aget v6, v5, v0

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    const/4 v4, 0x1

    .line 21
    aget v4, v5, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    invoke-virtual {v0}, Ll9/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll9/b;

    .line 3
    invoke-virtual {v1}, Ll9/b;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoScrollMode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->a:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->q:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->v()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->t(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->i:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x1

    if-ge p2, p3, :cond_2

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 4
    iget-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    invoke-virtual {p5, p2}, Ll9/a;->d(I)Ll9/b;

    move-result-object p5

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r:Lk9/b;

    invoke-virtual {p5}, Ll9/b;->a()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lk9/b;->onThemeColorChanged(Landroid/view/View;I)V

    .line 7
    invoke-virtual {p5}, Ll9/b;->h()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 8
    invoke-virtual {p5}, Ll9/b;->h()F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 9
    invoke-virtual {p5}, Ll9/b;->h()F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 10
    :cond_0
    invoke-virtual {p5}, Ll9/b;->h()F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->f:F

    invoke-virtual {p5}, Ll9/b;->b()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 12
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->g:F

    invoke-virtual {p5}, Ll9/b;->c()F

    move-result p5

    add-float/2addr v1, p5

    float-to-int p5, v1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr p5, v1

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {p3, v0, p5, v1, v3}, Landroid/view/View;->layout(IIII)V

    new-array v1, v2, [I

    aput v0, v1, p1

    aput p5, v1, p4

    .line 14
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->A:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_3

    .line 16
    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->i:Z

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->n:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->n:Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->o:I

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->n:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v0, p1, v0

    :goto_0
    if-ne p2, v2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->o:I

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->n:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v1

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v1, p1, p2

    .line 10
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1, p1}, Landroid/view/ViewGroup;->measureChildren(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->t(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b:F

    mul-float p1, p1, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float p1, p1, v2

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d:F

    neg-float v0, v0

    mul-float v0, v0, v1

    mul-float v0, v0, v2

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    invoke-virtual {v0, p1}, Ll9/a;->k(F)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    invoke-virtual {p1, v0}, Ll9/a;->l(F)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->c:Ll9/a;

    invoke-virtual {p1}, Ll9/a;->r()V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->y()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->p:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d23d70a    # 0.04f

    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d:F

    mul-float v3, v0, v1

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d:F

    .line 4
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    mul-float v1, v1, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    .line 6
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->d:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->e:F

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->x(FF)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-wide/16 v0, 0x10

    .line 8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->A:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-long v0, v0

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->q:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setAdapter(Lk9/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->r:Lk9/b;

    .line 2
    invoke-virtual {p1, p0}, Lk9/b;->setOnDataSetChangeListener(Lk9/b$a;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->onChange()V

    return-void
.end method

.method public setAutoScrollMode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->a:I

    return-void
.end method

.method public setLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->i:Z

    return-void
.end method

.method public setManualScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->m:Z

    return-void
.end method

.method public setOnTagClickListener(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->s:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;

    return-void
.end method

.method public setRadiusPercent(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->j:F

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->onChange()V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Percent value not in range 0 to 1."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRefreshRate(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->A:F

    return-void
.end method

.method public setScrollSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;->b:F

    return-void
.end method

.method public v()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
