.class public Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;
.super Lcom/guochao/faceshow/adapter/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;,
        Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/guochao/faceshow/adapter/BaseAdapter<",
        "TT;",
        "Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/TransactionType;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->d:I

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->c:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->d:I

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->d:I

    return p1
.end method

.method static synthetic d(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public e(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/TransactionType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/TransactionType;->getId()I

    move-result p2

    .line 5
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->c(Ljava/lang/String;)V

    .line 6
    iget-object v2, p1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->c:Landroid/view/View;

    iget-object v3, p1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-boolean v1, v1, Lcom/guochao/faceshow/mine/model/TransactionType;->isSelected:Z

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060384

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :goto_0
    iget-object v1, p1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 11
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    iget-object v2, p1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;->c:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;

    invoke-direct {v1, p0, v0, p2}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$a;-><init>(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;
    .locals 3

    new-instance p2, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;

    invoke-virtual {p0}, Lcom/guochao/faceshow/adapter/BaseAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d024e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->b:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/mine/model/TransactionType;->isSelected:Z

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->e(Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->f(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$c;

    move-result-object p1

    return-object p1
.end method
