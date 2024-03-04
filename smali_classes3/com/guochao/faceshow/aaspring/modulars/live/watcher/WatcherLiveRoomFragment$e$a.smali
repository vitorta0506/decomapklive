.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAdministrator()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createFocusBroadCasterModel(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method
