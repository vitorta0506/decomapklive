.class Ld7/d$b;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/d;->notifyDataLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ld7/d;


# direct methods
.method constructor <init>(Ld7/d;Z)V
    .locals 0

    iput-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iput-boolean p2, p0, Ld7/d$b;->a:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Integer;)V
    .locals 3

    .line 2
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    move-result-object p1

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    move-result-object p1

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_3

    .line 4
    :cond_1
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    invoke-virtual {p1}, Ld7/d;->canLoadMore()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object v0, p1, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v2, p0, Ld7/d$b;->a:Z

    invoke-static {p1}, Ld7/d;->k(Ld7/d;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->t(ZZ)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    move-result-object p1

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    move-result-object p1

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_7

    .line 11
    :cond_4
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object v0, p1, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-eqz v0, :cond_5

    .line 12
    iget-boolean v2, p0, Ld7/d$b;->a:Z

    invoke-static {p1}, Ld7/d;->k(Ld7/d;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->t(ZZ)V

    .line 13
    :cond_5
    iget-boolean p1, p0, Ld7/d$b;->a:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    invoke-virtual {p1}, Ld7/d;->canLoadMore()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, p0, Ld7/d$b;->b:Ld7/d;

    iget-object p1, p1, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_7
    :goto_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ld7/d$b;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
