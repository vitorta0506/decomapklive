.class public Lcom/guochao/faceshow/aaspring/beans/DatingSquare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;


# instance fields
.field private age:I

.field private appoint_auth:I

.field private country:Ljava/lang/String;

.field private countryFlag:Ljava/lang/String;

.field private countryName:Ljava/lang/String;

.field private diamondNum:J

.field private gifUrl:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private liveData:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

.field private liveId:Ljava/lang/String;

.field private liveType:Ljava/lang/String;

.field private loadGif:Z

.field private nickName:Ljava/lang/String;

.field private onLineStatue:I

.field private preferentialLang:Ljava/lang/String;

.field private sex:I

.field private smallImg:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->userId:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->userId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->age:I

    return v0
.end method

.method public getAppointAuth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->appoint_auth:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getSmallImg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->countryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getDiamondNum()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->diamondNum:J

    return-wide v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->sex:I

    return v0
.end method

.method public getGifUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->gifUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->liveData:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->liveType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnLineStatue()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->onLineStatue:I

    return v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPreferentialLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->preferentialLang:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "en"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->preferentialLang:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->sex:I

    return v0
.end method

.method public getSmallImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->smallImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getVipInfo()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    return-object v0
.end method

.method public getVipInfo()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public isLoadGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->loadGif:Z

    return v0
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->age:I

    return-void
.end method

.method public setAppointAuth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->appoint_auth:I

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->countryFlag:Ljava/lang/String;

    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->countryName:Ljava/lang/String;

    return-void
.end method

.method public setDiamondNum(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->diamondNum:J

    return-void
.end method

.method public setGifUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->gifUrl:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->img:Ljava/lang/String;

    return-void
.end method

.method public setLiveData(Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->liveData:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLiveType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->liveType:Ljava/lang/String;

    return-void
.end method

.method public setLoadGif(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->loadGif:Z

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOnLineStatue(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->onLineStatue:I

    return-void
.end method

.method public setPreferentialLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->sex:I

    return-void
.end method

.method public setSmallImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->smallImg:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->userId:Ljava/lang/String;

    return-void
.end method
