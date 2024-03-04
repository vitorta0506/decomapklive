.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->u5(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fdb\u7fa4\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", desc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5165\u7fa4\u7ec4\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "LiveRoom"

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;->setFloatTouchLiveRoom(Z)V

    const/16 p2, 0x271a

    if-ne p1, p2, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->a:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->Y4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->o2()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8fdb\u7fa4\u6210\u529f"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const-string v1, "LiveRoom"

    const-string v2, "\u52a0\u5165\u7fa4\u7ec4\u6210\u529f\uff1a"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getCode()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->Z4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->a5(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$n;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->z4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
