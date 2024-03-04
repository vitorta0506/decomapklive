.class public Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Ld9/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field private l:Z

.field private m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->n:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->o:Ljava/util/List;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->i2()V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->i:I

    return p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->i:I

    return p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ld9/g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->g:Ld9/g;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->h:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->j:I

    return p0
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->j:I

    return p1
.end method

.method static synthetic c2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->l:Z

    return p0
.end method

.method static synthetic f2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->l:Z

    return p1
.end method

.method static synthetic g2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->h2(Ljava/lang/Integer;)V

    return-void
.end method

.method private h2(Ljava/lang/Integer;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->f:Landroid/view/View;

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v1, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v0, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private i2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tokens/game/v2/round/createGameRound"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "gameInfoId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->i:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "confUserNum"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->j:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "confDiamondNum"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isJoin"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isContinue"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->k:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 8
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->k:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    const-string v3, "streamId"

    if-eqz v2, :cond_1

    .line 10
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStream_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 11
    :cond_1
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    if-eqz v2, :cond_2

    .line 12
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 13
    :cond_2
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private j2()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->g:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_5

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->smallMiniGameLay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 5
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 8
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->P1()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 9
    :cond_4
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->P4:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewStub;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public static l2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mLiveRoomModel"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "liveGameBean"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d03ff

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a078b

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->b:Landroid/widget/TextView;

    const v0, 0x7f0a085a

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->a:Landroid/widget/TextView;

    const v0, 0x7f0a085d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->c:Landroid/widget/TextView;

    const v0, 0x7f0a085b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a085e

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a05d6

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->f:Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "liveGameBean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f1205d2

    goto :goto_0

    :cond_2
    const v0, 0x7f1205d3

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getRate()I

    move-result v1

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->b:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_3

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a0460

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mLiveRoomModel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->k:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    :cond_5
    return-void
.end method

.method public k2(Ld9/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->g:Ld9/g;

    return-void
.end method

.method public loadData()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->getLiveGameData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getJoinNumList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getJoinMoneyList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->n:Ljava/util/List;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getJoinNumList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->o:Ljava/util/List;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getJoinMoneyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v6, "%s%s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->i:I

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->c:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->o:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->o:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->j:I

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->o:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->h2(Ljava/lang/Integer;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->l:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/high16 v0, 0x40400000    # 3.0f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    neg-int v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f0f04bb

    const/high16 v5, 0x42be0000    # 95.0f

    const/high16 v6, 0x43870000    # 270.0f

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    .line 4
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->j2()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoMoreShowGamePay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->j:I

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v2

    .line 10
    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->W1(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;I)Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;

    goto/16 :goto_4

    .line 11
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->i2()V

    return-void

    .line 12
    :sswitch_1
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-direct {v2, v3, v6, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;-><init>(Landroid/content/Context;II)V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->o:Ljava/util/List;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const v5, 0x7f1205ce

    goto :goto_2

    :cond_6
    :goto_1
    const v5, 0x7f1205b2

    :goto_2
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->g(Ljava/util/List;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 15
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;)V

    .line 16
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$e;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V

    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 18
    :sswitch_2
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-direct {v2, v3, v6, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;-><init>(Landroid/content/Context;II)V

    .line 19
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->n:Ljava/util/List;

    const v5, 0x7f1205c5

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->g(Ljava/util/List;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 21
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;)V

    .line 22
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$c;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V

    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 24
    :sswitch_3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v5

    iget v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->j:I

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->m:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    new-instance v10, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    invoke-direct {v10, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V

    goto :goto_4

    .line 25
    :sswitch_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0597 -> :sswitch_4
        0x7f0a0620 -> :sswitch_3
        0x7f0a085c -> :sswitch_2
        0x7f0a085f -> :sswitch_1
        0x7f0a0ad3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public setStartListener(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->h:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$h;

    return-void
.end method
