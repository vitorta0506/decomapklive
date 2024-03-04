.class Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->q0(ZLjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isLuckyRemoteEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getGameInfoId()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v3, v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 4
    :goto_1
    new-instance v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v4, "tokens/game/v2/round/createGameRound"

    invoke-direct {v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "gameInfoId"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "confUserNum"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "confDiamondNum"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j:Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "isJoin"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v4, 0x1

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "isContinue"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 10
    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "liveId"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    instance-of v5, v4, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    const-string v6, "streamId"

    if-eqz v5, :cond_5

    .line 12
    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStream_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_2

    .line 13
    :cond_5
    instance-of v5, v4, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    if-eqz v5, :cond_6

    .line 14
    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getStreamId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 15
    :cond_6
    :goto_2
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;IJ)V

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public b(ILcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->i:I

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->R(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->S(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->S(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->R(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->T(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "%s/%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->w:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->U(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->U(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->V(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;II)V
    .locals 0

    if-gtz p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->M(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p3, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->O(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    instance-of p3, p2, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    if-eqz p3, :cond_1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz p1, :cond_1

    .line 4
    check-cast p2, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    const-string p1, "tokens/game/v2/round/overGame"

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 5
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "liveId"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "roundId"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "gameInfoId"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    return-void
.end method
