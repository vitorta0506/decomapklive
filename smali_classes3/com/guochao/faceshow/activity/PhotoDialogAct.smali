.class public Lcom/guochao/faceshow/activity/PhotoDialogAct;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private b0()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected d0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected e0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->setCameraPath(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->setUpdatePath(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "Photo_Dialog_Fragment"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    const/16 p2, 0x33

    if-eq p1, p2, :cond_3

    const/16 p2, 0x34

    if-eq p1, p2, :cond_2

    const/16 p2, 0x45

    if-eq p1, p2, :cond_0

    const/16 p2, 0x79

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/yalantis/ucrop/a;->b(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/activity/PhotoDialogAct;->d0(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/activity/PhotoDialogAct;->d0(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/AAImageUtil;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->b:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->b:Ljava/lang/String;

    invoke-static {}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->getmCameraUri()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, p0}, Lcom/guochao/faceshow/utils/Photo_Take_Util;->startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "coverImg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/PhotoDialogAct;->b0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cover"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/PhotoDialogAct;->b0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PhotoDialogAct;->c:Ljava/lang/String;

    return-void
.end method
