.class public Lcom/guochao/faceshow/aaspring/beans/DressUpData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static BE_FROM_MVP:I = 0x7


# instance fields
.field private arFileUrl:Ljava/lang/String;

.field private arFileUrlV2:Ljava/lang/String;

.field private arThumbnailImage:Ljava/lang/String;

.field private bagAttribute:Ljava/lang/Integer;

.field public beFrom:I

.field private canItBeUsed:I

.field private dressUpId:Ljava/lang/String;

.field private expireTime:J

.field private fileUrl:Ljava/lang/String;

.field private fileUrlV2:Ljava/lang/String;

.field public id:I

.field private introduction:Ljava/lang/String;

.field private isCheck:Z

.field private isUse:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "use"
        }
        value = "isUse"
    .end annotation
.end field

.field private isVip:Ljava/lang/String;

.field private itemType:I

.field private module:I

.field public mvpId:I

.field public mvpUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private preferentialLang:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field public received:I

.field private selected:Z

.field private spNum:I

.field private thumbnailImage:Ljava/lang/String;

.field private titleName:Ljava/lang/String;

.field private types:I

.field private url:Ljava/lang/String;

.field public valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;)Lcom/guochao/faceshow/aaspring/beans/DressUpData;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getUsed()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isUse:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getExpireTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->expireTime:J

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->dressUpId:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->url:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v1

    const v2, 0x7f120648

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->name:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->types:I

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->canItBeUsed:I

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getValid()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->valid:I

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->mvpId:I

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getReceived()I

    move-result p0

    iput p0, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->received:I

    return-object v0
.end method


# virtual methods
.method public getArFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->arFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArFileUrlV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->arFileUrlV2:Ljava/lang/String;

    return-object v0
.end method

.method public getArThumbnailImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->arThumbnailImage:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->bagAttribute:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCanItBeUsed()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->canItBeUsed:I

    return v0
.end method

.method public getDressUpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->dressUpId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->expireTime:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrlV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->fileUrlV2:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUse()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isUse:I

    return v0
.end method

.method public getIsVip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isVip:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->itemType:I

    return v0
.end method

.method public getModule()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->module:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getPreferentialLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->preferentialLang:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSpNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->spNum:I

    return v0
.end method

.method public getThumbnailImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->thumbnailImage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->types:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->selected:Z

    return v0
.end method

.method public setArFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->arFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setArFileUrlV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->arFileUrlV2:Ljava/lang/String;

    return-void
.end method

.method public setArThumbnailImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->arThumbnailImage:Ljava/lang/String;

    return-void
.end method

.method public setBagAttribute(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->bagAttribute:Ljava/lang/Integer;

    return-void
.end method

.method public setCanItBeUsed(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->canItBeUsed:I

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck:Z

    return-void
.end method

.method public setDressUpId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->dressUpId:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->expireTime:J

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileUrlV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->fileUrlV2:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setIsUse(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isUse:I

    return-void
.end method

.method public setIsVip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isVip:Ljava/lang/String;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->itemType:I

    return-void
.end method

.method public setModule(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->module:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->name:Ljava/lang/String;

    return-void
.end method

.method public setPreferentialLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->priority:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->selected:Z

    return-void
.end method

.method public setSpNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->spNum:I

    return-void
.end method

.method public setThumbnailImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->thumbnailImage:Ljava/lang/String;

    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->titleName:Ljava/lang/String;

    return-void
.end method

.method public setTypes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->types:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->url:Ljava/lang/String;

    return-void
.end method
