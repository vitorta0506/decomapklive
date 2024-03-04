.class public Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;->b:Ljava/util/List;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;ILcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;)V
    .locals 1

    .line 1
    iget-object p2, p1, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;->b:Landroid/widget/ImageView;

    iget-object v0, p3, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    invoke-static {p2, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p1, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;->c:Landroid/widget/TextView;

    iget-object v0, p3, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gname:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p1, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p1, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;->d:Landroid/widget/TextView;

    iget p2, p3, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->counts:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    .line 3
    check-cast p1, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;->a(Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;ILcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    new-instance p2, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;

    iget-object v0, p0, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0201

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;->b:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
