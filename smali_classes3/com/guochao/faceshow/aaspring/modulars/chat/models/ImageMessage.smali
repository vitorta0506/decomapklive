.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageMessage"


# instance fields
.field public mOriginalDownloadSuccess:Z

.field public mThumbnailDownloadSuccess:Z


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mThumbnailDownloadSuccess:Z

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mOriginalDownloadSuccess:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createImageMessage(Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mThumbnailDownloadSuccess:Z

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mOriginalDownloadSuccess:Z

    return-void
.end method

.method private getFile(I)Ljava/io/File;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getType()I

    move-result v0

    const-string v1, "."

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    if-eq p1, v2, :cond_5

    const-string v1, "original"

    goto :goto_1

    :cond_5
    const-string v1, "large"

    goto :goto_1

    :cond_6
    const-string v1, "thumb"

    .line 8
    :goto_1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getTIMImage(I)Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_7
    new-instance p1, Ljava/io/File;

    const-string v2, "image"

    invoke-virtual {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/MediaMessage;->getBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 11
    :cond_8
    :goto_2
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private getTIMImage(I)Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBigPhotoImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getTIMImage(I)Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    return-object v0
.end method

.method public getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public getOriginalFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOrignalImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getTIMImage(I)Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object v0

    return-object v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getRevokeSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTransformedOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f1208a8

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTransformedOtherLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_image"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->MESSAGE_TIPS_MULTI_LANGUAGE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailFile()Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailFileTemp()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getThumbnailImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getTIMImage(I)Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getTIMImage(I)Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
