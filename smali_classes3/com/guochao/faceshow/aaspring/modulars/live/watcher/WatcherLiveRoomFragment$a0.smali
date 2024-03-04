.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$a0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 6

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getOwner()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getOwner()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$a0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setTitle(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setNickName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setAvatar(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLevel(I)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoomAdministrator(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoomMember(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoomOwner(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setBackgroundImg(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setCoverImgUrl(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$a0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mImageViewLiveBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0f0634

    invoke-static {v2, p1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 16
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    .line 17
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V

    .line 18
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$a0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$a0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->resetVoiceRoomChatList()V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$a0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAdministrator()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomOwner()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setMoreBtn(Ljava/lang/Boolean;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$a0;->a(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method
