.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    const/4 p2, -0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
