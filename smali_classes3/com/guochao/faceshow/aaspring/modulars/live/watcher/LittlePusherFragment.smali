.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;
.implements Lcom/guochao/pusher/base/ILivePusher$PushEventListener;


# static fields
.field public static final c:[Ljava/lang/String;


# instance fields
.field a:Lcom/guochao/pusher/GCLivePusher;

.field b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

.field mTXCloudVideoView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;-><init>()V

    return-void
.end method

.method public static P1(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01a5

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->initView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->y2(Z)Lcom/guochao/pusher/GCLivePusher;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->reInit()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->enableThirdBeauty(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lcom/guochao/pusher/GCLivePusher;->startPreview(Landroid/view/ViewGroup;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->setMirror(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1}, Lcom/guochao/pusher/GCLivePusher;->isPushing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getPushUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->buildRoomInfo()Lcom/guochao/user/RoomInfo;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/guochao/pusher/GCLivePusher;->startPush(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/user/RoomInfo;)I

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ld9/g;->X(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/utils/Foreground;->registerStateChangedListener(Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->y2(Z)Lcom/guochao/pusher/GCLivePusher;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Lcom/guochao/pusher/GCLivePusher;->addPushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/utils/Foreground;->unregisterStateChangedListener(Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->stopAll()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->destroyOnMainThread()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0, p0}, Lcom/guochao/pusher/GCLivePusher;->removePushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V

    :cond_0
    return-void
.end method

.method public onEnterBackground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->onPause()V

    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LittlePusherFragment;->a:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->onResume()V

    :cond_0
    return-void
.end method

.method public onGetPushIp(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setLivePushIP(Ljava/lang/String;)V

    return-void
.end method

.method public onPushSuccess(Lcom/guochao/pusher/base/ILivePusher;)V
    .locals 0
    .param p1    # Lcom/guochao/pusher/base/ILivePusher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
