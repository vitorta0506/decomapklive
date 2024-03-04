.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PkFriends;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PkFriends;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PkFriends;
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
            "Lcom/guochao/faceshow/aaspring/beans/PkFriends;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PkFriends;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkFriends;->getUserList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkFriends;->getUserList()Ljava/util/List;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    const v2, 0x7f1206fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkFriends;->getLiveUserIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1"

    .line 7
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setLiveState(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->a2()V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 13
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->a2()V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 4
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/PkFriends;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const v2, 0x7f1206fc

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment;->a2()V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PkFriends;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkSelectFriendsDialogFragment$a;->a(Lcom/guochao/faceshow/aaspring/beans/PkFriends;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
