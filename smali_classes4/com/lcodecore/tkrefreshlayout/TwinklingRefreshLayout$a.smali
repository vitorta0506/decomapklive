.class Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Z)V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lmc/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmc/c;->e(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lmc/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lmc/c;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lmc/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lmc/c;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 8

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lmc/c;

    move-result-object v1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v6

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->p(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    move-result v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lmc/c;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    return-void
.end method
