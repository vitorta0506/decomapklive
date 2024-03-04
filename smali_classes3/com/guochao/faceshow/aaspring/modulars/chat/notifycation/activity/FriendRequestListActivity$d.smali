.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;->u0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->c()Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;)V

    const/4 p1, 0x0

    return p1
.end method
