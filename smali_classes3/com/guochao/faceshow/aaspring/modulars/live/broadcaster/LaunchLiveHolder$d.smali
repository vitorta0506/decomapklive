.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->notifyNetServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-boolean p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isErrorPush:Z

    if-eqz p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->a:Landroid/content/Context;

    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_3

    .line 4
    check-cast p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->a:Landroid/content/Context;

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    return-void

    :cond_3
    const/16 p2, 0xa

    const v0, 0x7f1204be

    const-string v1, "LiveRoom\uff1a"

    if-nez p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "START_LIVE = null"

    .line 6
    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;->G0(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getUserLiveBanned()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string p2, "START_LIVE = \u7981\u64ad"

    .line 10
    invoke-static {v1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getReasonMsgLang()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;->G0(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getUserLiveBanned()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 13
    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLiving(Z)V

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLocalLiving(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setChatGroupId(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setLiveRoomId(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setStreamUrl(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setCity(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getIsMusicActivity()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setIsFullScreenActivity(I)V

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getLiveCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setLiveCountry(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->setStreamId(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setLiveStartTimestamp(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getFcoin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->setFcoin(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getVideoOpen()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setVideoOpen(I)V

    .line 26
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getVideoSwitch()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setVideoSwitch(I)V

    .line 27
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1800(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getScreenShotSwitch()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setScreenShotSwitch(I)V

    .line 28
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getStreamUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->pushStream(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;->Y()V

    goto :goto_0

    .line 31
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p1, "START_LIVE = error"

    .line 32
    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$o;->G0(Ljava/lang/String;I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 3
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isErrorPush:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->a:Landroid/content/Context;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->a:Landroid/content/Context;

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x3f2

    .line 5
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    if-ne v0, p1, :cond_5

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1205a0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onLiveFinish(ILjava/lang/String;)V

    :cond_4
    return-void

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$2000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$d;->a(Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
