.class public abstract Lag/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected final b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/drawable/Drawable$Callback;

.field private d:Landroid/animation/ValueAnimator;

.field protected e:J

.field protected f:F

.field protected g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lag/d$a;

    invoke-direct {v0, p0}, Lag/d$a;-><init>(Lag/d;)V

    iput-object v0, p0, Lag/d;->a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lag/d;->b:Landroid/graphics/Rect;

    const/high16 v0, 0x42600000    # 56.0f

    .line 4
    invoke-static {p1, v0}, Lag/e;->a(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lag/d;->g:F

    iput p1, p0, Lag/d;->f:F

    const-wide/16 v0, 0x535

    .line 5
    iput-wide v0, p0, Lag/d;->e:J

    .line 6
    invoke-direct {p0}, Lag/d;->l()V

    return-void
.end method

.method static synthetic a(Lag/d;)V
    .locals 0

    invoke-direct {p0}, Lag/d;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lag/d;->c:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 3
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 4
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lag/d;->e:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lag/d;->a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected abstract c(F)V
.end method

.method protected abstract d(Landroid/graphics/Canvas;)V
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected abstract g()V
.end method

.method protected abstract h(I)V
.end method

.method i(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lag/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method j(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    iput-object p1, p0, Lag/d;->c:Landroid/graphics/drawable/Drawable$Callback;

    return-void
.end method

.method protected abstract k(Landroid/graphics/ColorFilter;)V
.end method

.method m()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lag/d;->g()V

    .line 2
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lag/d;->a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lag/d;->e:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lag/d;->a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 3
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lag/d;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method
