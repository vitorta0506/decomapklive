.class public final Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->checkPermission(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1",
        "Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;",
        "Lte/a;",
        "permission",
        "",
        "onDenied",
        "onShouldShowRequestPermissionRationale",
        "onGranted",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $callType:I

.field final synthetic $fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;ILcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$callType:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Lte/a;)V
    .locals 3
    .param p1    # Lte/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onDenied(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$callType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->l:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m:[Ljava/lang/String;

    :goto_0
    const-string v1, "if (callType == TYPE_VID\u2026SSIONS_DUAN_WITHOUTCAMERA"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x65

    .line 4
    invoke-static {p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method

.method public onGranted(Lte/a;)V
    .locals 2
    .param p1    # Lte/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$callType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 3
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isMeizu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isCameraCanUse(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f12018d

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->S1(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$callType:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;->access$startCallingInternal(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;ILcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    return-void
.end method

.method public onShouldShowRequestPermissionRationale(Lte/a;)V
    .locals 3
    .param p1    # Lte/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onShouldShowRequestPermissionRationale(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$checkPermission$1;->$callType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->l:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m:[Ljava/lang/String;

    :goto_0
    const-string v1, "if (callType == TYPE_VID\u2026SSIONS_DUAN_WITHOUTCAMERA"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x65

    .line 4
    invoke-static {p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method
