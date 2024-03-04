.class Lag/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lag/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lag/b;


# direct methods
.method constructor <init>(Lag/b;)V
    .locals 0

    iput-object p1, p0, Lag/b$a;->a:Lag/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lag/b$a;->a:Lag/b;

    invoke-static {p1}, Lag/b;->o(Lag/b;)V

    .line 3
    iget-object p1, p0, Lag/b$a;->a:Lag/b;

    invoke-static {p1}, Lag/b;->q(Lag/b;)F

    move-result v0

    invoke-static {p1, v0}, Lag/b;->p(Lag/b;F)F

    .line 4
    iget-object p1, p0, Lag/b$a;->a:Lag/b;

    invoke-static {p1}, Lag/b;->r(Lag/b;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr v0, v1

    invoke-static {p1, v0}, Lag/b;->s(Lag/b;F)F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lag/b$a;->a:Lag/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lag/b;->s(Lag/b;F)F

    return-void
.end method
