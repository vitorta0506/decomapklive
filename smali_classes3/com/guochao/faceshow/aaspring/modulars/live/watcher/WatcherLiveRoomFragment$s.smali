.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->hideLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->showGiftDialog()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$s;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->F5()V

    :cond_2
    :goto_0
    return-void
.end method
