.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog$a;

.field tv_f_hight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_hight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->a:I

    return-void
.end method

.method public static P1(I)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "quality"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d03a9

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "quality"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->a:I

    .line 4
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->a:I

    const/4 v0, 0x1

    const v1, 0x7f06003e

    const v2, 0x7f06002f

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->tv_hight:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->tv_f_hight:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->tv_hight:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->tv_f_hight:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x11

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->setGravity(I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p1, 0x7f13012c

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0c39

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0c7e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->a:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->a:I

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog$a;

    if-eqz p1, :cond_2

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->a:I

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog$a;->a(I)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public setOnQualityListener(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog$a;

    return-void
.end method
