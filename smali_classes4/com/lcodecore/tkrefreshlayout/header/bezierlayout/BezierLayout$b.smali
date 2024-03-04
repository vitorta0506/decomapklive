.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 6
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b$a;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
