.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/DatingSquare;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquare;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->showEmptyView()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->e:Laa/c;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Laa/c;->P(ILjava/util/List;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
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
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquare;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquare;",
            ">;>;)V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->a:I

    if-ne v1, v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->setLoadGif(Z)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KEY_DATING_SQUARE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "module_notification"

    invoke-static {v1, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->t0()V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getIsInvited()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->r0()V

    .line 10
    :cond_1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->a:I

    if-ne v1, v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->clearAll()V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->showEmptyView()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 p2, 0x1

    :cond_3
    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 17
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->e:Laa/c;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)I

    move-result p2

    invoke-interface {v0, p2, p1}, Laa/c;->P(ILjava/util/List;)V

    return-void
.end method
