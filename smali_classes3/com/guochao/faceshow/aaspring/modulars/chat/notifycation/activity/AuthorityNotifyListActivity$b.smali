.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->l0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getLastMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;-><init>()V

    const-string v2, "1"

    .line 3
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setMessageType(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->m(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;

    move-result-object v2

    .line 6
    instance-of v4, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    if-eqz v4, :cond_0

    .line 7
    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getEventMessageModel()Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setContent(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setMsgTimestamp(Ljava/lang/Long;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUnreadCount()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setUnreadCount(I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->a:Ljava/util/List;

    const-string v0, "AuthorityNotifyBean"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->h(Ljava/lang/String;Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;)V

    :cond_2
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->a:Ljava/util/List;

    const-string p2, "AuthorityNotifyBean"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->h(Ljava/lang/String;Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;->a(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method
