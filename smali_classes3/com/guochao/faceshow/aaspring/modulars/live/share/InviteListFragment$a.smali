.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->k2(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/views/p;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/views/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/p;->j(Z)V

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    if-gtz v4, :cond_1

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->setSelect(Z)V

    goto :goto_0

    .line 5
    :cond_3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->a:I

    if-ne p2, v2, :cond_4

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setDatas(Ljava/util/List;)V

    goto :goto_1

    .line 7
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result p2

    if-ne p2, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->showEmptyView()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/views/p;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/views/p;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/views/p;->j(Z)V

    :cond_6
    return-void
.end method
