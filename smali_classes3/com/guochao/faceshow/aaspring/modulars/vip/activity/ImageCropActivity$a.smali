.class Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->c:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/ImageCropView;

    invoke-virtual {v2}, Lcom/github/chrisbanes/photoview/PhotoView;->getAttacher()Lh1/k;

    move-result-object v2

    invoke-virtual {v2}, Lh1/k;->D()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 5
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float v3, v2, p1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->c:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, p1

    div-float/2addr p1, v2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-virtual {v4, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    iget v5, v1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->a:I

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getGifCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ".gif"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a$a;

    invoke-direct {v7, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;)V

    move v1, p1

    move v4, v5

    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/utils/GifUtils;->cropGif(Ljava/lang/String;FFFIILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;)Lth/b;

    :cond_1
    :goto_0
    return-void
.end method
