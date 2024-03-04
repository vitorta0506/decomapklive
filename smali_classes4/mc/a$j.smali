.class Lmc/a$j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/a;->A(I)V
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

    iput-object p1, p0, Lmc/a$j;->a:Lmc/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmc/a$j;->a:Lmc/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmc/a;->v(Lmc/a;Z)Z

    .line 2
    iget-object p1, p0, Lmc/a$j;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->e0(Z)V

    .line 3
    iget-object p1, p0, Lmc/a$j;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lmc/a$j;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f0(Z)V

    .line 5
    iget-object p1, p0, Lmc/a$j;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->X()V

    .line 6
    iget-object p1, p0, Lmc/a$j;->a:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Z()V

    :cond_0
    return-void
.end method
