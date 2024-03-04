.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;,
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$MenuAdapter;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Ld9/g;

.field d:Lp7/h;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Landroid/view/View$OnClickListener;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->b:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->T1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->b:Ljava/util/List;

    return-object p0
.end method

.method public static S1(Ljava/lang/String;Ljava/lang/String;Lp7/h;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "userId"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    check-cast p2, Landroid/os/Parcelable;

    const-string p0, "user"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "streamId"

    .line 5
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private synthetic T1(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public R1(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;IIZ)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0165

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Ld9/g;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->c:Ld9/g;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 4
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    const v0, 0x7f120803

    const v1, 0x7f0f0365

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->b:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->R1(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->b:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->R1(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->b:Ljava/util/List;

    const v0, 0x7f0f035f

    const v1, 0x7f120492

    invoke-virtual {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->R1(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->b:Ljava/util/List;

    const v0, 0x7f0f0355

    const v1, 0x7f120481

    invoke-virtual {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->R1(IIZ)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->d:Lp7/h;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment$MenuAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/o;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lp7/h;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->d:Lp7/h;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "streamId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/SingleLiveBottomInteractionListDialogFragment;->f:Ljava/lang/String;

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
