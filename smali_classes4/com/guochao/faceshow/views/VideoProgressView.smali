.class public Lcom/guochao/faceshow/views/VideoProgressView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:I

.field private e:I

.field private f:Lcom/guochao/faceshow/adapter/ThumbnailAdapter;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/VideoProgressView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/VideoProgressView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/VideoProgressView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/VideoProgressView;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0355

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->b:Landroid/view/View;

    const v1, 0x7f0a09ef

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public getParentView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getSingleThumbnailWidth()F
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getThumbnailCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->f:Lcom/guochao/faceshow/adapter/ThumbnailAdapter;

    invoke-virtual {v0}, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->e:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->d:I

    return v0
.end method

.method public setThumbnailData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/VideoProgressView;->g:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;

    iget v1, p0, Lcom/guochao/faceshow/views/VideoProgressView;->d:I

    invoke-direct {v0, v1, p1}, Lcom/guochao/faceshow/adapter/ThumbnailAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/VideoProgressView;->f:Lcom/guochao/faceshow/adapter/ThumbnailAdapter;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/VideoProgressView;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/VideoProgressView;->e:I

    return-void
.end method

.method public setViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/VideoProgressView;->d:I

    return-void
.end method
