.class public final Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;
.super Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/liveroom_select_cover"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\"\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0006H\u0014J\u0008\u0010\u0013\u001a\u00020\u0006H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;",
        "Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;",
        "()V",
        "displayer",
        "Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;",
        "initView",
        "",
        "view",
        "Landroid/view/View;",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAttach",
        "activity",
        "Landroid/app/Activity;",
        "startCamera",
        "startPhotoActivity",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private displayer:Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDisplayer$p(Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;)Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;->displayer:Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;

    return-object p0
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->initView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->tv_camera:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x33

    if-eq p1, p2, :cond_8

    const/16 p2, 0x34

    if-eq p1, p2, :cond_7

    const/16 p2, 0x45

    if-eq p1, p2, :cond_3

    const/16 p2, 0x79

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2727

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p3, :cond_9

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string p2, "intent_extra_key_qr_scan"

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "uri"

    .line 4
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    .line 7
    invoke-static {p3, p2, v0, p1, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_1

    .line 8
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;-><init>()V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setThumb(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getDisplayThumbUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setUri(Landroid/net/Uri;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;->displayer:Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;->notifyLocalImage(Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p1, p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->copy(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)Lio/reactivex/k;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 14
    invoke-virtual {p1, p1, p2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->copy(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)Lio/reactivex/k;

    move-result-object p1

    .line 15
    new-instance p2, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$2;-><init>(Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    return-void

    .line 16
    :cond_4
    invoke-static {p3}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;->displayer:Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;

    if-eqz p2, :cond_6

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    .line 19
    invoke-static {p3, p1}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 20
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    .line 21
    :goto_0
    invoke-interface {p2, p3}, Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;->notifyLocalImage(Ljava/lang/String;)V

    .line 22
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    .line 23
    new-instance p3, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$1;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment$onActivityResult$1;-><init>(Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;)V

    .line 24
    invoke-static {p2, p1, p3}, Lba/a;->p(Landroid/content/Context;Landroid/net/Uri;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_9

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/AAImageUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    .line 29
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 31
    invoke-static {p2, p1, v0, p3, v1}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_1

    .line 32
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->cameraPath:Ljava/lang/String;

    .line 34
    iget-object p3, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->updatePath:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->getmCameraUri()Landroid/net/Uri;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 37
    invoke-static {p1, p2, p3, v0, v1}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    instance-of v0, p1, Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;->displayer:Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;

    :cond_0
    return-void
.end method

.method protected startCamera()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->cameraPath:Ljava/lang/String;

    const/16 v1, 0x33

    invoke-static {p0, v1, v0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->cameraMethod(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return-void
.end method

.method protected startPhotoActivity()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-boolean v2, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->isVip:Z

    const-string v3, "isVip"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-boolean v2, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->mNoGif:Z

    const-string v3, "nogif"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2727

    .line 7
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
