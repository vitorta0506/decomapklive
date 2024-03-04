.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->w2(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->a:Ljava/lang/String;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->b:I

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
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->a:Ljava/lang/String;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->b:I

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Ljava/lang/String;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xf

    if-ge p1, p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->m2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 21
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->a:Ljava/lang/String;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;->b:I

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Ljava/lang/String;I)V

    return-void
.end method
