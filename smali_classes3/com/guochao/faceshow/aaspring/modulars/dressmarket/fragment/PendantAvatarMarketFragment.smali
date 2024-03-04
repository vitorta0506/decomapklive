.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/PendantAvatarMarketFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V

    return-void
.end method

.method public V1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V
    .locals 0

    return-void
.end method

.method protected W1(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyPendantAvatarDialog;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->a2(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V

    return-void
.end method

.method protected X1(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->B0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/PendantAvatarMarketFragment;->S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/PendantAvatarMarketFragment;->V1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V

    return-void
.end method
