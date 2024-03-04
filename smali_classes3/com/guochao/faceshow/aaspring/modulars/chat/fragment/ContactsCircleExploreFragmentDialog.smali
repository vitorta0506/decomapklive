.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog$a;

.field btnOk:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field btnSearch:Landroid/widget/TextView;
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
.method public P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog$a;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0172

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

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

    const/4 p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setParamsHeight(I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/high16 v1, -0x80000000

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    return-object p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0183

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0193

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog$a;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog$a;->onConfirm()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog$a;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ContactsCircleExploreFragmentDialog$a;->onCancel()V

    :cond_2
    :goto_0
    return-void
.end method
