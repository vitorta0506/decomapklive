.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;->getList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;->setList(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;->a(Lcom/guochao/faceshow/aaspring/beans/PushMessageBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
