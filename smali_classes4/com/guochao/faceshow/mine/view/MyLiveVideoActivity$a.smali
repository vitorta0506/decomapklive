.class Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;
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
            "Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p2, p1, Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;->totalPage:Ljava/lang/Integer;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;->totalPage:Ljava/lang/Integer;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getDefaultPage()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 6
    :cond_3
    iget-object p2, p1, Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;->list:Ljava/util/ArrayList;

    if-nez p2, :cond_4

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;->list:Ljava/util/ArrayList;

    .line 8
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    :goto_0
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

    check-cast p1, Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/MyLiveVideoActivity$a;->a(Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
