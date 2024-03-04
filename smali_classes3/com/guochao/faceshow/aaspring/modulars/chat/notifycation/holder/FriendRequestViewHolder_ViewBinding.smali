.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a0d86

    const-string v2, "field \'userAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc5

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userName:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0dc6

    const-string v2, "field \'userNameLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userNameLay:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0505

    const-string v1, "field \'iconRequest\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'iconRequest\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->iconRequest:Landroid/widget/ImageView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b9e

    const-string v2, "field \'timeHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->timeHistory:Landroid/widget/TextView;

    const v0, 0x7f0a0d88

    const-string v1, "field \'userCenterAgeLevel\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userCenterAgeLevel:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userNameLay:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->iconRequest:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->timeHistory:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userCenterAgeLevel:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
