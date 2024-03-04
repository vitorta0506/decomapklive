.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeResultFragment;
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

    const v0, 0x7f0d018f

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0ca3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public loadData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeResultFragment;->a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeResultFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;->getDatas()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeGiftAdapter;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/FirstChargeResultFragment;->a:Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean;

    :cond_0
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
