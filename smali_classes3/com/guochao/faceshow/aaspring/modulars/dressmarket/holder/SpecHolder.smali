.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/holder/SpecHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->isSelect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a08bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getPercent()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080097

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f080096

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getOffContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0b77

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->setPriceSpecContent(Landroid/widget/TextView;)V

    return-void
.end method
