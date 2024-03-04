.class Lmc/a$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmc/a;


# direct methods
.method constructor <init>(Lmc/a;)V
    .locals 0

    iput-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmc/a;->p(Lmc/a;Z)Z

    .line 2
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->a0(Z)V

    .line 5
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->q(Lmc/a;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->b0(Z)V

    .line 8
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Q()V

    .line 9
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1, v0}, Lmc/a;->r(Lmc/a;Z)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->b0(Z)V

    .line 11
    iget-object p1, p0, Lmc/a$g;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Q()V

    :cond_2
    :goto_0
    return-void
.end method
