.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->j:Z

    if-eqz v1, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;->getCurrentSize()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;->getTotalSize()J

    move-result-wide v2

    long-to-float p1, v2

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 6
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mProgressTv:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    const-string v4, "%"

    aput-object v4, v3, v2

    const-string v2, "%d%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mDownloadDialogProgressView:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->setProgress(I)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment$d;->a(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V

    return-void
.end method
