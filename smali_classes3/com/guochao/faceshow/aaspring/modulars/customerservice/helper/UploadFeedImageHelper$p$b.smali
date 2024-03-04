.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->a:Ljava/util/List;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->b:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->b:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->a:Ljava/util/List;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->b:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->b:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackImagePreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->a:I

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$b;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->g:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
