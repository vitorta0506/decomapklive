.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a00fd

    const-string v2, "field \'userAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc5

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userName:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0505

    const-string v2, "field \'iconRequest\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->iconRequest:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dd4

    const-string v2, "field \'userSign\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userSign:Landroid/widget/TextView;

    const v0, 0x7f0a0d8d

    const-string v1, "field \'userDivider\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userDivider:Landroid/view/View;

    .line 8
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v1, 0x7f0a0e14

    const-string v2, "field \'vipIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v0, 0x7f0a0d88

    const-string v1, "field \'ageLevel\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->ageLevel:Landroid/view/View;

    const v0, 0x7f0a06b5

    const-string v1, "field \'living\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->living:Landroid/view/View;

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a06b6

    const-string v2, "field \'imageStatus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->imageStatus:Landroid/widget/ImageView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0da0

    const-string v2, "field \'userId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userId:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->iconRequest:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userSign:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userDivider:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->ageLevel:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->living:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->imageStatus:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userId:Landroid/widget/TextView;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
