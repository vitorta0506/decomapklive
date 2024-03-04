.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/doodle/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/Runnable;Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->H0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    const-string v5, "."

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->H0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->H0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "jpg"

    .line 5
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v5

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSavePath:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crop"

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "DCIM"

    if-eqz v6, :cond_2

    .line 10
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 12
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 15
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 16
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0, p2, v7}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->saveImageToGallery(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)I

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    const v2, 0x7f1207b9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto/16 :goto_4

    .line 19
    :cond_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {p2, v1, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 21
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_image_path"

    .line 22
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v7, 0x1c00000

    const-string v1, "key_image_selectable"

    cmp-long v9, v5, v7

    if-gez v9, :cond_5

    .line 24
    :try_start_2
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 25
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_2
    const-string v1, "key_image_duration"

    .line 26
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 28
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_4

    :catchall_0
    move-exception p2

    move-object v1, v0

    goto :goto_5

    :catch_0
    move-exception p2

    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_1
    move-exception p2

    .line 29
    :goto_3
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 31
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 32
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    const v0, 0x7f1207b8

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_4

    :cond_6
    const/4 p3, -0x2

    .line 33
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->c(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :goto_4
    invoke-static {v1}, Lma/c;->a(Ljava/io/Closeable;)V

    .line 35
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 36
    :goto_5
    invoke-static {v1}, Lma/c;->a(Ljava/io/Closeable;)V

    .line 37
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 38
    throw p2
.end method


# virtual methods
.method public a(Lla/a;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v0

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintUnitSize:F

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v1

    invoke-interface {v1}, Lla/a;->getUnitSize()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->F0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)F

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v0

    invoke-interface {v0}, Lla/a;->getSize()F

    move-result v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->F0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)F

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result v0

    invoke-interface {p1, v0}, Lla/a;->setSize(F)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->r(FF)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->setProgress(F)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BRUSH:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-interface {p1, v0}, Lla/a;->setPen(Lla/e;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HAND_WRITE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-interface {p1, v1}, Lla/a;->setShape(Lla/g;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v2

    iget v2, v2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintColor:I

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(I)V

    invoke-interface {p1, v1}, Lla/a;->setColor(Lla/b;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v1

    iget v1, v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mZoomerScale:F

    invoke-interface {p1, v1}, Lla/a;->setZoomerScale(F)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSupportScaleItem:Z

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->s(Z)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v1

    invoke-interface {v1}, Lla/a;->getSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v1

    invoke-interface {v1}, Lla/a;->getUnitSize()F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v1

    invoke-interface {v1}, Lla/a;->getUnitSize()F

    move-result v1

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->ERASER:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v1

    invoke-interface {v1}, Lla/a;->getSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->TEXT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const/high16 v1, 0x41900000    # 18.0f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v2

    invoke-interface {v2}, Lla/a;->getUnitSize()F

    move-result v2

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->N0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const/high16 v1, 0x42a00000    # 80.0f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v2

    invoke-interface {v2}, Lla/a;->getUnitSize()F

    move-result v2

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Boolean;Lla/a;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p4, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->d(Ljava/lang/Runnable;Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p2

    invoke-interface {p2}, Lla/a;->getItemCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p4, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->d(Ljava/lang/Runnable;Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    const/16 p2, -0x6f

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
