.class Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public onEncodeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
