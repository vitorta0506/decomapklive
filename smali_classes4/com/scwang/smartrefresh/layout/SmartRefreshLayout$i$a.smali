.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$a;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i$a;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;->d:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lwd/i;->g(IZ)Lwd/i;

    return-void
.end method
