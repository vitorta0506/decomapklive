.class public Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static b0(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "data"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pushData"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "voiceRoom"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private e0(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "ids"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chatGroupIds"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startTimestamps"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "voiceRoom"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, ","

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 8
    :cond_1
    array-length p1, v0

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 9
    array-length p1, v0

    array-length v1, v6

    if-eq p1, v1, :cond_3

    return-void

    :cond_3
    if-eqz v2, :cond_4

    .line 10
    array-length p1, v5

    array-length v1, v0

    if-eq p1, v1, :cond_4

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 13
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 14
    aget-object v7, v0, v1

    invoke-virtual {v3, v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoom(Z)V

    if-eqz v2, :cond_5

    .line 16
    aget-object v7, v5, v1

    invoke-virtual {v3, v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setChatGroupId(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_5
    aget-object v7, v6, v1

    invoke-virtual {v3, v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveStartTimestamp(Ljava/lang/String;)V

    .line 18
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_6
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;-><init>()V

    .line 20
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setRoomList(Ljava/util/List;)V

    const/4 p1, 0x3

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->setTypeId(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v4, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->f(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;II)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initTencentConfig()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initWhenSplashOrMain()V

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pushData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBridgeActivity;->e0(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 9
    :cond_1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;

    if-eqz v0, :cond_7

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 11
    check-cast p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 12
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStartTime(Ljava/lang/String;)V

    .line 13
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    .line 14
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setNickName(Ljava/lang/String;)V

    .line 15
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 16
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 17
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setChatGroupId(Ljava/lang/String;)V

    .line 18
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setGroupId(Ljava/lang/String;)V

    const-string v1, "0"

    .line 19
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStatus(Ljava/lang/String;)V

    .line 20
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->privateType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setPrivateType(Ljava/lang/String;)V

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_type"

    const-string v3, "from_online_notification"

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget p1, p1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->from:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v2, "private_live_invite_click_by_FCM"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 25
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v2, "private_live_invite_click_by_tim"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v2, "private_live_invite_click_by_jiguang"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getPrivateType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->g(Landroid/content/Context;Ljava/util/List;III)V

    goto :goto_1

    .line 29
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p1

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_6

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 31
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    goto :goto_1

    .line 32
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->g(Landroid/content/Context;Ljava/util/List;III)V

    goto :goto_1

    .line 33
    :cond_7
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
