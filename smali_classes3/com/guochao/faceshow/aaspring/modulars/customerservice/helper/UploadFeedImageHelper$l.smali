.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/view/ViewGroup;Landroidx/activity/result/ActivityResultCaller;Z)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$l;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$l;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->mTextViewWordLimit:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->length(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x3e8

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->j(Landroid/widget/TextView;II)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
