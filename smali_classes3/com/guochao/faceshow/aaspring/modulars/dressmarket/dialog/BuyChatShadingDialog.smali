.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyChatShadingDialog;
.super Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->initView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42860000    # 67.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42180000    # 38.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const v0, 0x7f0f009a

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const v0, 0x7f0f0099

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getTagType()I

    move-result p1

    if-ne p1, v1, :cond_3

    const v0, 0x7f0f0097

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getTagType()I

    move-result p1

    if-ne p1, v2, :cond_4

    const v0, 0x7f0f0098

    .line 12
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_5

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->d:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
