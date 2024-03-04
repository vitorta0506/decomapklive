.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;->list:Ljava/util/ArrayList;

    .line 3
    iput p2, p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;->totalPage:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->notifyDataLoaded(Z)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->notifyDataLoaded(Z)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$e;->a(Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
