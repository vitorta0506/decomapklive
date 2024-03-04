.class Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->b2(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->c(Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ld9/g;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p1, 0x3e9

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroid/view/View;)V

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0789

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getH5Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a08a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0262

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;Landroid/view/View;)V

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0261

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;Landroid/view/View;)V

    .line 3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a08a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/play/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0789

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/play/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
