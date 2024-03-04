.class public Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/f;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->c:Lwd/h;

    instance-of v1, v0, Lwd/f;

    if-eqz v1, :cond_0

    check-cast v0, Lwd/f;

    invoke-interface {v0, p1}, Lwd/f;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
