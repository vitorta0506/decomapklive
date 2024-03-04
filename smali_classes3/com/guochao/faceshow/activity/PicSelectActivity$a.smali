.class Lcom/guochao/faceshow/activity/PicSelectActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/PicSelectActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/PicSelectActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/PicSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$a;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$a;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    iget-boolean v0, p1, Lcom/guochao/faceshow/activity/PicSelectActivity;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/PicSelectActivity;->n0()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "coverpath"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$a;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$a;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method
