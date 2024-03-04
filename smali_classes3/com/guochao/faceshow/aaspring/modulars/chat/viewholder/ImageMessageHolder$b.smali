.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;Landroid/widget/ImageView;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->a:Landroid/widget/ImageView;

    const p2, 0x7f0f0225

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onProgress(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$b;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mThumbnailDownloadSuccess:Z

    return-void
.end method
