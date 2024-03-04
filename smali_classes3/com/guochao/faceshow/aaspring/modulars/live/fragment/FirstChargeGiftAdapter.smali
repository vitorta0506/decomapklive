.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field d:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;I)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->a:Landroidx/fragment/app/Fragment;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->b:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->c:I

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/high16 p1, 0x40800000    # 4.0f

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->d:I

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40c00000    # 6.0f

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->d:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    const v0, 0x7f0a04ef

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0269

    .line 4
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a07e3

    .line 5
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a01b8

    .line 6
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/cardview/widget/CardView;

    const v4, 0x7f0a047a

    .line 7
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    .line 8
    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, -0x1

    .line 9
    invoke-virtual {v3, v5}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const-string v5, "#FFF1D7"

    .line 10
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->getItemCount()I

    move-result v3

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v5, 0x3

    if-le v3, v5, :cond_1

    .line 13
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->d:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 14
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->d:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 15
    :cond_1
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->d:I

    div-int/2addr v3, v6

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 16
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->d:I

    div-int/2addr v3, v6

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 17
    :goto_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->c:I

    const/4 v3, 0x0

    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    .line 18
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 19
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :goto_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result p1

    const-string v4, "x%s"

    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    goto/16 :goto_4

    :cond_3
    const p1, 0x7f0f00c5

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, "#FF4F17"

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->c:I

    if-ne p1, v7, :cond_4

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->a:Landroidx/fragment/app/Fragment;

    const v0, 0x7f12042b

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getNum()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    new-array p1, v7, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getNum()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 26
    :cond_5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result p1

    if-ne p1, v5, :cond_6

    const p1, 0x7f120427

    .line 27
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 28
    :cond_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getType()I

    move-result p1

    if-ne p1, v6, :cond_7

    const p1, 0x7f120423

    .line 29
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_7
    const p1, 0x7f120422

    .line 30
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    :goto_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lhc/a;->k(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    const-string p1, "#79471E"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    new-array p1, v7, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getNum()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
