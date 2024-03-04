.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->b:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->b(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->a:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    if-ne v1, p4, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->a:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iput p4, p3, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    const/4 p3, 0x4

    const v1, 0x3f99999a    # 1.2f

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x7f0a01f2

    const v5, 0x7f0a0529

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez p4, :cond_3

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 6
    invoke-virtual {p2, v6}, Landroid/view/View;->setSelected(Z)V

    .line 7
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-direct {p0, p4, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->c(Landroid/view/View;F)V

    .line 8
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-direct {p0, p4, v7}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->c(Landroid/view/View;F)V

    .line 9
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 10
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 14
    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 15
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 16
    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    .line 17
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-direct {p0, p4, v7}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->c(Landroid/view/View;F)V

    .line 18
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-direct {p0, p4, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->c(Landroid/view/View;F)V

    .line 19
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->R1()V

    return-void
.end method

.method private c(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->e:Ljava/util/List;

    if-eqz v0, :cond_0

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
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 12
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    const v1, 0x7f0a0bb2

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    iget v2, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    const v1, 0x7f0a0a54

    .line 6
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a0a55

    .line 7
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const v4, 0x7f0a0ae8

    .line 8
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a0529

    .line 10
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 12
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->a:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    .line 13
    iget v9, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    const/4 v10, -0x1

    const/high16 v11, 0x3f000000    # 0.5f

    if-ne v9, v10, :cond_0

    .line 14
    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 15
    invoke-virtual {p1, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v9, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v9, 0x3f000000    # 0.5f

    .line 16
    :goto_0
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 17
    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    if-ne v0, v3, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 18
    :goto_1
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->c:[I

    if-eqz v0, :cond_3

    .line 19
    aget v0, v0, v2

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->c:[I

    aget v0, v0, v3

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :cond_3
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->d:[I

    if-eqz v0, :cond_4

    .line 22
    aget v0, v0, v2

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 23
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->d:[I

    aget v0, v0, v3

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 24
    :cond_4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$a;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$b;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const p2, 0x7f0a095c

    .line 26
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v4, 0x2

    invoke-direct {v1, p1, v4, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_2
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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d032e

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d032d

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
