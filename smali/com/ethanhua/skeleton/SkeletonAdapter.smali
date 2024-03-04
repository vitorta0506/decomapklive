.class public Lcom/ethanhua/skeleton/SkeletonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->a:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->d:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lio/supercharge/shimmerlayout/ShimmerLayout;

    .line 3
    iget p2, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->e:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAnimationDuration(I)V

    .line 4
    iget p2, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->f:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAngle(I)V

    .line 5
    iget p2, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->c:I

    invoke-virtual {p1, p2}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerColor(I)V

    .line 6
    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->n()V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/ethanhua/skeleton/ShimmerViewHolder;

    iget v1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->b:I

    invoke-direct {v0, p2, p1, v1}, Lcom/ethanhua/skeleton/ShimmerViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/ethanhua/skeleton/SkeletonAdapter$a;

    iget v1, p0, Lcom/ethanhua/skeleton/SkeletonAdapter;->b:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/ethanhua/skeleton/SkeletonAdapter$a;-><init>(Lcom/ethanhua/skeleton/SkeletonAdapter;Landroid/view/View;)V

    return-object v0
.end method
