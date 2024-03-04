.class Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->getItemId()I

    move-result p1

    const p2, 0x7f1201da

    if-eq p1, p2, :cond_3

    const p2, 0x7f1201f8

    if-eq p1, p2, :cond_2

    const p2, 0x7f120444

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->T1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->T1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;->imgUrl:Ljava/lang/String;

    :goto_0
    const-string p3, "image_url"

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->V1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->T1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->W1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lhb/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->W1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lhb/b;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment$b;->a:Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;->T1(Lcom/guochao/faceshow/mine/picdrag/dialog/CoverPhotoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    move-result-object p2

    invoke-interface {p1, p2}, Lhb/b;->onResponse(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    return-void
.end method
