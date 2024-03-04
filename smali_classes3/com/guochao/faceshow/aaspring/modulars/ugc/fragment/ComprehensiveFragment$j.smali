.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->u2(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

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
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->j2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;I)I

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "data"

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 11
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvRelatedDynamic:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvRelatedDynamic:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->j2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;I)I

    goto :goto_1

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->d2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
