.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->B5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld9/e$a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;->b(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p3    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 17
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2
    sget-object v12, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->getHelloConfigData()Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/HelloConfigData;->getRegTime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long v13, v1, v3

    const-wide/32 v3, 0xa4cb800

    add-long v15, v1, v3

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    move-object v1, v12

    move-wide v4, v10

    move-wide v6, v13

    move-wide v8, v15

    invoke-virtual/range {v1 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->isShowHelloMessage(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarHelp;->get24SendHelloGiftUserId(Lcom/guochao/faceshow/bean/UserBean;)Ljava/util/List;

    move-result-object v2

    move-wide v3, v10

    move-wide v5, v13

    move-wide v7, v15

    invoke-static/range {v1 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->N4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Ljava/util/List;JJJ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createHelloUserJoinModel(I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createHelloUserJoinModel(I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$h;->c(Ljava/lang/Boolean;)V

    return-void
.end method
