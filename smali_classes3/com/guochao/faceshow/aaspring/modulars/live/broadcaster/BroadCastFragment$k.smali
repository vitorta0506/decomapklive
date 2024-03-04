.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 7
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
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_1c

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1c

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a1:Z

    .line 4
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->btnInvite:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->btnInvite:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->addPrivateShareMessage()V

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPkWaiting()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    .line 12
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setShareUrl(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getIsMusicActivity()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setIsFullScreenActivity(I)V

    .line 15
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->addShareMessage(Z)V

    .line 17
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setShareUrl(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->z()V

    .line 20
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object p2

    const-string v1, "6"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->r()Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object p2

    if-nez p2, :cond_7

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->s(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    .line 23
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->x(I)V

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->I()V

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object p2

    const-string v1, "4"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x2

    if-nez p2, :cond_9

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result p2

    if-ne p2, v1, :cond_9

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->e()V

    .line 27
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v3

    .line 28
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2, v5, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d3(Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 29
    :catch_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/guochao/faceshow/utils/TimeUtil;->getServerTime()J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d3(Ljava/util/List;J)V

    .line 30
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object p2

    const-string v3, "2"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 31
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    .line 32
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 33
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 34
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    if-eqz p2, :cond_e

    .line 35
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->y(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 36
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLivePkState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 37
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v5, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->d(IZ)V

    goto :goto_2

    .line 38
    :cond_a
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v5

    invoke-virtual {v1, v3, v5, v6, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->h0(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;JZ)V

    .line 39
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    .line 40
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getPkFcoin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 41
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v1, v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->o4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;J)J

    .line 42
    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 43
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->r4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserNickName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->E4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    :cond_c
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    .line 46
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getPkFcoin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 47
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v1, v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->R4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;J)J

    .line 48
    :cond_d
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setPk(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 49
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkPollMessageModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_e
    if-eqz p2, :cond_f

    if-nez v3, :cond_f

    .line 50
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "P\u4e2d \u65e0PK\u6570\u636e\u6062\u590d\u6309\u94ae"

    invoke-static {v1, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_f
    if-nez p2, :cond_11

    .line 51
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->T4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    move-result-object p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->U4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 52
    :cond_10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->d(IZ)V

    .line 53
    :cond_11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->q()I

    move-result p2

    if-nez p2, :cond_12

    .line 54
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->p5(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V

    .line 55
    :cond_12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-static {v5, v6, v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLinkMicInfoModel(JLjava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    invoke-virtual {p2, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 56
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_13

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_13

    const/4 p2, 0x0

    .line 57
    :goto_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_13

    .line 58
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setPosition(I)V

    goto :goto_3

    .line 59
    :cond_13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_14

    .line 60
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->refreshBroadcasterInfo(Ljava/util/List;)V

    .line 61
    :cond_14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getAudienceInfoMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;

    move-result-object p2

    .line 62
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v1

    const-string v3, "1"

    if-eqz v1, :cond_15

    .line 63
    invoke-virtual {p2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->setIsLockMicrophone(Ljava/lang/String;)V

    .line 64
    :cond_15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createAudienceListInfoModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p2

    invoke-virtual {v1, p2, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 65
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getLiveActivityMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLiveActivityModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    invoke-virtual {p2, v1, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 66
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getIsMusicActivity()I

    move-result p2

    if-ne p2, v0, :cond_16

    .line 67
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getLiveFullScreenActivityMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLiveFullScreenActivityModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    invoke-virtual {p2, v0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 68
    :cond_16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->M3(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Z)V

    .line 69
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->V4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    move-result-object p2

    if-nez p2, :cond_17

    .line 70
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)V

    .line 71
    :cond_17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getGameInfoList()Ljava/util/List;

    move-result-object p2

    .line 72
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->X4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/util/List;)V

    .line 73
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Y4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 74
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->q4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld9/m;

    .line 75
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-interface {v0, v1, p1}, Ld9/m;->Z0(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V

    goto :goto_4

    .line 76
    :cond_18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 77
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->checkHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V

    .line 78
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createHourRankMessage(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-virtual {p2, p1, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 79
    :cond_19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 80
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getPrivateType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_5

    .line 81
    :cond_1a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveShareBtn:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->dividerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 83
    :cond_1b
    :goto_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveShareBtn:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->dividerView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    :goto_6
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
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

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/16 v1, 0x4e22

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onLiveFinish(ILjava/lang/String;)V

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$k;->a(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
