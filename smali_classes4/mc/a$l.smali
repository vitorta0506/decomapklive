.class Lmc/a$l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/a;->F(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lmc/a;


# direct methods
.method constructor <init>(Lmc/a;II)V
    .locals 0

    iput-object p1, p0, Lmc/a$l;->c:Lmc/a;

    iput p2, p0, Lmc/a$l;->a:I

    iput p3, p0, Lmc/a$l;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lmc/a$l;->c:Lmc/a;

    invoke-static {p1}, Lmc/a;->m(Lmc/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmc/a$l;->c:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmc/a$l;->c:Lmc/a;

    invoke-static {p1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->j0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lmc/a$l;->c:Lmc/a;

    invoke-virtual {p1}, Lmc/a;->B()V

    .line 3
    iget-object p1, p0, Lmc/a$l;->c:Lmc/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmc/a;->d(Lmc/a;Z)Z

    .line 4
    iget-object p1, p0, Lmc/a$l;->c:Lmc/a;

    invoke-static {p1, v0}, Lmc/a;->e(Lmc/a;Z)Z

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lmc/a$l;->c:Lmc/a;

    iget v2, p0, Lmc/a$l;->a:I

    const/4 v3, 0x0

    iget p1, p0, Lmc/a$l;->b:I

    mul-int/lit8 p1, p1, 0x2

    int-to-long v4, p1

    invoke-static {v1}, Lmc/a;->f(Lmc/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    new-instance v7, Lmc/a$l$a;

    invoke-direct {v7, p0}, Lmc/a$l$a;-><init>(Lmc/a$l;)V

    invoke-virtual/range {v1 .. v7}, Lmc/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
