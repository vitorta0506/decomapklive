.class public Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public P1(Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog;->a:Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog$a;

    return-void
.end method

.method protected getDialogStyle()I
    .locals 1

    const v0, 0x7f13012c

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d011c

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

    const/16 p1, 0x11

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->setGravity(I)V

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setParamsHeight(I)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02a6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a09d8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog;->a:Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog$a;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/dialog/DeleteImDialog$a;->onDelete()V

    :cond_2
    :goto_0
    return-void
.end method
