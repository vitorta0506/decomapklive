.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCombo(Lcom/guochao/faceshow/gift/view/GiftComboView;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/gift/view/GiftComboView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iget-object p2, p2, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->h:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->reset()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mHandyGifViewHelper:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->trackSend()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    new-instance p2, Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;-><init>([ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftImageLocation(Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public onComboTimeout(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/gift/view/GiftComboView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onComboTimeout2(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/gift/view/GiftComboView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mCurrentGiftItemData:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
