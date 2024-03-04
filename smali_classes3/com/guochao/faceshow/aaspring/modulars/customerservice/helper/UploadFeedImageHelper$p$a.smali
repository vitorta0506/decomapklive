.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$a;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->a:Ljava/util/List;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p$a;->b:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$p;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->f:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
