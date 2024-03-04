.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    const v0, 0x7f0a03b2

    const-string v1, "field \'mViewExplore\' and method \'startExplore\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;->mViewExplore:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding;->e:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a095f

    const-string v1, "field \'redPoint\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;->redPoint:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;->mViewExplore:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;->redPoint:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity_ViewBinding;->e:Landroid/view/View;

    .line 7
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity_ViewBinding;->unbind()V

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
