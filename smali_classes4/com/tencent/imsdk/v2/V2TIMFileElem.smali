.class public Lcom/tencent/imsdk/v2/V2TIMFileElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FileElement;

    .line 3
    new-instance v1, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileDownloadFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 5
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuid(Ljava/lang/String;)V

    .line 7
    sget v2, Lcom/tencent/imsdk/message/MessageBaseElement;->UUID_TYPE_FILE:I

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuidType(I)V

    .line 8
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileBusinessID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/DownloadParam;->setBusinessID(I)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/message/DownloadParam;->setFileSavePath(Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMFileElem$1;

    invoke-direct {p1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFileElem$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMFileElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 11
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFileElem$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMFileElem$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMFileElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 12
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMFileElem$3;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFileElem$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMFileElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMFileElem$4;

    invoke-direct {p1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMFileElem$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMFileElem;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p2, v1, v2, p1}, Lcom/tencent/imsdk/message/MessageCenter;->downloadMessageElement(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FileElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FileElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileSize()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FileElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FileElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x1781

    const-string v1, "elem is null"

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/FileElement;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileDownloadFlag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v1, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v1}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileDownloadFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 8
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuid(Ljava/lang/String;)V

    .line 9
    sget v2, Lcom/tencent/imsdk/message/MessageBaseElement;->UUID_TYPE_FILE:I

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/DownloadParam;->setUuidType(I)V

    .line 10
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/FileElement;->getFileBusinessID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/message/DownloadParam;->setBusinessID(I)V

    .line 11
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMFileElem$5;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMFileElem$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMFileElem;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/MessageCenter;->getDownloadUrl(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2TIMFileElem--->"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sender local path:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file size:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->getFileSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
