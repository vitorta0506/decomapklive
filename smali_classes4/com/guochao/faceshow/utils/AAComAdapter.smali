.class public abstract Lcom/guochao/faceshow/utils/AAComAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private arraycolor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dividerHeight:I

.field private emptyView:Landroid/view/View;

.field private holder:Lcom/guochao/faceshow/utils/AAViewHolder;

.field private isInitNumColumns:Z

.field private listView:Landroid/widget/ListView;

.field public m:I

.field protected mContext:Landroid/content/Context;

.field public mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mlayoutId:I

.field private myNumColumns:I

.field public n:I

.field private noDataLayoutId:I

.field private showFresh:Z

.field private showNoData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->noDataLayoutId:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showFresh:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showNoData:Z

    const/4 v1, 0x2

    .line 37
    iput v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->myNumColumns:I

    .line 38
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->isInitNumColumns:Z

    .line 39
    iput v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->dividerHeight:I

    .line 40
    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput p2, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mlayoutId:I

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 44
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d014a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->emptyView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->noDataLayoutId:I

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showFresh:Z

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showNoData:Z

    const/4 v1, 0x2

    .line 21
    iput v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->myNumColumns:I

    .line 22
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->isInitNumColumns:Z

    .line 23
    iput v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->dividerHeight:I

    .line 24
    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mlayoutId:I

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d014a

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->emptyView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->noDataLayoutId:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showFresh:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showNoData:Z

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->myNumColumns:I

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->isInitNumColumns:Z

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->dividerHeight:I

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mContext:Landroid/content/Context;

    .line 10
    iput p2, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mlayoutId:I

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iput-boolean p4, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showFresh:Z

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d042b

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->emptyView:Landroid/view/View;

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

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract convert(Lcom/guochao/faceshow/utils/AAViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/utils/AAViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getAction(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->emptyView:Landroid/view/View;

    const v1, 0x7f0a017d

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHolder()Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->holder:Lcom/guochao/faceshow/utils/AAViewHolder;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    instance-of v0, p3, Landroid/widget/GridView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->isInitNumColumns:Z

    if-nez v0, :cond_0

    .line 3
    move-object v0, p3

    check-cast v0, Landroid/widget/GridView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->myNumColumns:I

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->isInitNumColumns:Z

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->dividerHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 p1, 0x0

    .line 10
    :try_start_1
    instance-of p2, p3, Landroid/widget/ListView;

    if-eqz p2, :cond_2

    .line 11
    move-object p2, p3

    check-cast p2, Landroid/widget/ListView;

    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 14
    :cond_2
    instance-of p2, p3, Landroid/widget/GridView;

    if-eqz p2, :cond_3

    .line 15
    move-object p2, p3

    check-cast p2, Landroid/widget/GridView;

    .line 16
    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 17
    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setNumColumns(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_3
    :goto_1
    iget p2, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->noDataLayoutId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->emptyView:Landroid/view/View;

    return-object p1

    .line 21
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->noDataLayoutId:I

    invoke-virtual {p2, v0, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 22
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->dividerHeight:I

    if-lez v0, :cond_6

    .line 23
    iget-object v2, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :cond_6
    :goto_2
    :try_start_3
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_7

    .line 26
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 28
    :cond_7
    instance-of v0, p3, Landroid/widget/GridView;

    if-eqz v0, :cond_8

    .line 29
    move-object v0, p3

    check-cast v0, Landroid/widget/GridView;

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 31
    iget v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->myNumColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mlayoutId:I

    iget-boolean v6, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showFresh:Z

    move-object v2, p2

    move-object v3, p3

    move v5, p1

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/utils/AAViewHolder;->get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;IIZ)Lcom/guochao/faceshow/utils/AAViewHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->holder:Lcom/guochao/faceshow/utils/AAViewHolder;

    .line 34
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAComAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/utils/AAComAdapter;->convert(Lcom/guochao/faceshow/utils/AAViewHolder;Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->holder:Lcom/guochao/faceshow/utils/AAViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    return-object p1
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

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-boolean p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->showNoData:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->mDatas:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEmptyAlert(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAComAdapter;->emptyView:Landroid/view/View;

    const v1, 0x7f0a0c41

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/AAViewCom;->getTv(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
