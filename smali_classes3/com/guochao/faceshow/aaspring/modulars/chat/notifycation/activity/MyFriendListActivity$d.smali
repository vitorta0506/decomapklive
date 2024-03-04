.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->q0(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

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

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;Z)Z

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;-><init>()V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;->list:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 4
    iput p2, p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;->totalPage:I

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->notifyDataLoaded(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;Ljava/lang/CharSequence;)V

    :cond_1
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
            "Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;Z)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$d;->a(Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
