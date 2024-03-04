.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0a05d5

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0598

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a05be

    .line 4
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->isSelect()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-nez p2, :cond_1

    .line 8
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->getDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$n;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d036c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
