.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->c2(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/IM_UserList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/IM_UserList;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/bean/IM_UserList;
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
            "Lcom/guochao/faceshow/bean/IM_UserList;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/IM_UserList;",
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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p1, Lcom/guochao/faceshow/bean/IM_UserList;->list:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/guochao/faceshow/bean/IM_UserList;->list:Ljava/util/ArrayList;

    .line 4
    :cond_1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->a:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->clearAll()V

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    if-lez p2, :cond_3

    .line 7
    iget-object p2, p1, Lcom/guochao/faceshow/bean/IM_UserList;->list:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 8
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setSelect(Z)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/guochao/faceshow/bean/IM_UserList;->list:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 10
    iget p2, p1, Lcom/guochao/faceshow/bean/IM_UserList;->totalCount:I

    if-lez p2, :cond_4

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V

    .line 13
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/IM_UserList;->list:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x14

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->showEmptyView()V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 16
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;->a()V

    :cond_6
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
            "Lcom/guochao/faceshow/bean/IM_UserList;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

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

    check-cast p1, Lcom/guochao/faceshow/bean/IM_UserList;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$k;->a(Lcom/guochao/faceshow/bean/IM_UserList;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
