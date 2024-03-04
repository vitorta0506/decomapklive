.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->c2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->MusicLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getTopicList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;

    .line 9
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;-><init>()V

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->getTopicName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setTopicName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->getTopicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setTopicId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;->getPartakeTimes()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setPartakeTimes(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setType(I)V

    .line 14
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setImageModel(I)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->MusicLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$e;->a(Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
