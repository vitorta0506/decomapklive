.class Lmc/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/a;->w(Z)V
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

    iput-object p1, p0, Lmc/a$h;->a:Lmc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lmc/a$h;->a:Lmc/a;

    invoke-static {v1}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmc/a$h;->a:Lmc/a;

    invoke-static {v2}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()I

    move-result v2

    invoke-static {v1, v2}, Lnc/b;->g(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lmc/a$h;->a:Lmc/a;

    invoke-static {v1}, Lmc/a;->s(Lmc/a;)I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 4
    iget-object v0, p0, Lmc/a$h;->a:Lmc/a;

    invoke-static {v0}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lmc/a$h;->a:Lmc/a;

    invoke-static {v0}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lnc/b;->j(Landroid/view/View;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lmc/a$h;->a:Lmc/a;

    invoke-static {v0}, Lmc/a;->b(Lmc/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->x()Landroid/view/View;

    move-result-object v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lnc/b;->j(Landroid/view/View;I)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lmc/a$h;->a:Lmc/a;

    invoke-static {v0}, Lmc/a;->t(Lmc/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method
