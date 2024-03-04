.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B3:Lzd/b;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, v0}, Lzd/b;->b(Lwd/j;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-nez v1, :cond_1

    const/16 v1, 0x7d0

    .line 4
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1, v0}, Lzd/b;->b(Lwd/j;)V

    :cond_2
    return-void
.end method
