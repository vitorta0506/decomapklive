.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/opensource/svgaplayer/SVGAImageView;

.field private c:Z

.field private d:Lcom/opensource/svgaplayer/SVGAVideoEntity;

.field private e:Z

.field private f:Landroid/app/Dialog;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field private j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->c:Z

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->h:Landroid/widget/TextView;

    .line 5
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const p2, 0x7f0a0896

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    const p2, 0x7f0a0892

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Lcom/opensource/svgaplayer/SVGAVideoEntity;)Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->d:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object p1
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->c:Z

    return p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->k(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->o()V

    return-void
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    return-object p0
.end method

.method private k(Landroid/app/Dialog;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->c:Z

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/live/pk/downPkLive"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->d:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->d:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    move-object v5, v4

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUser_id()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    move-object v4, v1

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sendDownPkMessage"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result v3

    .line 13
    invoke-static {v1, v2, v4, v5, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLeavePkMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v4, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;->sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v2 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;->d(IZ)V

    .line 17
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d()V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u4e0bP\u6309\u94ae\u6062\u590d"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->l()V

    return-void
.end method


# virtual methods
.method public i()Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    const-string v1, "PK"

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPkEnableFlag()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->d:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->d:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 9
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 12
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pk_apply_btn_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->n()V

    .line 17
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->q(Z)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->e:Z

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    const v2, 0x7f0f055c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    const v2, 0x7f0f055b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 25
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->q(Z)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    const v1, 0x7f0f0569

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->n()V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 32
    :cond_8
    :goto_3
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->q(Z)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->n()V

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->n()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0892

    if-eq p1, v0, :cond_6

    const v0, 0x7f0a0896

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    if-eqz p1, :cond_7

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;->a()V

    goto/16 :goto_3

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getAdmitDefeatNum()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120701

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto/16 :goto_3

    .line 8
    :cond_4
    :goto_1
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)V

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060071

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->m(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060072

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->d(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120700

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getAdmitDefeatNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 14
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    .line 15
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->f:Landroid/app/Dialog;

    goto :goto_3

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 17
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    if-eqz p1, :cond_7

    .line 19
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;->f()V

    :cond_7
    :goto_3
    return-void
.end method

.method public p(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    return-void
.end method

.method public q(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPkEnableFlag()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x8

    if-nez v2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0x7f0a0974

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    .line 9
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public r(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->l()V

    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->l()V

    return-void
.end method

.method public setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    return-void
.end method
