.class public final Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/player/base/ILivePlayer$PlayEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J,\u0010\u0014\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u001b\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u001e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0016J\u001a\u0010\"\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010%\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J \u0010&\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;",
        "Lcom/guochao/player/base/ILivePlayer$PlayEventListener;",
        "watcherLiveRoomFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;",
        "handler",
        "Landroid/os/Handler;",
        "(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Landroid/os/Handler;)V",
        "videoLoadingLongTimeRunnable",
        "Ljava/lang/Runnable;",
        "getCurrentLiveRoom",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "isBroadCasterRTCStream",
        "",
        "streamId",
        "",
        "onConnectToServer",
        "",
        "livePlayer",
        "Lcom/guochao/player/base/ILivePlayer;",
        "onDrawFirstFrame",
        "onPlayEvent",
        "eventCode",
        "",
        "msg",
        "throwable",
        "",
        "onPlayFirstAudioFrame",
        "onPlayerVolumeUpdate",
        "volume",
        "",
        "onPublishStreamInfo",
        "streamInfoList",
        "",
        "Lcom/guochao/player/base/ILivePlayer$StreamInfo;",
        "onVideoLoading",
        "extra",
        "Landroid/os/Bundle;",
        "onVideoPlaying",
        "onVideoSizeChanged",
        "width",
        "height",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoLoadingLongTimeRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "watcherLiveRoomFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->handler:Landroid/os/Handler;

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->videoLoadingLongTimeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->videoLoadingLongTimeRunnable$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;)V

    return-void
.end method

.method private final getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.RoomItemData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-object v0
.end method

.method private final isBroadCasterRTCStream(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->j(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static final videoLoadingLongTimeRunnable$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->G5()V

    return-void
.end method


# virtual methods
.method public onConnectToServer(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "livePlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getMatchType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getVoiceStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "2"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->m4(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDrawFirstFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "livePlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->m4(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r5:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/16 p2, 0xfa0

    .line 5
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->r5:Z

    const/16 v0, 0xfa0

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->l6:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->handler:Landroid/os/Handler;

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->l6:Ljava/lang/Runnable;

    int-to-long v0, v0

    .line 10
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->k6:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->k6:Ljava/lang/Runnable;

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onPlayEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "streamId"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x3e9

    if-ne p2, p3, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->n6:Lcom/guochao/player/GCLivePlayer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/player/GCLivePlayer;->isCompatMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayFirstAudioFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "livePlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getMatchType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->m4(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayerVolumeUpdate(Ljava/lang/String;F)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "streamId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPublishStreamInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/player/base/ILivePlayer$StreamInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamInfoList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->r(Ljava/lang/String;Ljava/util/List;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->r(Ljava/lang/String;Ljava/util/List;)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->r(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onVideoLoading(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "streamId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->isBroadCasterRTCStream(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->videoLoadingLongTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoPlaying(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "streamId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->isBroadCasterRTCStream(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->videoLoadingLongTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->r5()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    .line 9
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->hideLoading(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(Ljava/lang/String;II)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->t5(II)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->y(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->y(Z)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->y(Z)V

    .line 9
    :cond_3
    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s5(II)Z

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N2()Z

    move-result p2

    if-ne p1, p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->k4(JJJZ)V

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatchLivePlayerListener;->watcherLiveRoomFragment:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->d(IZ)V

    :cond_6
    :goto_0
    return-void
.end method
