.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->T1(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onDenied(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;->a:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method

.method public onGranted(Lte/a;)V
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isMeizu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isCameraCanUse(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;->a:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f12018d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->S1(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;->a:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    const-string v1, "IDENTITY_TYPE_KEY"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ActivityTransitionAnimUtils;->startActivityByDownToUp(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onShouldShowRequestPermissionRationale(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onShouldShowRequestPermissionRationale(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment$a;->a:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method
