.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0a04ef

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0b47

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a04ca

    .line 4
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    const v5, 0x7f1204e8

    const v6, 0x7f06009e

    const v7, 0x7f06009c

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    if-eq v5, v4, :cond_0

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->b:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget-boolean v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->b:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    if-eq v5, v4, :cond_2

    .line 13
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->a:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->a:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :goto_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    const v5, 0x7f1205d6

    if-ne v4, v5, :cond_3

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :cond_3
    iget v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    const v5, 0x7f1209ca

    if-ne v4, v5, :cond_5

    .line 20
    iget-boolean v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    if-eqz v4, :cond_4

    .line 21
    iget v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->b:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 23
    :cond_4
    iget v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->a:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    :cond_5
    :goto_1
    iget v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    const v5, 0x7f1204c6

    if-ne v4, v5, :cond_7

    .line 26
    iget-boolean v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    if-eqz v4, :cond_6

    .line 27
    iget v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->b:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 29
    :cond_6
    iget v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    const v3, 0x7f120506

    const/16 v4, 0x8

    if-ne v0, v3, :cond_9

    .line 32
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v3, "KEY_LIVE_CHAT_HELLO_DIALOG"

    invoke-virtual {v0, v3}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 33
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 34
    :cond_8
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 35
    :cond_9
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d03b0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
