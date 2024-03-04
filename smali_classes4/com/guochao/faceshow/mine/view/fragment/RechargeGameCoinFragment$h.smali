.class Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->R1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->R1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->V1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->V1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_0
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->onFailure(Lg7/a;)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->X1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->X1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$h;->a(Lcom/guochao/faceshow/aaspring/beans/GameCoinBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
