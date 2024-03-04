.class Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->access$000(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->access$000(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onProgress(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->access$000(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->access$000(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    .line 3
    invoke-interface {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->access$100(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->access$100(Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->getVideoPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;->mIsDownloading:Z

    return-void
.end method
