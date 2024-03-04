.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->sendGiftButtonClick(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;ILjava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->b:Ljava/util/List;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomRecharge()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$400(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;I)V

    return-void
.end method

.method public onResponse()V
    .locals 12

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v0

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->a:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lp9/a;->D(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mGiftItemListener:Lu8/b;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->putType(ILandroid/os/Bundle;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v2, "send_gift_click"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v3, v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mGiftItemListener:Lu8/b;

    iget-object v5, v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mResourceCategoryItem:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v6, v4, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->b:Ljava/util/List;

    iget v8, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->c:I

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$300(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)Z

    move-result v9

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getCurrentComboId()I

    move-result v10

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v11}, Lu8/b;->onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->refreshDiamonds()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$k;->d:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method
