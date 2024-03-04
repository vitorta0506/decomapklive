.class Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_2

    return-void

    :cond_2
    if-lez p1, :cond_4

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->watch_live_switch:Ljava/lang/String;

    if-le p2, p1, :cond_3

    const-string p1, "1"

    goto :goto_0

    :cond_3
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, v2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->C5(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a1:Z

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->X3()V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEndScrollToIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchLiveRoomActivity"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->d1(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)I

    move-result p1

    if-ltz p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)I

    move-result p1

    if-eq p2, p1, :cond_5

    .line 13
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string p2, "KEY_SLIDE_TO_SEE_MORE_LIVE"

    invoke-virtual {p1, p2}, Lja/a;->e(Ljava/lang/String;)V

    .line 14
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "checkStartLive"

    .line 15
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)I

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->F0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;J)J

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->I4:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->y0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->q0()V

    :cond_6
    return-void
.end method

.method public b(II)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p2, p1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLaunchFromFloatWindow(Z)V

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->A:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->onQuitLiveRoom(ZZ)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->r0()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartScrollToIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WatchLiveRoomActivity"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
