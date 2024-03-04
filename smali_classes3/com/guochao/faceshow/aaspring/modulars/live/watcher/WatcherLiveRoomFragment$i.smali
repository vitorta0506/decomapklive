.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->H5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;J)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->a:J

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8f6e\u8be2\u8c03\u7528\u6210\u529f,\u8017\u65f6"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->a:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getCode()I

    move-result p2

    const/16 v0, 0x2711

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-boolean p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->r:Z

    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u79c1\u5bc6\u76f4\u64ad\u89c2\u770b\u4eba\u6570\u5df2\u7ecf\u8fbe\u5230\u4e0a\u7ebf"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const-string p2, "close"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->onLiveFinish(ILjava/lang/String;)V

    return-void

    .line 6
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setUserId(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getPendantUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setAvatar(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setImg(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    const-string v0, "0"

    .line 11
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setType(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->L2(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v0

    if-lez v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    const-string p2, "liveInfoState"

    const-string v0, "\u89c2\u4f17geliveinfo\u6210\u529f"

    .line 16
    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->M3(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Z)V

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->O4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->P4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->Q4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->R4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz p2, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setShareUrl(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p2, :cond_6

    .line 25
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->addShareMessage(Z)V

    .line 26
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 27
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->checkHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V

    :cond_7
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->S4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->hideLoading(Z)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->j6:Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$i;->a(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
