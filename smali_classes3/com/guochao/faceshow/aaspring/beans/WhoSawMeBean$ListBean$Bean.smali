.class public Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;
.implements Lp7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean$ImagePhotoWall;
    }
.end annotation


# instance fields
.field private age:I

.field private avatar:Ljava/lang/String;

.field private createTime:J

.field private gaussImg:Ljava/lang/String;

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

.field private isAttention:I

.field private level:I

.field private logo:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private sex:I

.field private signature:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainFromFriendRequest(Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getIsTutual()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->isAttention:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getImg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->img:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getImages()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->images:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->level:I

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->nickName:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getSex()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->sex:I

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->logo:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->avatar:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getAccount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userId:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getAge()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->age:I

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public static obtainFromImUser(Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getIsTutual()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->isAttention:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getImg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->img:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;->getImages()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->images:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/PeopleNearByBean$PeopleNearByUser;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->level:I

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->nickName:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getSex()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->sex:I

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getLogo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->logo:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->avatar:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userId:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getAge()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->age:I

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getSignature()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->signature:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->age:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->createTime:J

    return-wide v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGaussImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->gaussImg:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->sex:I

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->images:Ljava/util/List;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAttention()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->isAttention:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->level:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->logo:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->sex:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->signature:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userId:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

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

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->age:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->createTime:J

    return-void
.end method

.method public setGaussImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->gaussImg:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->images:Ljava/util/List;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsAttention(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->isAttention:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->level:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->sex:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
