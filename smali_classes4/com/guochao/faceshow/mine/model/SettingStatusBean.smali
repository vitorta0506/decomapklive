.class public Lcom/guochao/faceshow/mine/model/SettingStatusBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accountId:I

.field private isBlack:I

.field private isFriend:I

.field private isNotice:I

.field private isShow:I

.field private lvl:I

.field private setId:I

.field private stealth:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->accountId:I

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->lvl:I

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isBlack:I

    .line 6
    iput p4, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isNotice:I

    .line 7
    iput p5, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->stealth:I

    .line 8
    iput p6, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->setId:I

    .line 9
    iput p7, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->userId:I

    .line 10
    iput p8, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isShow:I

    .line 11
    iput p9, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isFriend:I

    return-void
.end method


# virtual methods
.method public getAccountId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->accountId:I

    return v0
.end method

.method public getIsBlack()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isBlack:I

    return v0
.end method

.method public getIsFriend()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isFriend:I

    return v0
.end method

.method public getIsNotice()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isNotice:I

    return v0
.end method

.method public getIsShow()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isShow:I

    return v0
.end method

.method public getLvl()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->lvl:I

    return v0
.end method

.method public getSetId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->setId:I

    return v0
.end method

.method public getStealth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->stealth:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->userId:I

    return v0
.end method

.method public setAccountId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->accountId:I

    return-void
.end method

.method public setIsBlack(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isBlack:I

    return-void
.end method

.method public setIsFriend(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isFriend:I

    return-void
.end method

.method public setIsNotice(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isNotice:I

    return-void
.end method

.method public setIsShow(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isShow:I

    return-void
.end method

.method public setLvl(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->lvl:I

    return-void
.end method

.method public setSetId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->setId:I

    return-void
.end method

.method public setStealth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->stealth:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingStatusBean{accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->accountId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lvl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->lvl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBlack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isBlack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isNotice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stealth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->stealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", setId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->setId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isShow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFriend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/mine/model/SettingStatusBean;->isFriend:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
