.class public abstract Lcom/guochao/faceshow/aaspring/modulars/live/game/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;,
        Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;
    }
.end annotation


# instance fields
.field public a:Landroid/view/ViewStub;

.field public b:Landroid/view/View;

.field protected c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected d:Ld9/g;

.field protected e:I

.field protected f:Z

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:Z

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Landroid/os/Handler;

.field protected o:Landroid/os/Handler;

.field protected p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected r:Lcom/guochao/faceshow/views/e;

.field public s:Z

.field protected t:Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->f:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n:Landroid/os/Handler;

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->o:Landroid/os/Handler;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->u:Ljava/util/List;

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->o()V

    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/views/e;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$b;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V

    invoke-direct {v0, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v3

    if-ne v3, v1, :cond_1

    const v1, 0x7f120828

    goto :goto_0

    :cond_1
    const v1, 0x7f12016a

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->l()Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method


# virtual methods
.method protected abstract A(Z)V
.end method

.method protected B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz v1, :cond_2

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    const-string v1, "tokens/game/v2/round/startGameNew"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    const-string v3, "streamId"

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStream_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "gameInfoId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    .line 9
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "roundId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_2
    return-void
.end method

.method public C(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    return-void
.end method

.method protected abstract D()V
.end method

.method protected E(FF)Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 3
    iget-object v4, v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;->b:Landroid/view/View;

    .line 4
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v3, v0

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v3, v6

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v7, v4

    aget v4, v3, v0

    int-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    int-to-float v4, v5

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    aget v3, v3, v6

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    int-to-float v3, v7

    cmpl-float v3, v3, p2

    if-lez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "0"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v5

    invoke-interface {v5}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->f:Z

    const/4 v1, 0x1

    goto :goto_2

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 8
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->f:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    .line 9
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->f:Z

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_5
    :goto_3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v0

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v0

    .line 16
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    if-ne v0, v4, :cond_8

    const-string v0, "LIVE_LUCKY_REMOTE_JOIN_V_COIN"

    goto :goto_5

    :cond_8
    const-string v0, "LIVE_LUCKY_REMOTE_JOIN"

    :goto_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getBaseModel(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_9
    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    if-eqz v1, :cond_4

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    const-string v1, "tokens/game/v2/round/joinGame"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    const-string v2, "gameInfoId"

    const-string v3, "roundId"

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getRoundId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getGameInfoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    const-string v3, "streamId"

    if-eqz v2, :cond_2

    .line 10
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStream_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_1

    .line 11
    :cond_2
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    if-eqz v2, :cond_3

    .line 12
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 13
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 14
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_4
    return-void
.end method

.method protected d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp7/h;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-lt v1, v0, :cond_3

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v3, "\u53d6\u6d88\u4e4b\u524d\u7684\u4efb\u52a1\uff0c10s\u540e\u5f00\u59cb\u5f39\u6846\uff0c \u542f\u52a8\u4e86\u5b9a\u65f6\u4efb\u52a1"

    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n:Landroid/os/Handler;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$c;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    if-ne v1, v0, :cond_4

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e4b\u524d\u7684\u4efb\u52a1\uff0c5s\u540e\u5f00\u59cb\u5f39\u6846\uff0c \u542f\u52a8\u4e86\u5b9a\u65f6\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method protected e(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 2
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->A(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->s()V

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    const-string v1, "tokens/game/v2/round/cancelGame"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anchorId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "roundId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    return-object v0
.end method

.method public l()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    return-object v0
.end method

.method public p()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected q(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 2
    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    if-lt v2, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205cd

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v2

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;

    invoke-direct {v7, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    invoke-virtual/range {v2 .. v7}, Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V

    :cond_4
    return-void
.end method

.method public r(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    :cond_1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setDiamond(Ljava/lang/Integer;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    :goto_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e4b\u524d\u7684\u4efb\u52a1\uff0c\u56e0\u4e3a\u88ab\u91ca\u653e\u4e86"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->f:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setOnListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->t:Lcom/guochao/faceshow/aaspring/modulars/live/game/g$i;

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k:Z

    return-void
.end method

.method public v(IIZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    .line 3
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j:Z

    return-void
.end method

.method public w(Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    return-void
.end method

.method public x(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    return-void
.end method

.method public y(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->u:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;

    invoke-direct {v1, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public z(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
