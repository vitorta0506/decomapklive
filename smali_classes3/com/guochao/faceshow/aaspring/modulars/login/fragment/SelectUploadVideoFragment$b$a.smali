.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a(Ljava/util/List;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->c:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->c:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->c:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, -0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    const v1, 0x7f0a0529

    .line 4
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01ec

    .line 5
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0a45

    .line 6
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget v3, v3, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->b:I

    if-ne v3, p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {v1, p2}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->formatTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0205

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0206

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
