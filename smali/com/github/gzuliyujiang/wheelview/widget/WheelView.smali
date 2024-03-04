.class public Lcom/github/gzuliyujiang/wheelview/widget/WheelView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private A:Lk1/a;

.field private final B:Landroid/graphics/Rect;

.field private B3:I

.field private final C:Landroid/graphics/Rect;

.field private C4:I

.field private final D:Landroid/graphics/Rect;

.field private final D4:I

.field private final E:Landroid/graphics/Rect;

.field private final E4:I

.field private final F:Landroid/graphics/Camera;

.field private final F4:I

.field private final G:Landroid/graphics/Matrix;

.field private G4:Z

.field private final H:Landroid/graphics/Matrix;

.field private H4:Z

.field private I:I

.field private final I4:Landroid/util/AttributeSet;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private V1:I

.field private V2:I

.field private V3:I

.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private a1:I

.field private a2:I

.field protected b:Lk1/c;

.field protected c:Ljava/lang/Object;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:F

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:I

.field private final w:Landroid/os/Handler;

.field private final x:Landroid/graphics/Paint;

.field private final y:Landroid/widget/Scroller;

.field private z:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/github/gzuliyujiang/wheelview/R$attr;->WheelStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a:Ljava/util/List;

    const/16 v0, 0x5a

    .line 5
    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v:I

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->w:Landroid/os/Handler;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x45

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->C:Landroid/graphics/Rect;

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->D:Landroid/graphics/Rect;

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E:Landroid/graphics/Rect;

    .line 12
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    .line 13
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G:Landroid/graphics/Matrix;

    .line 14
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H:Landroid/graphics/Matrix;

    .line 15
    iput-object p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->I4:Landroid/util/AttributeSet;

    .line 16
    sget v1, Lcom/github/gzuliyujiang/wheelview/R$style;->WheelDefault:I

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->J()V

    .line 18
    iget p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->j:I

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->D4:I

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E4:I

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F4:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private A(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    if-nez p2, :cond_0

    const/high16 p2, 0x41700000    # 15.0f

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p3, p3, p2

    float-to-int p2, p3

    iput p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->j:I

    const/4 p2, 0x5

    .line 2
    iput p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->e:I

    .line 4
    iput-boolean p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->p:Z

    const-string p3, ""

    .line 5
    iput-object p3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->g:Ljava/lang/String;

    const/high16 p3, -0x1000000

    .line 6
    iput p3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i:I

    const p3, -0x777778

    .line 7
    iput p3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->h:I

    const/high16 p3, 0x41a00000    # 20.0f

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    mul-float p4, p4, p3

    float-to-int p3, p4

    iput p3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n:I

    .line 9
    iput-boolean p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t:Z

    const/4 p3, 0x1

    .line 10
    iput-boolean p3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->q:Z

    const p3, -0x363637

    .line 11
    iput p3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->l:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p3

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k:F

    .line 13
    iput-boolean p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->r:Z

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m:I

    .line 15
    iput-boolean p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->s:Z

    .line 16
    iput-boolean p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    const/16 p1, 0x5a

    .line 17
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v:I

    .line 18
    iput p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->o:I

    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private B(II)Z
    .locals 0

    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private C(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    return p2
.end method

.method private E(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getItemCount()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 3
    rem-int/2addr p1, v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private H(F)F
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private I()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method

.method private J()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 2
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->J:I

    .line 5
    div-int/2addr v0, v1

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->K:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Visible item count can not be less than 2"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private c(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    return p2

    :cond_0
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private d(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->s:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V2:I

    sub-int p1, v0, p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->r:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V1:I

    iget v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->O:I

    sub-int v5, v3, v4

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private g(IF)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V2:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    neg-float p2, v0

    .line 2
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v:I

    int-to-float v1, v0

    mul-float p2, p2, v1

    int-to-float p1, p1

    mul-float p2, p2, p1

    neg-int p1, v0

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-direct {p0, p2, p1, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->c(FFF)F

    move-result p1

    return p1
.end method

.method private h(F)I
    .locals 6

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->P:I

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->P:I

    int-to-double v4, p1

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private i(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->O:I

    if-le v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    if-gez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    neg-int v0, v0

    :goto_0
    sub-int/2addr v0, p1

    return v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private j()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a1:I

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a2:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a2:I

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a2:I

    .line 5
    :goto_0
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V1:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V2:I

    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->e:I

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    mul-int v0, v0, v1

    .line 2
    iget-boolean v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t:Z

    if-eqz v2, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    neg-int v1, v1

    .line 3
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->Q:I

    .line 4
    iget-boolean v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t:Z

    if-eqz v1, :cond_1

    const v0, 0x7fffffff

    :cond_1
    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->R:I

    return-void
.end method

.method private l()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->q:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V1:I

    iget v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->O:I

    add-int v3, v1, v2

    sub-int/2addr v1, v2

    .line 4
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->C:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v6, v3, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->D:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    invoke-virtual {v2, v4, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private m(I)I
    .locals 2

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    mul-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->e:I

    add-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method private n()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->M:I

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->L:I

    .line 2
    iget-boolean v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->p:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->L:I

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->L:I

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getItemCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 8
    iget v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->L:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->L:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 10
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->M:I

    return-void
.end method

.method private o(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H(F)F

    move-result p1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H(F)F

    move-result v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->P:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method private p(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    mul-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->K:I

    sub-int/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->e:I

    add-int/2addr v2, v0

    mul-int/lit8 v1, v1, -0x1

    .line 3
    :goto_0
    iget v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->e:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->J:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    .line 4
    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    iget v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->h:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V2:I

    iget v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    mul-int v5, v1, v4

    add-int/2addr v5, v3

    iget v6, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    rem-int/2addr v6, v4

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 8
    iget v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V2:I

    sub-int v6, v4, v3

    iget-object v7, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v6, v6, v8

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v6, v4

    .line 9
    invoke-direct {p0, v5, v6}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->g(IF)F

    move-result v4

    .line 10
    invoke-direct {p0, v4}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->o(F)F

    move-result v6

    .line 11
    iget-boolean v7, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 12
    iget v7, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a1:I

    .line 13
    iget v9, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->o:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iget-object v7, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 15
    :cond_1
    iget-object v7, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 16
    :goto_1
    iget v9, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V1:I

    int-to-float v9, v9

    sub-float/2addr v9, v6

    .line 17
    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->save()V

    .line 18
    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    invoke-virtual {v10, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 19
    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    iget-object v11, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 20
    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->restore()V

    .line 21
    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G:Landroid/graphics/Matrix;

    neg-int v11, v7

    int-to-float v11, v11

    neg-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 22
    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G:Landroid/graphics/Matrix;

    int-to-float v7, v7

    invoke-virtual {v10, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 23
    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->save()V

    .line 24
    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    invoke-direct {p0, v4}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->h(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v10, v8, v8, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 25
    iget-object v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    iget-object v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual {v4, v10}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 26
    iget-object v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 27
    iget-object v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 28
    iget-object v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 29
    iget-object v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 30
    :cond_2
    invoke-direct {p0, v3}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d(I)V

    .line 31
    iget-boolean v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V2:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    goto :goto_2

    :cond_3
    int-to-float v3, v5

    .line 32
    :goto_2
    invoke-direct {p0, v2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    iget-object v5, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v8

    if-lez v5, :cond_4

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    :cond_4
    invoke-direct {p0, p1, v4, v3}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->s(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private q(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->r:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 4
    iget v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private r(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->q:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->C:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->D:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private s(Landroid/graphics/Canvas;Ljava/lang/String;F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a2:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 11
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 12
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 14
    :goto_0
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a2:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 16
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 21
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a2:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private w(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->b()V

    return-void
.end method

.method private x(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F()V

    .line 4
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7
    iput-boolean v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H4:Z

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V3:I

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->C4:I

    return-void
.end method

.method private y(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    rem-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i(I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->C4:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->F4:I

    int-to-float v2, v2

    const/4 v3, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    if-lez v0, :cond_0

    .line 3
    iput-boolean v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G4:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G4:Z

    .line 5
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A:Lk1/a;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p0, v3}, Lk1/a;->b(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V3:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    return-void

    .line 11
    :cond_3
    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V3:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private z(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G4:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->E4:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 7
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    move v6, p1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 8
    :goto_0
    iput-boolean v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H4:Z

    .line 9
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->D4:I

    if-le p1, v0, :cond_3

    .line 10
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    const/4 v3, 0x0

    iget v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->Q:I

    iget v10, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->R:I

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 11
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    rem-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i(I)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_1

    .line 13
    :cond_3
    iget p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    rem-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i(I)I

    move-result p1

    .line 14
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    iget v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    invoke-virtual {v0, v1, v2, v1, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 15
    :goto_1
    iget-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t:Z

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->R:I

    if-le p1, v0, :cond_4

    .line 17
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_2

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->Q:I

    if-ge p1, v0, :cond_5

    .line 19
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 20
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->w:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->b()V

    return-void
.end method


# virtual methods
.method public D()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->c:Ljava/lang/Object;

    .line 2
    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->e:I

    .line 3
    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->f:I

    .line 4
    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    .line 5
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->I()V

    .line 6
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n()V

    .line 7
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected G(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 3
    sget v1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_itemTextSize:I

    const/high16 v2, 0x41700000    # 15.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->j:I

    .line 4
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_visibleItemCount:I

    const/4 v1, 0x5

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    .line 5
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_sameWidthEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->p:Z

    .line 6
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_maxWidthText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->g:Ljava/lang/String;

    .line 7
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_itemTextColorSelected:I

    const/high16 v2, -0x1000000

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i:I

    .line 8
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_itemTextColor:I

    const v2, -0x777778

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->h:I

    .line 9
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_itemSpace:I

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n:I

    .line 10
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_cyclicEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t:Z

    .line 11
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_indicatorEnabled:I

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->q:Z

    .line 12
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_indicatorColor:I

    const v2, -0x363637

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->l:I

    .line 13
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_indicatorSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k:F

    .line 14
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_curtainEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->r:Z

    .line 15
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_curtainColor:I

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m:I

    .line 16
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_atmosphericEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->s:Z

    .line 17
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_curvedEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    .line 18
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_curvedMaxAngle:I

    const/16 v0, 0x5a

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v:I

    .line 19
    sget p1, Lcom/github/gzuliyujiang/wheelview/R$styleable;->WheelView_wheel_itemTextAlign:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->o:I

    return-void
.end method

.method public getCurrentItem()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->f:I

    invoke-virtual {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->f:I

    return v0
.end method

.method public getCurtainColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m:I

    return v0
.end method

.method public getCurvedMaxAngle()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a:Ljava/util/List;

    return-object v0
.end method

.method public getIndicatorColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->l:I

    return v0
.end method

.method public getIndicatorSize()F
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k:F

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemSpace()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n:I

    return v0
.end method

.method public getMaxWidthText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i:I

    return v0
.end method

.method public getTextAlign()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->o:I

    return v0
.end method

.method public getTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->h:I

    return v0
.end method

.method public getTextSize()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->j:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A:Lk1/a;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    invoke-interface {v0, p0, v1}, Lk1/a;->c(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    iget v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->K:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->p(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->q(Landroid/graphics/Canvas;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->r(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 5
    iget v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->L:I

    .line 6
    iget v3, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->M:I

    iget v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    mul-int v3, v3, v4

    iget v5, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n:I

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v5, v4

    add-int/2addr v3, v5

    .line 7
    iget-boolean v4, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    if-eqz v4, :cond_0

    mul-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 10
    invoke-direct {p0, v0, p1, v2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->C(III)I

    move-result p1

    .line 11
    invoke-direct {p0, v1, p2, v3}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->C(III)I

    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a1:I

    .line 5
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->V1:I

    .line 6
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->j()V

    .line 7
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->P:I

    .line 8
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    .line 9
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->O:I

    .line 10
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k()V

    .line 11
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->l()V

    .line 12
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->f()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->w(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->z(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x(Landroid/view/MotionEvent;)V

    .line 7
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->G4:Z

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->performClick()Z

    :cond_5
    return v1
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->N:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->H4:Z

    if-nez v1, :cond_4

    .line 4
    invoke-direct {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m(I)I

    move-result v1

    if-gez v1, :cond_2

    add-int/2addr v1, v0

    .line 5
    :cond_2
    iput v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->f:I

    .line 6
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A:Lk1/a;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0, p0, v1}, Lk1/a;->d(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V

    .line 8
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A:Lk1/a;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lk1/a;->b(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A:Lk1/a;

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    .line 12
    invoke-interface {v1, p0, v2}, Lk1/a;->b(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->y:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    .line 14
    invoke-direct {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m(I)I

    move-result v1

    .line 15
    iget v2, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->I:I

    if-eq v2, v1, :cond_7

    if-nez v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A:Lk1/a;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0, p0}, Lk1/a;->a(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;)V

    .line 18
    :cond_6
    iput v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->I:I

    .line 19
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 20
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->w:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void
.end method

.method public setAtmosphericEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->s:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurtainColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->m:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurtainEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->r:Z

    .line 2
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->f()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->u:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedMaxAngle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCyclicEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->t:Z

    .line 2
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->D()V

    return-void
.end method

.method public setDefaultPosition(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->c:Ljava/lang/Object;

    .line 4
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->e:I

    .line 5
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->f:I

    .line 6
    iput v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->B3:I

    .line 7
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    instance-of v3, v2, Lk1/b;

    if-eqz v3, :cond_2

    .line 4
    check-cast v2, Lk1/b;

    invoke-interface {v2}, Lk1/b;->provideText()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultPosition(I)V

    return-void
.end method

.method public setFormatter(Lk1/c;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->b:Lk1/c;

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->l:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->q:Z

    .line 2
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->l()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorSize(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->k:F

    .line 2
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->l()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setItemSpace(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxWidthText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Maximum width text can not be null!"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->g:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnWheelChangedListener(Lk1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A:Lk1/a;

    return-void
.end method

.method public setSameWidthEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->p:Z

    .line 2
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->i:I

    .line 2
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->f()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->I4:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->I4:Landroid/util/AttributeSet;

    sget v2, Lcom/github/gzuliyujiang/wheelview/R$attr;->WheelStyle:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->A(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextAlign(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->o:I

    .line 2
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->I()V

    .line 3
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->j()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->h:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->j:I

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->x:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->n()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->d:I

    .line 2
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->J()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public t(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lk1/b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lk1/b;

    invoke-interface {p1}, Lk1/b;->provideText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->b:Lk1/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lk1/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected u()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "\u8d35\u5dde\u7a7f\u9752\u4eba"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "\u5927\u5b9a\u5e9c\u7fa1\u6c11"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "\u4e0d\u5728\u4e94\u5341\u516d\u4e2a\u6c11\u65cf\u4e4b\u5185"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "\u5df2\u8bc6\u522b\u5f85\u5b9a\u6c11\u65cf"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "\u7a7f\u9752\u5c71\u9b48\u4eba\u9a6c"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "\u674e\u88d5\u6c5f"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public v(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    add-int/2addr p1, v0

    .line 2
    rem-int/2addr p1, v0

    if-ltz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method
