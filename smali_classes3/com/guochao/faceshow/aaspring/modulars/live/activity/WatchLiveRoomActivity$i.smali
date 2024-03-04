.class Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$i;
.super Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->S1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
