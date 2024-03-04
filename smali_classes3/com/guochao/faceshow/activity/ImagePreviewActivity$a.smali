.class Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ImagePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;->a:Lcom/guochao/faceshow/activity/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;->a:Lcom/guochao/faceshow/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->b0(Lcom/guochao/faceshow/activity/ImagePreviewActivity;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;->a:Lcom/guochao/faceshow/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->d0(Lcom/guochao/faceshow/activity/ImagePreviewActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;->a:Lcom/guochao/faceshow/activity/ImagePreviewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->d0(Lcom/guochao/faceshow/activity/ImagePreviewActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "isOri"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;->a:Lcom/guochao/faceshow/activity/ImagePreviewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;->a:Lcom/guochao/faceshow/activity/ImagePreviewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method
