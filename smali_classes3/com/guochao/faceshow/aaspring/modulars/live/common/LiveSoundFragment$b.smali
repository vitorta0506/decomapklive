.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0a04ef

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0b47

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d03b0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
