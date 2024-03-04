.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field private b:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

.field private c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lu9/a;

.field private f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->d:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->e:Lu9/a;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V

    return-void
.end method

.method private S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V
    .locals 2

    const v0, 0x7f0a04ef

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getDiplayNameId()I

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0a0bf8

    invoke-virtual {p1, v0, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static T1(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "liveRoomId"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "game"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private initRecycleView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public R1(Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public U1(ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const/4 p2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;IILcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getContent()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShortUrl()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShareType()I

    move-result v7

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->e:Lu9/a;

    .line 6
    invoke-static/range {v1 .. v8}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    :goto_0
    return-void
.end method

.method public addDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0177

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->initRecycleView()V

    return-void
.end method

.method public loadData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Friend;->NAME:Ljava/lang/String;

    const v2, 0x7f0f02ab

    const v3, 0x7f1203ba

    invoke-direct {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->R1(Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getDefault()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->addDatas(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "liveRoomId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "game"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/GameShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

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

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0395

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lv9/c;->c()V

    return-void
.end method

.method public onViewClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
