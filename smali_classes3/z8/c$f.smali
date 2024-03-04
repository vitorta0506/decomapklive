.class Lz8/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/player/base/ILivePlayer$PlayEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lz8/c;


# direct methods
.method private constructor <init>(Lz8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz8/c$f;->a:Lz8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lz8/c;Lz8/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lz8/c$f;-><init>(Lz8/c;)V

    return-void
.end method


# virtual methods
.method public synthetic onConnectToServer(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->a(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public onDrawFirstFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    .line 3
    invoke-virtual {p2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lz8/c;->f(Lz8/c;Z)Z

    .line 5
    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    invoke-static {p1}, Lz8/c;->g(Lz8/c;)V

    return-void
.end method

.method public onPlayEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    invoke-static {p1}, Lz8/c;->j(Lz8/c;)V

    :cond_0
    return-void
.end method

.method public synthetic onPlayFirstAudioFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->d(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public synthetic onPlayerVolumeUpdate(Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/player/base/a;->e(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;Ljava/lang/String;F)V

    return-void
.end method

.method public onPublishStreamInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
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

    .line 1
    iget-object v0, p0, Lz8/c$f;->a:Lz8/c;

    iget-object v0, v0, Lz8/c;->k:Lz8/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lz8/c$f;->a:Lz8/c;

    iget-object v0, v0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz8/c$f;->a:Lz8/c;

    iget-object v0, v0, Lz8/c;->k:Lz8/b;

    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Lz8/c$f;->a:Lz8/c;

    iget-object v0, v0, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->r(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoLoading(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    invoke-virtual {p2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    invoke-static {p1}, Lz8/c;->e(Lz8/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoPlaying(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    invoke-virtual {p2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    invoke-virtual {p2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lz8/c;->f(Lz8/c;Z)Z

    .line 4
    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    invoke-static {p1}, Lz8/c;->g(Lz8/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lz8/c$f;->a:Lz8/c;

    iget-object v0, v0, Lz8/c;->k:Lz8/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz8/c$f;->a:Lz8/c;

    iget-object v0, v0, Lz8/c;->k:Lz8/b;

    .line 3
    invoke-virtual {v0}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4
    :cond_1
    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s5(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p1, p1, Lz8/c;->k:Lz8/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lz8/b;->u(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p3, :cond_3

    .line 6
    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    invoke-virtual {p2, p1}, Lz8/b;->u(I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    invoke-virtual {p2}, Lz8/b;->c()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    iget-object p2, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    invoke-virtual {p2, p1}, Lz8/b;->u(I)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    iget-object p1, p1, Lz8/c;->k:Lz8/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lz8/b;->u(I)V

    .line 10
    :goto_0
    iget-object p1, p0, Lz8/c$f;->a:Lz8/c;

    invoke-static {p1}, Lz8/c;->i(Lz8/c;)V

    :cond_5
    return-void
.end method
