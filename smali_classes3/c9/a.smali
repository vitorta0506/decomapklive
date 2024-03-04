.class public Lc9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/k;


# static fields
.field private static g:Lc9/a;


# instance fields
.field private a:Ld9/g;

.field public b:J

.field private c:Z

.field private d:Ljava/lang/String;

.field e:Ld9/k;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;Ld9/g;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p2, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    .line 3
    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a068e

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc9/a;->f:Z

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_3
    return-void
.end method

.method private c(Ld9/g;Ljava/util/List;J)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld9/g;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;J)Z"
        }
    .end annotation

    move-object v9, p0

    move-wide/from16 v7, p3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, v9, Lc9/a;->b:J

    const/4 v10, 0x1

    cmp-long v0, v7, v2

    if-gez v0, :cond_1

    return v10

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    move-object/from16 v2, p2

    .line 4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;

    .line 5
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStatus()J

    move-result-wide v3

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1

    cmp-long v5, v3, v11

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStatus()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {p0, v6}, Lc9/a;->q(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7
    invoke-virtual {p0}, Lc9/a;->P()V

    goto/16 :goto_1

    .line 8
    :cond_2
    iget-object v3, v9, Lc9/a;->e:Ld9/k;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ld9/k;->o1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getRoundId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, v9, Lc9/a;->e:Ld9/k;

    invoke-interface {v3, v6, v7, v8}, Ld9/k;->J1(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0, v6}, Lc9/a;->q(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 11
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;-><init>()V

    .line 12
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getFlag()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->setFlag(I)V

    .line 13
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameCode()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->setGameCode(I)V

    .line 14
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameInfoId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->setGameInfoId(J)V

    .line 15
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getAndroidVersion()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->setAndroidVersion(I)V

    .line 16
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->setIcon(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->setShareUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getH5Url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->setH5Url(Ljava/lang/String;)V

    .line 19
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;-><init>()V

    .line 20
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStatus()J

    move-result-wide v11

    cmp-long v0, v11, v13

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v4, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->k(Z)V

    .line 21
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getConfDiamondNum()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->g(I)V

    .line 22
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getConfUserNum()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->h(I)V

    .line 23
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getRoundId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->i(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameRoundVo()Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v7, p3

    .line 25
    invoke-virtual/range {v0 .. v8}, Lc9/a;->r(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

    return v10

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return v1
.end method

.method public static i()Lc9/a;
    .locals 2

    .line 1
    sget-object v0, Lc9/a;->g:Lc9/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lc9/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc9/a;->g:Lc9/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lc9/a;

    invoke-direct {v1}, Lc9/a;-><init>()V

    sput-object v1, Lc9/a;->g:Lc9/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lc9/a;->g:Lc9/a;

    return-object v0
.end method

.method private m(Ld9/g;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0e42

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public B0(Ld9/g;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Ld9/k;->B0(Ld9/g;)V

    :cond_1
    return-void
.end method

.method public F0(Ld9/g;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc9/a;->m(Ld9/g;)V

    return-void
.end method

.method public I0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ld9/k;->I0()V

    :cond_0
    return-void
.end method

.method public synthetic J1(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/j;->d(Ld9/k;Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

    return-void
.end method

.method public N0(Ld9/g;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Lc9/a;->m(Ld9/g;)V

    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc9/a;->f:Z

    .line 3
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ld9/k;->o1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc9/a;->d:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lc9/a;->a:Ld9/g;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lc9/a;->e:Ld9/k;

    invoke-interface {v0, v1}, Ld9/g;->C1(Ld9/k;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    invoke-interface {v0}, Ld9/k;->P()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lc9/a;->e:Ld9/k;

    :cond_2
    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc9/a;->f:Z

    .line 3
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ld9/k;->V()V

    :cond_1
    return-void
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld9/k;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z0(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v0

    iget-wide v2, p0, Lc9/a;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getGameInfoListV2()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lc9/a;->c(Ld9/g;Ljava/util/List;J)Z

    .line 5
    iget-object v1, p0, Lc9/a;->a:Ld9/g;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lc9/a;->a:Ld9/g;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLiveGameUpdateMessage(Ljava/util/List;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1, p2}, Ld9/m;->Z0(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V

    :cond_3
    return-void
.end method

.method public b(Ld9/g;)V
    .locals 0

    iput-object p1, p0, Lc9/a;->a:Ld9/g;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc9/a;->a:Ld9/g;

    .line 2
    iput-object v0, p0, Lc9/a;->e:Ld9/k;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc9/a;->f:Z

    .line 4
    invoke-virtual {p0, v0}, Lc9/a;->v(Z)V

    return-void
.end method

.method public synthetic e()Z
    .locals 1

    invoke-static {p0}, Ld9/j;->c(Ld9/k;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lc9/a;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc9/a;->g()Ld9/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc9/a;->g()Ld9/k;

    move-result-object v0

    invoke-interface {v0}, Ld9/k;->W()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lc9/a;->m1()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lc9/a;->a:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->Z()V

    :cond_2
    return-void
.end method

.method public g()Ld9/k;
    .locals 1

    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getLiveGameData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lc9/a;->f:Z

    return v0
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc9/a;->a:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 3
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v0

    if-lez v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc9/a;->c:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public l(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/game/v2/round/createGameRound"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "gameInfoId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "confUserNum"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "confDiamondNum"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 6
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isJoin"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isContinue"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "streamId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 10
    new-instance v1, Lc9/a$a;

    invoke-direct {v1, p0, p2, p3, p1}, Lc9/a$a;-><init>(Lc9/a;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ld9/g;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public m1()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc9/a;->f:Z

    .line 3
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ld9/k;->m1()V

    :cond_1
    return-void
.end method

.method public n(Ld9/k;)V
    .locals 0

    iput-object p1, p0, Lc9/a;->e:Ld9/k;

    return-void
.end method

.method public o(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->V1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    return-void
.end method

.method public synthetic o1()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/j;->a(Ld9/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getH5Url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ld9/k;->p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ld9/k;->q(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V
    .locals 17
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld9/g;",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            "J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 1
    iget-object v4, v0, Lc9/a;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lc9/a;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v4}, Lc9/a;->v(Z)V

    .line 3
    iput-object v1, v0, Lc9/a;->a:Ld9/g;

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_3

    const/4 v8, 0x4

    if-eq v5, v8, :cond_6

    const/4 v4, 0x5

    if-eq v5, v4, :cond_3

    goto/16 :goto_2

    .line 5
    :cond_3
    invoke-static/range {p3 .. p5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->n2(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    move-result-object v4

    .line 6
    invoke-virtual/range {p0 .. p1}, Lc9/a;->B0(Ld9/g;)V

    .line 7
    invoke-direct {v0, v4, v1}, Lc9/a;->a(Landroidx/fragment/app/Fragment;Ld9/g;)V

    .line 8
    invoke-virtual {v0, v4}, Lc9/a;->n(Ld9/k;)V

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->w2(Ljava/util/List;)V

    :cond_4
    if-eqz v3, :cond_5

    move-wide/from16 v7, p7

    .line 10
    invoke-virtual {v4, v3, v7, v8}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->J1(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

    .line 11
    :cond_5
    invoke-interface/range {p1 .. p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 12
    invoke-static/range {p3 .. p4}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLiveGamePrepareMessage(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    goto/16 :goto_2

    .line 13
    :cond_6
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v2, :cond_d

    .line 14
    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-nez v2, :cond_7

    return-void

    .line 15
    :cond_7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m()I

    move-result v3

    if-ltz v3, :cond_8

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f12049f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    :cond_8
    move-object/from16 v3, p2

    .line 17
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->w(Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;)V

    .line 18
    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->a()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->c()I

    move-result v9

    if-ne v9, v7, :cond_9

    const/4 v9, 0x1

    goto :goto_0

    :cond_9
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v2, v5, v8, v9}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->v(IIZ)V

    .line 19
    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->c()I

    move-result v5

    if-ne v5, v7, :cond_a

    const/4 v4, 0x1

    :cond_a
    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->u(Z)V

    .line 20
    invoke-virtual {v2, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->A(Z)V

    .line 21
    invoke-interface/range {p1 .. p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 22
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->c()I

    move-result v4

    if-ne v4, v7, :cond_b

    .line 24
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->r(I)V

    .line 26
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide v12

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "LIVE_LUCKY_REMOTE_READY"

    goto :goto_1

    :cond_c
    const-string v2, "LIVE_LUCKY_REMOTE_READY_V_COIN"

    :goto_1
    move-object v8, v2

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/guochao/faceshow/bean/UserBean;

    .line 29
    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->a()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v16

    .line 30
    invoke-static/range {v8 .. v16}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyReadyMessageModel(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;ILjava/util/List;JLjava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 31
    :cond_d
    :goto_2
    iget-object v1, v0, Lc9/a;->a:Ld9/g;

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v2, :cond_e

    .line 32
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d4()Landroid/widget/ImageView;

    :cond_e
    return-void
.end method

.method public s(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;-><init>()V

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->a(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;

    move-result-object p2

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;->a(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->c(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;)Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$d;->b()Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f010045

    .line 6
    invoke-virtual {p2, v0, v0, v0, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f0a0e42

    .line 7
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    :goto_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lc9/a;->f:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lc9/a;->m1()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc9/a;->V()V

    :goto_0
    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc9/a;->a:Ld9/g;

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lc9/a;->c:Z

    return-void
.end method

.method public y(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld9/g;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->isGameEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    .line 3
    instance-of v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;

    if-eqz v3, :cond_1

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "LIVE_LUCKY_REMOTE_CANCEL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v4, "LIVE_GAME_PREPARE_V_COIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v4, "LIVE_LUCKY_REMOTE_UPDATE_V2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "LIVE_GAME_PREPARE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v4, "LIVE_LUCKY_REMOTE_UPDATE_V2_COIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    .line 7
    :pswitch_0
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    .line 10
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v4

    iput-wide v4, p0, Lc9/a;->b:J

    .line 11
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 12
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getLuckyUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    .line 13
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v6

    invoke-interface {v6}, Lb8/d;->c()Lb8/a;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getUserId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v4, 0x0

    .line 14
    iget-object v6, p0, Lc9/a;->a:Ld9/g;

    instance-of v7, v6, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v7, :cond_8

    .line 15
    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    goto :goto_1

    .line 16
    :cond_8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v6, :cond_9

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    :cond_9
    :goto_1
    if-eqz v4, :cond_c

    .line 18
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getBackDiamond()I

    move-result v6

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/game/GameBackDiamondDialog;->T1(Landroidx/fragment/app/FragmentManager;II)Z

    .line 19
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    .line 20
    :cond_a
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v3

    invoke-virtual {v3}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v3

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v4

    invoke-virtual {v4}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v4

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getBackDiamond()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    goto :goto_3

    .line 21
    :cond_b
    :goto_2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v3

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getBackDiamond()I

    move-result v4

    invoke-virtual {v3, v4}, Lp9/a;->b(I)I

    .line 22
    :cond_c
    :goto_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lc9/a;->e:Ld9/k;

    .line 23
    invoke-interface {v3}, Ld9/k;->o1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getRoundId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lc9/a;->e:Ld9/k;

    .line 24
    invoke-interface {v3}, Ld9/k;->o1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getRoundId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 25
    :cond_d
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    invoke-interface {v0}, Ld9/k;->e()Z

    move-result v0

    if-nez v0, :cond_e

    .line 26
    invoke-virtual {p0}, Lc9/a;->P()V

    goto :goto_4

    .line 27
    :cond_e
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u6709\u80dc\u5229\u5f39\u6846\uff0c\u4e0d\u53bb\u8c03\u7ed3\u675f\u6e38\u620f"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_4
    return v9

    .line 28
    :cond_f
    :goto_5
    iget-object v0, p0, Lc9/a;->e:Ld9/k;

    if-eqz v0, :cond_10

    .line 29
    invoke-interface {v0, p1, p2}, Ld9/m;->y(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)Z

    move-result v0

    return v0

    :cond_10
    return v2

    .line 30
    :pswitch_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;

    .line 31
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->getLiveGameBean()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v3

    .line 32
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->getLiveGameConfig()Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->e()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->getLiveGameUserInfo()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->getLiveGameConfig()Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lc9/a;->r(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->getLiveGameConfig()Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lc9/a;->r(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

    :goto_6
    return v9

    .line 38
    :pswitch_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameUpdateMessage;

    .line 39
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameUpdateMessage;->getGameInfoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v3

    invoke-direct {p0, p1, v2, v3, v4}, Lc9/a;->c(Ld9/g;Ljava/util/List;J)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56ac9913 -> :sswitch_4
        -0x229cedf3 -> :sswitch_3
        0x30b57e63 -> :sswitch_2
        0x325f174c -> :sswitch_1
        0x798c7789 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
