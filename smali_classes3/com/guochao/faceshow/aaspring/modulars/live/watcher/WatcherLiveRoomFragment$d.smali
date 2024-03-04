.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->o2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 18
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->T1(Z)V

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-nez v2, :cond_2

    .line 5
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v4

    if-eqz v1, :cond_2c

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 8
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamUrl()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v6

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLastRoomItem()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLastRoomItem(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    const/4 v6, 0x0

    .line 10
    invoke-virtual {v2, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLastRoomItem(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 11
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->r4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)Z

    .line 12
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v6, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->t4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    .line 13
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v6, v6, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v6, :cond_3

    .line 14
    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamUrl()Ljava/lang/String;

    move-result-object v6

    .line 15
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStreamUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 16
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStreamUrl(Ljava/lang/String;)V

    .line 17
    :cond_3
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v6, v6, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isInPkMode()Z

    move-result v8

    if-eq v6, v8, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 18
    :goto_0
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v9

    iput-object v9, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 19
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v8, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v8, :cond_5

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRoomItemDetail.getLiveInfo().getScreenShotSwitch():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v9}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getScreenShotSwitch()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 21
    sget-object v8, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getScreenShotSwitch()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->changeFlagSecure(Landroidx/fragment/app/FragmentActivity;I)V

    .line 22
    :cond_5
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    instance-of v8, v8, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v8, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    .line 23
    :goto_1
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v9, v9, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 24
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v9, v9, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v10, v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 25
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v9, v9, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 26
    :cond_7
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 27
    :goto_3
    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    .line 28
    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->a:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    const-string v14, "liveId"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move v10, v9

    goto :goto_4

    .line 31
    :cond_9
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_b
    if-lez v10, :cond_c

    .line 32
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->Q1(Ljava/lang/String;Ljava/util/List;)V

    .line 33
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStatus()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "closed"

    const/16 v11, 0x8

    if-eqz v8, :cond_f

    .line 34
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v3

    if-eq v2, v3, :cond_e

    .line 35
    :cond_d
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v3

    iput-object v3, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 36
    :cond_e
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mDYLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mDYLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 38
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setStatus(Ljava/lang/String;)V

    .line 39
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1, v7, v10}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    return-void

    .line 40
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getCode()I

    move-result v8

    const/16 v12, 0x2711

    if-ne v12, v8, :cond_10

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v8

    invoke-interface {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    instance-of v8, v8, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v8, :cond_10

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-boolean v8, v8, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->r:Z

    if-nez v8, :cond_10

    .line 41
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mDYLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mDYLoadingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 43
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1, v12, v10}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    return-void

    .line 44
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isKickedOut()Z

    move-result v8

    const-string v10, "2"

    if-eqz v8, :cond_14

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBlackFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 46
    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->u4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;ZZZZZ)V

    return-void

    .line 47
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getKickAdminType()Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_5

    :cond_12
    const/4 v12, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v12, 0x1

    :goto_6
    const-string v2, "5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->v4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;ZZZZZ)V

    return-void

    .line 49
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBlackFlag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 50
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->w4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;ZZZZZ)V

    return-void

    .line 51
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v8

    .line 52
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 53
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveCoverImg(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getRoomID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setRoomID(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveRoomId(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getCity()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setCity(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLevel()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLevel(I)V

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isKickedOut()Z

    move-result v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setKickedOut(Z)V

    .line 60
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setCountry(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getInfoName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setInfoName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStreamUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStreamUrl(Ljava/lang/String;)V

    .line 63
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->canRequestLinkMic()Z

    move-result v13

    invoke-interface {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setRequestLinkMicEnabled(Z)V

    .line 64
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isFreeLinkMic()Z

    move-result v13

    invoke-interface {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setFreeLinkMic(Z)V

    .line 65
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->canRequestLinkMic()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isInPkMode()Z

    move-result v13

    if-nez v13, :cond_16

    const/4 v13, 0x1

    goto :goto_7

    :cond_16
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->onLinkMicStatusChanged(Z)V

    .line 66
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isBanTalk()Z

    move-result v13

    invoke-interface {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setBanTalk(Z)V

    .line 67
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStatus()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setStatus(Ljava/lang/String;)V

    .line 68
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isBanTalk()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->onSelfMute(Z)V

    .line 69
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserType()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setUserType(I)V

    .line 70
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getPrivateType()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPrivateType(Ljava/lang/String;)V

    .line 71
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setBroadCasterUserName(Ljava/lang/String;)V

    .line 72
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    check-cast v12, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getImg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 73
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    check-cast v12, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLogo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLogo(Ljava/lang/String;)V

    .line 74
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v13

    invoke-interface {v12, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setMultiLiveRoom(Z)V

    .line 75
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getVideoSwitch()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setVideoSwitch(I)V

    .line 76
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getVideoOpen()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setVideoOpen(I)V

    .line 77
    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v12, v12, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    if-eqz v12, :cond_17

    .line 78
    invoke-virtual {v12, v10}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->setCurrentLiveRoom(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 79
    :cond_17
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v12, v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v12, :cond_18

    .line 80
    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->C(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 81
    :cond_18
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v12, v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v12, :cond_19

    .line 82
    iget-object v10, v10, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mImageViewLiveBg:Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveCoverImg()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lhc/a;->v(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 83
    :cond_19
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v10, v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 84
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v10, v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setBroadCasterUserName(Ljava/lang/String;)V

    .line 85
    :cond_1a
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 86
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v10

    instance-of v10, v10, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz v10, :cond_1b

    .line 87
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 88
    :cond_1b
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v10

    check-cast v10, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getIsMusicActivity()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setIsMusicActivity(I)V

    .line 89
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v10, v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v10, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v10

    if-eqz v10, :cond_1c

    .line 90
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v10, v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->updateHeadView(Lp7/h;)V

    .line 91
    :cond_1c
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_1d

    .line 92
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v10

    invoke-interface {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 93
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v12, 0x2000

    invoke-virtual {v10, v12}, Landroid/view/Window;->addFlags(I)V

    .line 94
    :cond_1d
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserType()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onUserTypeChanged(I)V

    .line 95
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v10, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->x4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)Z

    .line 96
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->y4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 97
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->z4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V

    .line 98
    :cond_1e
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStreamUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->streamEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1f

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-boolean v10, v10, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-eqz v10, :cond_20

    :cond_1f
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v10

    if-eq v4, v10, :cond_21

    .line 99
    :cond_20
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isPkModeWhenFloatWindow()Z

    move-result v10

    invoke-interface {v4, v10}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 100
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v10

    iput-object v10, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 101
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->I2()V

    .line 102
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->f3()V

    .line 103
    :cond_21
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLaunchFromFloatWindow()Z

    move-result v2

    invoke-interface {v4, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setLaunchFromFloatWindow(Z)V

    .line 104
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setStatus(Ljava/lang/String;)V

    .line 105
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isInPkMode()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 106
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->A4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V

    .line 107
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->C4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V

    .line 108
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getIsAttention()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v8

    invoke-interface {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v4, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    new-instance v8, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d$a;

    invoke-direct {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;)V

    iput-object v8, v2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->R5:Ljava/lang/Runnable;

    const-wide/32 v12, 0x927c0

    invoke-virtual {v4, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->E4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V

    .line 111
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStreamUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->streamEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-boolean v4, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-nez v4, :cond_23

    .line 112
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getFlvUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setStreamUrl(Ljava/lang/String;)V

    const-string v2, "WatcherLiveRoomFragment.checkLiveState()"

    .line 113
    invoke-static {v2, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 114
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->D0()Lcom/guochao/player/GCLivePlayer;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    .line 115
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-boolean v4, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l5:Z

    if-eqz v4, :cond_22

    return-void

    .line 116
    :cond_22
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->D0()Lcom/guochao/player/GCLivePlayer;

    move-result-object v2

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->buildRoomInfo()Lcom/guochao/user/RoomInfo;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/guochao/player/GCLivePlayer;->startPlay(Ljava/lang/String;Lcom/guochao/user/RoomInfo;)V

    .line 117
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getChatGroupId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getChatGroupId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 118
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getChatGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setChatGroupId(Ljava/lang/String;)V

    .line 119
    :cond_24
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->q0()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 120
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->F4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 121
    :cond_25
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->m()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 122
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->n4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)V

    goto :goto_8

    .line 123
    :cond_26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Z()V

    .line 124
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->G4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/tencent/imsdk/v2/V2TIMCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/a;->w(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 125
    :goto_8
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->T3()V

    .line 126
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-nez v1, :cond_29

    .line 127
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 128
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getPrivateType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_9

    .line 129
    :cond_27
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mLiveShareBtn:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->dividerView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 131
    :cond_28
    :goto_9
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->mLiveShareBtn:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->dividerView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_29
    :goto_a
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->H4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 134
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->S3()V

    .line 135
    :cond_2a
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-boolean v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a1:Z

    if-nez v2, :cond_2b

    .line 136
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->I4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V

    :cond_2b
    if-eqz v6, :cond_2d

    .line 137
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k2(Landroid/view/View;)V

    goto :goto_b

    .line 138
    :cond_2c
    new-instance v1, Lg7/a;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->onFailure(Lg7/a;)V

    :cond_2d
    :goto_b
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->T1(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->J4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)Z

    .line 4
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const-string v1, "closed"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->a(Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->T1(Z)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onStart()V

    return-void
.end method
