.class public Lcom/guochao/faceshow/adapter/ThumbnailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->a:I

    if-nez p2, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->c:Ljava/util/List;

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->c:Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->b:I

    add-int/lit8 v0, v0, 0x1

    if-eq p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->c:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p1, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0285

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;-><init>(Lcom/guochao/faceshow/adapter/ThumbnailAdapter;Landroid/view/View;)V

    const v0, 0x7f0a05f6

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;->a:Landroid/widget/ImageView;

    return-object p2

    .line 4
    :cond_1
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->a:I

    div-int/2addr v0, v1

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;-><init>(Lcom/guochao/faceshow/adapter/ThumbnailAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public c(Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->b:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->a(Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->c(Lcom/guochao/faceshow/adapter/ThumbnailAdapter$a;)V

    return-void
.end method
