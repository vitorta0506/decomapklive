.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/guochao/faceshow/aaspring/modulars/live/common/t;


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

.field private b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    .line 4
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v3, v4}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setVoiceRoom(Z)V

    .line 6
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveRoomId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setChatGroupId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->setCoverImgUrl(Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->l(Ljava/util/List;)V

    return-void
.end method

.method public static c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->b:I

    return v0
.end method

.method public d()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->a:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c:Ljava/util/List;

    return-object v0
.end method

.method public f(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;II)V
    .locals 4

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const v1, 0x7f120516

    const v2, 0x7f1206a8

    const v3, 0x7f120910

    invoke-static {v1, v2, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLiveState(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v1, v2}, Lz8/c;->x(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz8/c;->u(Ljava/util/List;)V

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->containActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->finish(Z)V

    .line 7
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24000000

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "ROOM_POS_KEY"

    .line 9
    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 12
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isShowGiftDialog()I

    move-result p3

    const-string v0, "ShowGiftDialog"

    .line 13
    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    :cond_3
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->k(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V

    .line 15
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_4

    .line 16
    check-cast p1, Landroid/app/Activity;

    .line 17
    invoke-virtual {p1, v1, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const/high16 p2, 0x10000000

    .line 18
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public g(Landroid/content/Context;Ljava/util/List;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;III)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->h(Landroid/content/Context;Ljava/util/List;IIIIZ)V

    return-void
.end method

.method public h(Landroid/content/Context;Ljava/util/List;IIIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;IIIIZ)V"
        }
    .end annotation

    const v0, 0x7f120516

    const v1, 0x7f1206a8

    const v2, 0x7f120910

    .line 1
    invoke-static {v0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLiveState(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "ROOM_POS_KEY"

    .line 4
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "ROOM_STATE"

    .line 5
    invoke-virtual {v0, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "fromFloatLive"

    .line 6
    invoke-virtual {v0, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->l(Ljava/util/List;)V

    .line 8
    invoke-virtual {p0, p6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->m(I)V

    .line 9
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 10
    check-cast p1, Landroid/app/Activity;

    .line 11
    invoke-virtual {p1, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/high16 p2, 0x10000000

    .line 12
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public i(Landroid/content/Context;Ljava/util/List;IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;IIIZ)V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->h(Landroid/content/Context;Ljava/util/List;IIIIZ)V

    return-void
.end method

.method public j(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;II)V
    .locals 3

    const v0, 0x7f120516

    const v1, 0x7f1206a8

    const v2, 0x7f120910

    .line 1
    invoke-static {v0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLiveState(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "ROOM_POS_KEY"

    .line 4
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->k(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f01000d

    const v1, 0x7f01000c

    invoke-static {p2, p3, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p4, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public k(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->a:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->l(Ljava/util/List;)V

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->b:I

    return-void
.end method
