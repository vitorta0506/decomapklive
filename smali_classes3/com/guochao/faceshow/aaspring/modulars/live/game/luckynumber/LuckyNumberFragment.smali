.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;
.source "SourceFile"


# instance fields
.field g:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;

.field private h:Z

.field private i:Z

.field ivNumberCoin:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field j:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

.field k:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

.field private l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

.field m:Z

.field mContentView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFloatInputView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFloatInputView2:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextDiamondsCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewInputSubmit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewInputTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewUserCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewBg:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewInputArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewStartGame:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/Runnable;

.field private p:Landroid/widget/ImageView;

.field private q:Lcom/opensource/svgaplayer/SVGAImageView;

.field r:Lcom/guochao/faceshow/aaspring/modulars/live/game/p;

.field private s:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:I

.field w:Z

.field x:I

.field y:Ljava/lang/Runnable;

.field z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->m:Z

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->o:Ljava/lang/Runnable;

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->w:Z

    const/16 v0, 0xf

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x:I

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->z:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->o2()V

    return-void
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l2(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;Z)V

    return-void
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->p2()V

    return-void
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->q:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic d2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object p0
.end method

.method static synthetic e2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    return-object p0
.end method

.method static synthetic f2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    return-object p0
.end method

.method static synthetic g2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object p0
.end method

.method static synthetic h2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    return-object p0
.end method

.method static synthetic i2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object p0
.end method

.method static synthetic j2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object p0
.end method

.method static synthetic k2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->h:Z

    return p1
.end method

.method private l2(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;Z)V
    .locals 9
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    return-void

    .line 3
    :cond_2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->v2()V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getGuessResult()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;->self()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object p2

    .line 8
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->j()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->P()V

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getPrizeNum()I

    move-result v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getRateNum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getInputNum()I

    move-result v7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v8

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->a2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lp7/h;ILjava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->s:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getPrizeNum()I

    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v2

    invoke-virtual {v2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v2

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v3

    invoke-virtual {v3}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    goto :goto_3

    .line 14
    :cond_6
    :goto_2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lp9/a;->b(I)I

    .line 15
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getRateNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->p0()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    .line 18
    :cond_7
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v2

    invoke-virtual {v2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v2

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v3

    invoke-virtual {v3}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    goto :goto_5

    .line 19
    :cond_8
    :goto_4
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lp9/a;->b(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    .line 20
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    invoke-static {v0, p1, p2, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyNumberResultMessage(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    if-nez p3, :cond_d

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {p2, p1, v1}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {p2, p1}, Ld9/e;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    goto :goto_7

    .line 23
    :cond_a
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p3

    invoke-virtual {p3}, Lc9/a;->j()Z

    move-result p3

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {p3}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p3

    invoke-interface {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_6

    .line 24
    :cond_b
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->P()V

    goto :goto_7

    .line 25
    :cond_c
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {p3}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getPrizeNum()I

    move-result v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getRateNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getInputNum()I

    move-result v5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v6

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->a2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lp7/h;ILjava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->s:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    :cond_d
    :goto_7
    return-void

    .line 26
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result v3

    invoke-virtual {v0, v3, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v3

    invoke-virtual {v0, v3, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    const/16 v2, 0xf

    invoke-virtual {v0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->t(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;I)V

    .line 29
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getAppNumGameJoin()Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->c()Lb8/a;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->u2(III)V

    goto :goto_8

    .line 31
    :cond_f
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewInputArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 32
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->p2()V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->i:I

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->g(I)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 34
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->d()V

    :cond_10
    :goto_8
    if-nez p3, :cond_11

    .line 35
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    invoke-static {v0, p1, p2, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyNumberResultMessage(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_11
    return-void
.end method

.method public static n2(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "config"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    check-cast p2, Ljava/util/ArrayList;

    const-string p0, "players"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private o2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$j;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    invoke-direct {v0, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v3

    if-ne v3, v1, :cond_1

    const v1, 0x7f120828

    goto :goto_0

    :cond_1
    const v1, 0x7f12016a

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->l()Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private p2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewInputArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->r:Lcom/guochao/faceshow/aaspring/modulars/live/game/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->c(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->V1()V

    return-void
.end method

.method private r2()Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->i:Z

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->setStarted(Z)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->setTotalCount(I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->setCurrentCount(I)V

    return-object v0
.end method

.method private varargs s2(Landroid/view/View;[I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 2
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0209

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t2(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mTextViewInputTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f1205ca

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private u2(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewInputArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->u:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->v:I

    if-ne v0, p2, :cond_1

    return-void

    .line 3
    :cond_1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->u:I

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->v:I

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->R1()Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->r:Lcom/guochao/faceshow/aaspring/modulars/live/game/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->c(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewInputArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x:I

    .line 9
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->t2(II)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->m:Z

    if-nez p1, :cond_3

    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->k0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->i0()V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$m;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_4
    return-void
.end method

.method private x2(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    const-string v3, "lottery"

    invoke-virtual {p1, v1, v3, v2, v0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->q:Lcom/opensource/svgaplayer/SVGAImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->q:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getMVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    .line 7
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/k;->subscribe()Lth/b;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public J1(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameRoundVo()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->w2(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStartNum()I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getEndNum()I

    move-result v1

    if-le p2, v1, :cond_5

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStartNum()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->setStartNum(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getEndNum()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->setEndNum(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->t2(II)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getEndNum()I

    move-result v1

    invoke-virtual {p2, v1, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStartNum()I

    move-result v1

    invoke-virtual {p2, v1, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStartNum()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->setStartNum(I)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getEndNum()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->setEndNum(I)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStartNum()I

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStartNum()I

    move-result v1

    invoke-virtual {p2, v1, v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V

    .line 17
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getEndNum()I

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getEndNum()I

    move-result v1

    invoke-virtual {p2, v1, v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->t2(II)V

    .line 20
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameRoundVo()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_7

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameRoundVo()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    if-eqz p2, :cond_6

    .line 22
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x3a98

    .line 24
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;->getRestActiveTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 25
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getStartNum()I

    move-result p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getEndNum()I

    move-result v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p2, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->u2(III)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public S1(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->getLiveGameUserInfo()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->v(ILcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)V

    return-void
.end method

.method public T1(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->m(Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;)V

    return-void
.end method

.method public V()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->r2()Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, p0, v2, v3}, Ld9/g;->c1(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Ld9/k;Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;Z)V

    :cond_0
    return-void
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewInputArea:Landroid/view/View;

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

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->s:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->P1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01b5

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->s2(Landroid/view/View;[I)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;

    const v1, 0x7f0a0255

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0856

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mEditText:Landroid/widget/EditText;

    invoke-direct {v0, v2, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;-><init>(Landroid/view/View;Landroid/view/View;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->r:Lcom/guochao/faceshow/aaspring/modulars/live/game/p;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    instance-of v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$f;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->r:Lcom/guochao/faceshow/aaspring/modulars/live/game/p;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a03e1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a34

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0821

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->p:Landroid/widget/ImageView;

    const v2, 0x7f0a0af7

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->q:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 10
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v2, v0, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V

    .line 12
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    .line 13
    invoke-virtual {v2, v0, v0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->i(IZZ)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->setLiveGameHandler(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->s(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mFloatInputView:Landroid/view/View;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mFloatInputView2:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->o(Landroid/view/View;Landroid/view/View;)V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->u(Ljava/util/List;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->t:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->t:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->u(Ljava/util/List;)V

    .line 22
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewStartGame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewBg:Landroid/view/View;

    const v2, 0x7f0f047d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewBg:Landroid/view/View;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewStartGame:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewBg:Landroid/view/View;

    const v2, 0x7f0f047c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    :goto_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 30
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->r2()Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;

    move-result-object v3

    invoke-interface {p1, v2, p0, v3, v1}, Ld9/g;->c1(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Ld9/k;Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;Z)V

    .line 31
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mEditText:Landroid/widget/EditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$h;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 33
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->v2()V

    .line 34
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->ivNumberCoin:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v0

    if-ne v0, v1, :cond_6

    const v0, 0x7f0f01f9

    goto :goto_2

    :cond_6
    const v0, 0x7f0f047f

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a09e2
        0x7f0a094b
        0x7f0a055b
        0x7f0a0788
        0x7f0a0ad3
    .end array-data
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public m1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->r2()Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p0, v2, v3}, Ld9/g;->c1(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Ld9/k;Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;Z)V

    :cond_0
    return-void
.end method

.method public m2(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->h:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->i:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->f()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    const p1, 0x7f1205c6

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->h:Z

    const-string p1, "tokens/game/v2/round/startNumberGameNew"

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_1

    :cond_3
    :goto_0
    return-void

    .line 10
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewInputArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {p1, v0, v1}, Lc9/a;->p(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    goto/16 :goto_1

    .line 12
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewInputArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {p1, v0, v1}, Lc9/a;->o(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    goto :goto_1

    .line 14
    :sswitch_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playDefaultButtonSound()I

    .line 15
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    invoke-virtual {p1}, Lc9/a;->f()V

    goto :goto_1

    .line 16
    :sswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewInputArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playDefaultButtonSound()I

    .line 18
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;-><init>()V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShareType(I)V

    const v0, 0x7f120495

    .line 20
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setImgUrl(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->appendInviter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShortUrl(Ljava/lang/String;)V

    const v0, 0x7f1204a3

    .line 23
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->T1(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "gameShare"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a055b -> :sswitch_4
        0x7f0a0788 -> :sswitch_3
        0x7f0a094b -> :sswitch_2
        0x7f0a09e2 -> :sswitch_1
        0x7f0a0ad3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Ld9/g;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Ld9/g;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Ld9/g;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Ld9/g;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    :cond_1
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "config"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "players"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->t:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mLiveScrollToClearScreenView:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0856

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->e(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x2(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->h()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->h()V

    :cond_2
    return-void
.end method

.method public post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    .line 4
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "gameInfoId"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "roundId"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getStreamId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "streamId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-object p1
.end method

.method public q(Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;)Z
    .locals 5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getGameInfoId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getRoundId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q2(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->a()I

    move-result v3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;

    invoke-direct {v6, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;I)V

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public submitNumber(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playDefaultButtonSound()I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x:I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "tokens/game/v2/round/guessNum"

    .line 8
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "inputNum"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getStartNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "startNum"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getEndNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "endNum"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    :cond_1
    :goto_0
    const p1, 0x7f1205c4

    .line 11
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public v2()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->i:Z

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewBg:Landroid/view/View;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc9/a;->v(Z)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewStartGame:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->i:Z

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->setGamedStarted(Z)V

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x2(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mViewBg:Landroid/view/View;

    const v1, 0x7f0f047c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public w2(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->f()I

    move-result v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    .line 6
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;->getGameSeatCurrentPlayerPosition()I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->i(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {v3, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->p(ILcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y2()V

    :cond_2
    return-void
.end method

.method public y(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld9/g;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v2

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v4, "LIVE_LUCKY_NUMBER_RESULT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "LIVE_LUCKY_NUMBER_RESULT_V_COIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->y(Ld9/g;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)Z

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;

    .line 7
    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    return v1

    .line 8
    :cond_3
    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;->getLiveGameStartBean()Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;->getWinner()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->l2(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;->getWinner()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {p1, p2}, Ld9/e;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method y2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->f()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mTextViewUserCount:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "%s/%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mTextDiamondsCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->a()I

    move-result v3

    mul-int v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v3

    invoke-interface {v1, v0, v3}, Ld9/g;->M(II)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-lt v0, v2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->n:Z

    if-nez v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->o:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iput-boolean v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->n:Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    iput-boolean v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->n:Z

    :cond_3
    :goto_0
    return-void
.end method
