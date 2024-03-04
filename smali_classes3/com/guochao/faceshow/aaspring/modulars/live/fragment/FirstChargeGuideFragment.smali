.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGuideFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

.field mContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d018e

    return v0
.end method

.method public gotoCharge(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->start_first_charge_click:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0bb2

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 2
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->first_charge_dialog:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGuideFragment;->a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGuideFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getDatas()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f120428

    new-array v1, v3, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGuideFragment;->a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getData()Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGuideFragment;->a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getData()Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;->getNum()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "%"

    aput-object v5, v2, v3

    const-string v5, "%s%s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "20%"

    :goto_0
    aput-object v2, v1, v4

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGuideFragment;->mTextViewInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGuideFragment;->mTextViewInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setBackCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    return-object p1
.end method
