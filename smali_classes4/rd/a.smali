.class public Lrd/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/a$c;
    }
.end annotation


# static fields
.field private static final j:Landroid/view/animation/Interpolator;

.field static final k:Landroid/view/animation/Interpolator;

.field private static final l:[I


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lrd/a$c;

.field private c:F

.field private d:Landroid/view/View;

.field private e:Landroid/view/animation/Animation;

.field f:F

.field private g:F

.field private h:F

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lrd/a;->j:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lrd/a;->k:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 3
    sput-object v0, Lrd/a;->l:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrd/a;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lrd/a$c;

    invoke-direct {v0, p0}, Lrd/a$c;-><init>(Lrd/a;)V

    iput-object v0, p0, Lrd/a;->b:Lrd/a$c;

    .line 4
    iput-object p1, p0, Lrd/a;->d:Landroid/view/View;

    .line 5
    sget-object p1, Lrd/a;->l:[I

    invoke-virtual {p0, p1}, Lrd/a;->f([I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lrd/a;->n(I)V

    .line 7
    invoke-direct {p0}, Lrd/a;->k()V

    return-void
.end method

.method private b(FII)I
    .locals 6

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private i(IIFFFF)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 3
    iput p1, p0, Lrd/a;->g:F

    int-to-float p1, p2

    mul-float p1, p1, v0

    .line 4
    iput p1, p0, Lrd/a;->h:F

    .line 5
    iget-object p1, p0, Lrd/a;->b:Lrd/a$c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lrd/a$c;->h(I)V

    .line 6
    iget-object p1, p0, Lrd/a;->b:Lrd/a$c;

    iget-object p1, p1, Lrd/a$c;->b:Landroid/graphics/Paint;

    mul-float p4, p4, v0

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object p1, p0, Lrd/a;->b:Lrd/a$c;

    iput p4, p1, Lrd/a$c;->g:F

    mul-float p3, p3, v0

    float-to-double p2, p3

    .line 8
    iput-wide p2, p1, Lrd/a$c;->q:D

    mul-float p5, p5, v0

    float-to-int p2, p5

    .line 9
    iput p2, p1, Lrd/a$c;->r:I

    mul-float p6, p6, v0

    float-to-int p2, p6

    .line 10
    iput p2, p1, Lrd/a$c;->s:I

    .line 11
    iget p2, p0, Lrd/a;->g:F

    float-to-int p2, p2

    iget p3, p0, Lrd/a;->h:F

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Lrd/a$c;->i(II)V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    .line 2
    new-instance v1, Lrd/a$a;

    invoke-direct {v1, p0, v0}, Lrd/a$a;-><init>(Lrd/a;Lrd/a$c;)V

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 5
    sget-object v2, Lrd/a;->j:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6
    new-instance v2, Lrd/a$b;

    invoke-direct {v2, p0, v0}, Lrd/a$b;-><init>(Lrd/a;Lrd/a$c;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    iput-object v1, p0, Lrd/a;->e:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method a(FLrd/a$c;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lrd/a;->m(FLrd/a$c;)V

    .line 2
    iget v0, p2, Lrd/a$c;->m:F

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 3
    invoke-virtual {p0, p2}, Lrd/a;->c(Lrd/a$c;)F

    move-result v1

    .line 4
    iget v2, p2, Lrd/a$c;->k:F

    iget v3, p2, Lrd/a$c;->l:F

    sub-float v1, v3, v1

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v2, v1

    .line 5
    invoke-virtual {p0, v2, v3}, Lrd/a;->j(FF)V

    .line 6
    iget p2, p2, Lrd/a$c;->m:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 7
    invoke-virtual {p0, p2}, Lrd/a;->g(F)V

    return-void
.end method

.method c(Lrd/a$c;)F
    .locals 6

    iget v0, p1, Lrd/a$c;->g:F

    float-to-double v0, v0

    iget-wide v2, p1, Lrd/a$c;->q:D

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public d(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iget v1, v0, Lrd/a$c;->p:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Lrd/a$c;->p:F

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3
    iget v2, p0, Lrd/a;->c:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    iget-object v2, p0, Lrd/a;->b:Lrd/a$c;

    invoke-virtual {v2, p1, v0}, Lrd/a$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public e(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iput p1, v0, Lrd/a$c;->v:I

    return-void
.end method

.method public varargs f([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iput-object p1, v0, Lrd/a$c;->i:[I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Lrd/a$c;->h(I)V

    return-void
.end method

.method public g(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iput p1, v0, Lrd/a$c;->f:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iget v0, v0, Lrd/a$c;->t:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lrd/a;->h:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lrd/a;->g:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method h(F)V
    .locals 0

    .line 1
    iput p1, p0, Lrd/a;->c:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lrd/a;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public j(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iput p1, v0, Lrd/a$c;->d:F

    .line 2
    iput p2, v0, Lrd/a$c;->e:F

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iget-boolean v1, v0, Lrd/a$c;->n:Z

    if-eq v1, p1, :cond_0

    .line 2
    iput-boolean p1, v0, Lrd/a$c;->n:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method m(FLrd/a$c;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 1
    invoke-virtual {p2}, Lrd/a$c;->e()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lrd/a$c;->c()I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lrd/a;->b(FII)I

    move-result p1

    iput p1, p2, Lrd/a$c;->w:I

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 14

    if-nez p1, :cond_0

    const/16 v1, 0x38

    const/16 v2, 0x38

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40c00000    # 6.0f

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lrd/a;->i(IIFFFF)V

    goto :goto_0

    :cond_0
    const/16 v8, 0x28

    const/16 v9, 0x28

    const/high16 v10, 0x410c0000    # 8.75f

    const/high16 v11, 0x40200000    # 2.5f

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v13, 0x40a00000    # 5.0f

    move-object v7, p0

    .line 2
    invoke-direct/range {v7 .. v13}, Lrd/a;->i(IIFFFF)V

    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iput p1, v0, Lrd/a$c;->t:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iget-object v0, v0, Lrd/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrd/a;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    invoke-virtual {v0}, Lrd/a$c;->j()V

    .line 3
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    iget v1, v0, Lrd/a$c;->e:F

    iget v2, v0, Lrd/a$c;->d:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lrd/a;->i:Z

    .line 5
    iget-object v0, p0, Lrd/a;->e:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6
    iget-object v0, p0, Lrd/a;->d:Landroid/view/View;

    iget-object v1, p0, Lrd/a;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lrd/a$c;->h(I)V

    .line 8
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    invoke-virtual {v0}, Lrd/a$c;->g()V

    .line 9
    iget-object v0, p0, Lrd/a;->e:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object v0, p0, Lrd/a;->d:Landroid/view/View;

    iget-object v1, p0, Lrd/a;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrd/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrd/a$c;->h(I)V

    .line 3
    iget-object v0, p0, Lrd/a;->b:Lrd/a$c;

    invoke-virtual {v0}, Lrd/a$c;->g()V

    .line 4
    invoke-virtual {p0, v1}, Lrd/a;->l(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lrd/a;->h(F)V

    return-void
.end method
