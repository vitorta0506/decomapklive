.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b5:J

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V2:Lzd/d;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lzd/d;->a(Lwd/j;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-nez v0, :cond_1

    const/16 v0, 0xbb8

    .line 7
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v0, :cond_2

    .line 9
    iget v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    iget v2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {v0, p1, v1, v2}, Lwd/h;->k(Lwd/j;II)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    instance-of v1, v1, Lwd/g;

    if-eqz v1, :cond_4

    .line 11
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->a:Z

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v0, p1}, Lzd/d;->a(Lwd/j;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    check-cast v1, Lwd/g;

    iget v2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    int-to-float v3, v2

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lzd/c;->p(Lwd/g;II)V

    :cond_4
    return-void
.end method
