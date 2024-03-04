.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 10
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0a0cc9

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a05c2

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a05c5

    .line 4
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0a0d9f

    .line 5
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a05af

    .line 6
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0592

    .line 7
    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a05c3

    .line 8
    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 9
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v7}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isSelect()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-boolean v7, v7, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAll:Z

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 10
    :goto_1
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v9}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getPosition()I

    move-result v9

    if-nez v9, :cond_2

    add-int/lit8 v9, p2, 0x1

    .line 11
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v9}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getPosition()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/16 v9, 0x8

    if-eqz v7, :cond_4

    .line 13
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const v5, 0x7f08054c

    .line 15
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v6, 0x7f0800bb

    .line 16
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v6, 0x7f0603ce

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1400(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1400(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f03f0

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 22
    :cond_3
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v5, 0x7f080551

    .line 25
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v6, 0x7f0800bc

    .line 26
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v6, 0x7f06009c

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1400(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1400(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0f03ef

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 32
    :cond_5
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$1300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    const v1, 0x7f0f0089

    .line 34
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    .line 35
    invoke-static {v1}, Lcom/bumptech/glide/request/h;->x0(Le0/h;)Lcom/bumptech/glide/request/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0383

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
