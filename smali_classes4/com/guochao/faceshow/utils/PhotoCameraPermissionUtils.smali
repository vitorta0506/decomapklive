.class public Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PHOTO_MARK:I = 0x33

.field public static final REQ_CAMERA:I = 0x5

.field public static final REQ_READ_EXTERNAL_STORAGE:I = 0x65

.field public static final SELECT_PHOTO:I = 0x34

.field public static mCameraUri:Landroid/net/Uri;


# instance fields
.field private mAct:Landroid/app/Activity;

.field public mCameraPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    return-void
.end method

.method private afterM()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static cameraMethod(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 4

    .line 15
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->createImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 19
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 21
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v2, v0, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    const-string v1, "output"

    .line 23
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.videoQuality"

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "photo::mCameraUri"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static cameraMethod(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->createImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 5
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 7
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    const-string v1, "output"

    .line 9
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.videoQuality"

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "photo::mCameraUri"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static createImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const-string v1, "relative_path"

    const-string v2, "Pictures/preventpro"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "mime_type"

    const-string v2, "image/JPEG"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getmCameraUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public checkCameraPer()Z
    .locals 3

    const-string v0, "android.permission.CAMERA"

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->afterM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkReadExtraPer()Z
    .locals 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->afterM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public doNext(I[I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    aget p1, p2, v1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->selectPhoto()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    const-string/jumbo p2, "\u83b7\u53d6\u8bfb\u5199\u6743\u9650\u5931\u8d25\uff0c\u8bf7\u5728\u624b\u673a\u4e2d\u8bbe\u7f6e\u5141\u8bb8\u8bfb\u5199"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 4
    :cond_2
    aget p1, p2, v1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    const/16 p2, 0x33

    iget-object v0, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mCameraPath:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->cameraMethod(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    const-string/jumbo p2, "\u83b7\u53d6\u62cd\u7167\u6743\u9650\u5931\u8d25\uff0c\u8bf7\u5728\u624b\u673a\u4e2d\u8bbe\u7f6e\u5141\u8bb8\u62cd\u7167"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public selectPhoto()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/utils/PhotoCameraPermissionUtils;->mAct:Landroid/app/Activity;

    const/16 v2, 0x34

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
