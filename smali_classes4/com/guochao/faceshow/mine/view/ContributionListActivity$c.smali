.class Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/ContributionListActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C()V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    iget v0, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->totalPage:I

    invoke-static {p2, v0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->k0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;I)I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->b0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->l0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object p2

    iget-object p1, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->l0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object p2

    iget-object p1, p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->addData(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;->onResponse(Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
