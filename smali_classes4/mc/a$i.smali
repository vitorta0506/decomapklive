.class Lmc/a$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/a;->w(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lmc/a;


# direct methods
.method constructor <init>(Lmc/a;Z)V
    .locals 0

    iput-object p1, p0, Lmc/a$i;->b:Lmc/a;

    iput-boolean p2, p0, Lmc/a$i;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmc/a;->u(Lmc/a;Z)Z

    .line 2
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->a0(Z)V

    .line 3
    iget-boolean p1, p0, Lmc/a$i;->a:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1}, Lmc/a;->q(Lmc/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 7
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1, v0}, Lmc/a;->r(Lmc/a;Z)Z

    .line 9
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Y()V

    .line 10
    iget-object p1, p0, Lmc/a$i;->b:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->b0(Z)V

    :cond_0
    return-void
.end method
