.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;,
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field b:Ld9/g;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/fragment/app/Fragment;

.field private g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field private h:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->l:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->m:Z

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->d2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->f:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->l:Z

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->l:Z

    return p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->m:Z

    return p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->m:Z

    return p1
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->k:I

    return p0
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    return-object p0
.end method

.method private synthetic d2(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method private i2()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->i:Z

    const v1, 0x7f1204f3

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    const v3, 0x7f0f0391

    invoke-virtual {p0, v3, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    const v3, 0x7f0f0393

    invoke-virtual {p0, v3, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->j:Z

    const v1, 0x7f1209c5

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    const v3, 0x7f0f038e

    invoke-virtual {p0, v3, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    const v3, 0x7f0f038f

    invoke-virtual {p0, v3, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public static j2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-interface {p2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mLiveRoomModel"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "userName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "position"

    .line 6
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "liveInfoMatchBean"

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;IIZ)V

    return-object v0
.end method

.method public b2()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public c2()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    return-object v0
.end method

.method public e2(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setMatchType(Ljava/lang/String;)V

    const-string v0, "2"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->j:Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->b()I

    move-result v1

    const v2, 0x7f1209c5

    if-ne v1, v2, :cond_0

    .line 6
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->j:Z

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->e(Z)V

    .line 7
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->j:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f038e

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->d(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0f038f

    .line 9
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->d(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f2(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setVoiceStatus(Ljava/lang/String;)V

    const-string v0, "1"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->i:Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->b()I

    move-result v1

    const v2, 0x7f1204f3

    if-ne v1, v2, :cond_0

    .line 6
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->i:Z

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->e(Z)V

    .line 7
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->i:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f0391

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->d(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0f0393

    .line 9
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->d(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public g2(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnchorForceMatchType=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnchorForceMatchTyp+setAnchorForceMatchType"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAnchorForceMatchType(Z)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0165

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h2(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAnchorForceVoiceStatus(Z)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->i:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getMatchType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->j:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    const v1, 0x7f120481

    const v2, 0x7f0f0355

    const v3, 0x7f120803

    const v4, 0x7f0f0365

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    invoke-virtual {p0, v4, v3, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->i2()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    const v1, 0x7f0f036f

    const v2, 0x7f1203c3

    invoke-virtual {p0, v1, v2, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->f:Landroidx/fragment/app/Fragment;

    instance-of v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->f:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    invoke-virtual {p0, v4, v3, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->i2()V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    invoke-virtual {p0, v4, v3, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    invoke-virtual {p0, v4, v3, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    const v3, 0x7f0f035f

    const v4, 0x7f120492

    invoke-virtual {p0, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->e:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a2(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->f:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Ld9/g;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->b:Ld9/g;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "liveInfoMatchBean"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mLiveRoomModel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->k:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
