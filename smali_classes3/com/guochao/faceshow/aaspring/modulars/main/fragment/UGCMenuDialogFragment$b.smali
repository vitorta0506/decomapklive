.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onDenied(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x65

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    return-void
.end method

.method public onGranted(Lte/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isMeizu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isCameraCanUse(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12018d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;->R1(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->push_video_click:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    const-string v1, "from"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ActivityTransitionAnimUtils;->startActivityByDownToUp(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onShouldShowRequestPermissionRationale(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onShouldShowRequestPermissionRationale(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x65

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/UGCMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method
