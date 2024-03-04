.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;->y0(Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$e;->a:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$e;->a:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$e;->a:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;)V

    return-void
.end method
