.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$m;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$m;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->c:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$m;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->b:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->isVip()Z

    move-result v1

    const-string v3, "isVip"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nogif"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/16 v2, 0x67

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
