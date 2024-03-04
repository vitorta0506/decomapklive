.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;->getIsLive()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;->getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->obtainData()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setImg(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
