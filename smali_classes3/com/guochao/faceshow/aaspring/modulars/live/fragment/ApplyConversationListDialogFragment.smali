.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$m;,
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$l;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$m;

.field bottomLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field c:Z

.field d:Ld9/g;

.field private e:Z

.field emptyText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field emptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field f:Landroid/view/View$OnClickListener;

.field g:Landroid/view/View$OnClickListener;

.field h:Landroid/view/View$OnClickListener;

.field mImageViewStatus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLiveBtn:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewLinkMic:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rcvApplyList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->f:Landroid/view/View$OnClickListener;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$j;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->g:Landroid/view/View$OnClickListener;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->c2()V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->showEmptyView()V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->b2()V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->Z1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->e:Z

    return p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d2()Z

    move-result p0

    return p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->Y1(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->i2(Ljava/lang/String;)V

    return-void
.end method

.method private Y1(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string p3, "tokens/live/microphone/agree"

    .line 1
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p3

    const-string v0, "streamId"

    invoke-virtual {p3, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    .line 2
    invoke-interface {p3}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p3

    invoke-interface {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "liveId"

    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string p3, "audienceId"

    .line 3
    invoke-virtual {p2, p3, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$i;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private Z1(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->e:Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mImageViewStatus:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mTextViewLinkMic:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mImageViewStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->e(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method private b2()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    xor-int/2addr v0, v3

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->k2(Z)V

    return-void
.end method

.method private c2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s3(I)V

    :cond_0
    return-void
.end method

.method private d2()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getApplyPkState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i2(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$m;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->b2()V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->c2()V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->showEmptyView()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showEmptyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->emptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0330

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->emptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a2(ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;)V
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ltz p1, :cond_1

    if-nez p2, :cond_3

    .line 1
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    move p1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ltz p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "tokens/live/microphone/cancel"

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "liveId"

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getStreamId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "streamId"

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    .line 6
    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anchorId"

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v2, 0x3

    .line 7
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$a;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;IZ)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_5
    :goto_3
    return-void
.end method

.method public applyLink(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;->checkMicroPhoneLevel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMute()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f120510

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Landroid/view/View;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public close(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public e2()V
    .locals 3

    const-string v0, "tokens/live/microphone/getList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    .line 2
    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anchorId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public f2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;-><init>()V

    .line 6
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setUserId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setUserAge(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserPendant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setAvatar(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->getSex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setSex(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setUserAge(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setStreamId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserCountryFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setCountryFlag(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->setNickName(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$m;

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->showEmptyView()V

    goto :goto_1

    .line 19
    :cond_3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->i2(Ljava/lang/String;)V

    .line 20
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->c2()V

    return-void
.end method

.method public g2(ILcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    move p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "tokens/live/microphone/disagree"

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    invoke-interface {p3}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p3

    invoke-interface {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "liveId"

    invoke-virtual {p1, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getStreamId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "streamId"

    invoke-virtual {p1, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "audienceId"

    invoke-virtual {p1, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 p3, 0x3

    .line 8
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;

    invoke-direct {p3, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;)V

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_3
    :goto_2
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d015c

    return v0
.end method

.method public h2(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->t(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->i2(Ljava/lang/String;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->rcvApplyList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$m;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$c;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$m;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->rcvApplyList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->c:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mLiveBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->bottomLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mLiveBtn:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->bottomLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->emptyText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->emptyView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j2(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->t(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$m;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->i2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k2(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->o()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mLiveBtn:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mTextViewLinkMic:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    const p1, 0x7f1204a5

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mTextViewLinkMic:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    const p1, 0x7f12047c

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mTextViewLinkMic:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public loadData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->e2()V

    return-void
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

    check-cast p1, Ld9/g;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    .line 3
    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->d:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->c:Z

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

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .locals 1

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-object p1
.end method
