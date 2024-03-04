.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lkotlin/Unit;
    .locals 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDuration()J

    move-result-wide v0

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_video_editer_path"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video_editer_uri"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;)I

    move-result v0

    const-string v1, "from"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "choose"

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;)Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "titleName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "source"

    const-string v1, "1"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoDialogFragment$b;->a(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
