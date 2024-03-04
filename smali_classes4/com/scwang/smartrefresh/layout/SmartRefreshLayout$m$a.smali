.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->f(Z)Lwd/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m$a;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m$a;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v0}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    return-void
.end method
