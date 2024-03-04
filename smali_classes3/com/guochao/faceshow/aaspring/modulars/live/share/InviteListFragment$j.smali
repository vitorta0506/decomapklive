.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;
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
            "Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    .line 4
    :cond_1
    iget-object p2, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/FollowBean;

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    if-gtz v4, :cond_2

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setSelect(Z)V

    goto :goto_0

    .line 6
    :cond_4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->a:I

    if-ne p2, v2, :cond_5

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setDatas(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 9
    :goto_1
    iget p2, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->totalCount:I

    if-lez p2, :cond_6

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V

    goto :goto_2

    .line 11
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V

    .line 12
    :goto_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;->list:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->showEmptyView()V

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
            "Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->showEmptyView()V

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

    check-cast p1, Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$j;->a(Lcom/guochao/faceshow/bean/FollowBeanLsit$Result;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
