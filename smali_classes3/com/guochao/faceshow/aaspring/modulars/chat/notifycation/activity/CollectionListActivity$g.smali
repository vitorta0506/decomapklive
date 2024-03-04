.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;->a(Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
