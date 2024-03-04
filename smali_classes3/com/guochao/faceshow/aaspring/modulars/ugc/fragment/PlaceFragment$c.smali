.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->X1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->MusicLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->MusicLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    .line 10
    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setType(I)V

    const/4 v3, 0x3

    .line 11
    invoke-virtual {p2, v3}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setImageModel(I)V

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
