.class Lcom/scwang/smartrefresh/header/FlyRefreshHeader$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->s(Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/AnimatorListenerAdapter;

.field final synthetic b:Lcom/scwang/smartrefresh/header/FlyRefreshHeader;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/FlyRefreshHeader;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$c;->b:Lcom/scwang/smartrefresh/header/FlyRefreshHeader;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$c;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$c;->b:Lcom/scwang/smartrefresh/header/FlyRefreshHeader;

    iget-object v0, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->g:Lwd/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lwd/j;->f(Z)Lwd/j;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$c;->a:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$c;->b:Lcom/scwang/smartrefresh/header/FlyRefreshHeader;

    iget-object p1, p1, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    :cond_0
    return-void
.end method
