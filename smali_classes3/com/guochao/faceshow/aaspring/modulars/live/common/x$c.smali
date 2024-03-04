.class Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/ArenaBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/x;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/ArenaBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ArenaBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/ArenaBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/ArenaBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->E(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->k()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->x(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->e()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getIntroductionToPlay()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setIntroductionToPlay(Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getAdmitDefeatNum()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAdmitDefeatNum(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getArenaDurationTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setArenaDurationTime(J)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getArenaPunishmentDurationTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setArenaPunishmentDurationTime(J)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;->getSelectTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->c4(J)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->a(Lcom/guochao/faceshow/aaspring/modulars/live/common/x;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 6
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/ArenaBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->E(I)V

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPKPrepare(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p3()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t2()V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/16 v2, 0x5211

    if-ne v0, v2, :cond_1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const v3, 0x7f12075c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 8
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u968f\u673aPK start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ArenaBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$c;->a(Lcom/guochao/faceshow/aaspring/beans/ArenaBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
