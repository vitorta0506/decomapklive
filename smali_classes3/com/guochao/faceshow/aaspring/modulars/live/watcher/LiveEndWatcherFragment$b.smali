.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->S1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getRecommend()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getRecommend()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->b:Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getRecommend()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getRoomList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$b;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->B1(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    :cond_0
    return-void
.end method
