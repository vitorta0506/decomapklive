.class Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->X1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Y1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 8

    const v0, 0x7f0a0470

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const v3, 0x7f0a0507

    const/4 v4, 0x2

    const v5, 0x7f0a01f4

    const v6, 0x7f0a0529

    if-ne v1, v4, :cond_2

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->X1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result v3

    const/4 v7, 0x0

    if-ne v3, v4, :cond_0

    .line 7
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object v1

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->V0(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object v1

    .line 12
    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 13
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 15
    :goto_1
    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 17
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 18
    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;

    invoke-direct {v2, p0, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$b;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f0f023b

    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$c;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
