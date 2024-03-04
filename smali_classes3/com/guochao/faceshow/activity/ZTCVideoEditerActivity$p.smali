.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N1(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v1, 0x9

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    cmpg-float v5, v4, v2

    if-gtz v5, :cond_2

    .line 8
    iget-object v5, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    mul-float v5, v4, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v5, v5, v6

    float-to-long v5, v5

    .line 9
    invoke-virtual {v0, v5, v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const v7, 0x7f0d0285

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a05f6

    .line 11
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    iget-object v5, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    new-instance v7, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p$a;

    invoke-direct {v7, p0, v6}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p$a;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    add-float/2addr v4, v3

    goto :goto_0

    :cond_2
    return-void
.end method
