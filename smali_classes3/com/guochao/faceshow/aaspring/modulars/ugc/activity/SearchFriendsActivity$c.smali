.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->q0(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/IM_UserList;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
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

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/guochao/faceshow/bean/IM_UserList;

    invoke-direct {p1}, Lcom/guochao/faceshow/bean/IM_UserList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/guochao/faceshow/bean/IM_UserList;->list:Ljava/util/ArrayList;

    .line 3
    iput p2, p1, Lcom/guochao/faceshow/bean/IM_UserList;->totalPage:I

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/guochao/faceshow/bean/IM_UserList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/IM_User;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setIsSelect(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/IM_UserList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Lcom/guochao/faceshow/views/p;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Lcom/guochao/faceshow/views/p;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/p;->j(Z)V

    :cond_2
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Lcom/guochao/faceshow/views/p;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;)Lcom/guochao/faceshow/views/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/p;->j(Z)V

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$c;->a(Lcom/guochao/faceshow/bean/IM_UserList;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
