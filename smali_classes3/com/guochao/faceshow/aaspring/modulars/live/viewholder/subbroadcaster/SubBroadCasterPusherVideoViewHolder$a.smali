.class Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->o(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->p(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->q(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/pusher/GCLivePusher;->setMute(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->t(Ljava/lang/String;)V

    :cond_0
    const-string v0, "SubBroadCasterPusher"

    const-string v2, "recycle:"

    .line 7
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->i:Z

    return-void
.end method
