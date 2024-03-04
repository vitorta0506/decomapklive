.class public Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;


# instance fields
.field private account:Ljava/lang/String;

.field private accountId:Ljava/lang/String;

.field private age:I

.field private appLanguage:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private countryFlag:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private isVip:I

.field private last_time:Ljava/lang/String;

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nick_name"
    .end annotation
.end field

.field private selected:Z

.field private sex:I

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->selected:Z

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->age:I

    return v0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->appLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->countryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsVip()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->isVip:I

    return v0
.end method

.method public getLast_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->last_time:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->sex:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVipInfo()Lb8/g;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->selected:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->account:Ljava/lang/String;

    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->age:I

    return-void
.end method

.method public setAppLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->appLanguage:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->countryFlag:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsVip(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->isVip:I

    return-void
.end method

.method public setLast_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->last_time:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->selected:Z

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->sex:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
