.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->loadData(I)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

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
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->access$100(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    sget-object p2, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterList(Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V

    return-void
.end method
