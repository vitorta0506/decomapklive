.class public Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private autoSyncVideoToDynamic:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private height:I

.field private imgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "imgUrl"
        }
        value = "img"
    .end annotation
.end field

.field private isPrivate:Ljava/lang/String;

.field private isSource:Ljava/lang/String;

.field private musicId:Ljava/lang/String;

.field private musicName:Ljava/lang/String;

.field private musicUrl:Ljava/lang/String;

.field private typeId:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "videoUrl"
        }
        value = "url"
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoSyncVideoToDynamic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->autoSyncVideoToDynamic:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->height:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPrivate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->isPrivate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->isSource:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->musicId:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->musicName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->musicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->width:I

    return v0
.end method

.method public setAutoSyncVideoToDynamic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->autoSyncVideoToDynamic:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->country:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->height:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsPrivate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->isPrivate:Ljava/lang/String;

    return-void
.end method

.method public setIsSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->isSource:Ljava/lang/String;

    return-void
.end method

.method public setMusicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->musicId:Ljava/lang/String;

    return-void
.end method

.method public setMusicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->musicName:Ljava/lang/String;

    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->musicUrl:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->typeId:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoInfo;->width:I

    return-void
.end method
