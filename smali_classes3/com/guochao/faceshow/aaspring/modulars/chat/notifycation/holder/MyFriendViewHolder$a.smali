.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2c_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/guochao/faceshow/aaspring/beans/IM_User;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->N0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    .line 6
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "otherLanguage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
