.class public Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;
.implements Lp7/i;


# instance fields
.field private account:I

.field private age:I

.field private avatar:Ljava/lang/String;

.field private blackList:I

.field private countryLogo:Ljava/lang/String;

.field private createTime:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;",
            ">;"
        }
    .end annotation
.end field

.field private img:Ljava/lang/String;

.field private isOnline:I

.field private isTutual:I

.field private levelId:I

.field private nickName:Ljava/lang/String;

.field private sex:I

.field private shieldCircle:I

.field private time:Ljava/lang/String;

.field private type:I

.field private userId:I

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->isOnline:I

    return-void
.end method


# virtual methods
.method public getAccount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->account:I

    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->age:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getBlackList()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->blackList:I

    return v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->sex:I

    return v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->images:Ljava/util/List;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOnline()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->isOnline:I

    return v0
.end method

.method public getIsTutual()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->isTutual:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->levelId:I

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->sex:I

    return v0
.end method

.method public getShieldCircle()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->shieldCircle:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->type:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->userId:I

    return v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method

.method public setAccount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->account:I

    return-void
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->age:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBlackList(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->blackList:I

    return-void
.end method

.method public setCountryLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->countryLogo:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->time:Ljava/lang/String;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->images:Ljava/util/List;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsOnline(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->isOnline:I

    return-void
.end method

.method public setIsTutual(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->isTutual:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->levelId:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->sex:I

    return-void
.end method

.method public setShieldCircle(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->shieldCircle:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->type:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->userId:I

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
