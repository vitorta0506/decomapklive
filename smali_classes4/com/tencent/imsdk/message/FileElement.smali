.class public Lcom/tencent/imsdk/message/FileElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "SourceFile"


# instance fields
.field private fileBusinessID:I

.field private fileDownloadFlag:I

.field private fileDownloadUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileSize:I

.field private fileUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/MessageBaseElement;->setElementType(I)V

    return-void
.end method


# virtual methods
.method public getFileBusinessID()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileBusinessID:I

    return v0
.end method

.method public getFileDownloadFlag()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileDownloadFlag:I

    return v0
.end method

.method public getFileDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/FileElement;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileSize:I

    return v0
.end method

.method public getFileUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileUUID:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/FileElement;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/FileElement;->filePath:Ljava/lang/String;

    return-void
.end method

.method public update(Lcom/tencent/imsdk/message/MessageBaseElement;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/imsdk/message/MessageBaseElement;->elementType:I

    iget v1, p1, Lcom/tencent/imsdk/message/MessageBaseElement;->elementType:I

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Lcom/tencent/imsdk/message/FileElement;

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/message/FileElement;->filePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/imsdk/message/FileElement;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/tencent/imsdk/message/FileElement;->fileUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileUUID:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/tencent/imsdk/message/FileElement;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileName:Ljava/lang/String;

    .line 6
    iget v0, p1, Lcom/tencent/imsdk/message/FileElement;->fileSize:I

    iput v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileSize:I

    .line 7
    iget v0, p1, Lcom/tencent/imsdk/message/FileElement;->fileDownloadFlag:I

    iput v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileDownloadFlag:I

    .line 8
    iget-object v0, p1, Lcom/tencent/imsdk/message/FileElement;->fileDownloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/FileElement;->fileDownloadUrl:Ljava/lang/String;

    .line 9
    iget p1, p1, Lcom/tencent/imsdk/message/FileElement;->fileBusinessID:I

    iput p1, p0, Lcom/tencent/imsdk/message/FileElement;->fileBusinessID:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
