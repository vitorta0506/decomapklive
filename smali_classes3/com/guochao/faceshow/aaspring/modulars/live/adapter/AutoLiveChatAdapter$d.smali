.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->b:Landroid/widget/ImageView;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ld9/g;

    move-result-object p1

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    const v0, 0x7f0a0b77

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1203a5

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    const v1, 0x7f0a04ef

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    const v3, 0x7f0a04fd

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const v1, 0x7f08027e

    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ld9/g;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-interface {v1, v4, v3}, Ld9/g;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ld9/g;

    move-result-object v1

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setFocused(Z)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setIsAttention(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->LIVE:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;

    invoke-direct {v5, p0, v0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-static {v1, v3, v4, v5}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method
