.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$b;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$b;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->d:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    .line 2
    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {p1, v1}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$b;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->d:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->c:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$b;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->d:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$b;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->d:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v0}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    return-void
.end method
