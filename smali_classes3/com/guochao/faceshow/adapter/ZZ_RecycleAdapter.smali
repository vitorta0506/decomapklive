.class public abstract Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.super Lcom/guochao/faceshow/adapter/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/guochao/faceshow/adapter/BaseAdapter<",
        "TT;",
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field private emptyFL:Landroid/view/View;

.field protected final emptyView:Landroid/view/View;

.field public mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mlayoutId:I

.field private showNoData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->showNoData:Z

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->context:Landroid/content/Context;

    .line 5
    iput p2, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mlayoutId:I

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d014a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    const p2, 0x7f0a0324

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyFL:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->showNoData:Z

    .line 11
    iput-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->context:Landroid/content/Context;

    .line 12
    iput p2, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mlayoutId:I

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d014a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    .line 14
    iput-object p3, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    const p2, 0x7f0a0324

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyFL:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getAction(Ljava/lang/String;)Landroid/widget/Button;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    const v1, 0x7f0a017d

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/AAViewCom;->getBtn(Landroid/view/View;I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x64

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public hideAdapterEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public notifyDataSetChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    .line 2
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->onBindViewHolder(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;
    .locals 3

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/adapter/BaseAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mlayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public resetData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->showNoData:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEmptyAlert(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    const v1, 0x7f0a0c41

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEmptyFLMargeTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyFL:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public setEmptyIcon(I)V
    .locals 2

    const v0, 0x7f0a05a0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/AAViewCom;->getIv(Landroid/view/View;I)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/utils/AAViewCom;->getIv(Landroid/view/View;I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setEmptyTab(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->emptyView:Landroid/view/View;

    const v1, 0x7f0a0e08

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/AAViewCom;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float p1, p1

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 p1, 0xa

    .line 4
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setShowNoData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->showNoData:Z

    return-void
.end method
