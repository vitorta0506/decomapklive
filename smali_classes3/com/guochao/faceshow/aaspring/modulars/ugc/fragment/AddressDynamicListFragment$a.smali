.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->addDatas(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;->getPartakeTimes()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;

    const v3, 0x7f120966

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/AddressDynamicListActivity;->e0(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V

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
            "Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/AddressDynamicListFragment$a;->a(Lcom/guochao/faceshow/aaspring/beans/AddressDynamicBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
