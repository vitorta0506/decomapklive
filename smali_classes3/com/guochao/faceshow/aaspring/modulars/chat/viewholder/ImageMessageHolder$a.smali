.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$a;
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mThumbnailDownloadSuccess:Z

    return-void
.end method
