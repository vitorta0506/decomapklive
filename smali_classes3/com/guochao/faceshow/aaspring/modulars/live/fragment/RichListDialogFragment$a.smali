.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/RichListBaen;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RichListBaen;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->showEmptyViewNoText()V

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

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RichListBaen;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RichListBaen;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->addDatas(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->a:I

    if-ne p1, p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->showEmptyViewNoText()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/RichListDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->hideFooterView()V

    return-void
.end method
