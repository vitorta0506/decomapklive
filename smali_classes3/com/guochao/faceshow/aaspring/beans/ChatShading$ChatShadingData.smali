.class public Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/ChatShading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatShadingData"
.end annotation


# instance fields
.field private dressUpId:Ljava/lang/String;

.field private expireTime:J

.field private fileUrl:Ljava/lang/String;

.field private fontColor:Ljava/lang/String;

.field private introduction:Ljava/lang/String;

.field private isCheck:Z

.field private isClick:Z

.field private isUse:I

.field private isVip:Ljava/lang/String;

.field private itemType:I

.field private name:Ljava/lang/String;

.field private shadingImage:Ljava/lang/String;

.field private thumbnailImage:Ljava/lang/String;

.field private titleName:Ljava/lang/String;

.field private types:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDressUpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->dressUpId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->expireTime:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->fontColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUse()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->isUse:I

    return v0
.end method

.method public getIsVip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->isVip:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->itemType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShadingImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->shadingImage:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->thumbnailImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->types:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->isCheck:Z

    return v0
.end method

.method public isClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->isClick:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->isCheck:Z

    return-void
.end method

.method public setClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->isClick:Z

    return-void
.end method

.method public setDressUpId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->dressUpId:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->expireTime:J

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setFontColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->fontColor:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setIsUse(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->isUse:I

    return-void
.end method

.method public setIsVip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->isVip:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->itemType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->name:Ljava/lang/String;

    return-void
.end method

.method public setShadingImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->shadingImage:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->thumbnailImage:Ljava/lang/String;

    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->titleName:Ljava/lang/String;

    return-void
.end method

.method public setTypes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->types:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatShading$ChatShadingData;->userId:Ljava/lang/String;

    return-void
.end method
