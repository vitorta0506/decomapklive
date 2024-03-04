.class public Lcom/guochao/faceshow/aaspring/beans/SetInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public animal:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private birthdayUpdate:I

.field private career:Ljava/lang/String;

.field private company:Ljava/lang/String;

.field public constellation:Ljava/lang/String;

.field private emotions:Ljava/lang/String;

.field private hobby:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private imgHomePageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;"
        }
    .end annotation
.end field

.field private industry:Ljava/lang/String;

.field private languages:Ljava/lang/String;

.field private makeFriends:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private nowAddress:Ljava/lang/String;

.field private sex:I

.field private sexUpdate:I

.field private signature:Ljava/lang/String;

.field private stature:Ljava/lang/String;

.field private userId:I

.field private weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->animal:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthdayUpdate()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->birthdayUpdate:I

    return v0
.end method

.method public getCareer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->career:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getConstellation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->constellation:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->emotions:Ljava/lang/String;

    return-object v0
.end method

.method public getHobby()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->hobby:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getImgHomePageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->imgHomePageList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->imgHomePageList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->imgHomePageList:Ljava/util/List;

    return-object v0
.end method

.method public getIndustry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->industry:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguages()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->languages:Ljava/lang/String;

    return-object v0
.end method

.method public getMakeFriends()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->makeFriends:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNowAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->nowAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->sex:I

    return v0
.end method

.method public getSexUpdate()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->sexUpdate:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->signature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1209bc

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getStature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->stature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->userId:I

    return v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->animal:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setBirthdayUpdate(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->birthdayUpdate:I

    return-void
.end method

.method public setCareer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->career:Ljava/lang/String;

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->company:Ljava/lang/String;

    return-void
.end method

.method public setConstellation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->constellation:Ljava/lang/String;

    return-void
.end method

.method public setEmotions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->emotions:Ljava/lang/String;

    return-void
.end method

.method public setHobby(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->hobby:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->img:Ljava/lang/String;

    return-void
.end method

.method public setImgHomePageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->imgHomePageList:Ljava/util/List;

    return-void
.end method

.method public setIndustry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->industry:Ljava/lang/String;

    return-void
.end method

.method public setLanguages(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->languages:Ljava/lang/String;

    return-void
.end method

.method public setMakeFriends(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->makeFriends:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setNowAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->nowAddress:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->sex:I

    return-void
.end method

.method public setSexUpdate(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->sexUpdate:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->signature:Ljava/lang/String;

    return-void
.end method

.method public setStature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->stature:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->userId:I

    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;->weight:Ljava/lang/String;

    return-void
.end method
