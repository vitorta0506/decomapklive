.class public Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatar:Ljava/lang/String;

.field private birthdayTime:J

.field private contributionImg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;",
            ">;"
        }
    .end annotation
.end field

.field private diamond:I

.field private fansNum:I

.field private followNum:I

.field private friendLikeNum:I

.field private friendNewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation
.end field

.field private isLookMe:Ljava/lang/Integer;

.field private levelId:I

.field private liveState:I

.field private userAge:I

.field private userAttentStatus:Ljava/lang/String;

.field private userCountryFlag:Ljava/lang/String;

.field private userId:I

.field private userImg:Ljava/lang/String;

.field private userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

.field private userNickName:Ljava/lang/String;

.field private userSex:I

.field private userSignIn:Ljava/lang/Integer;

.field private userSignature:Ljava/lang/String;

.field private userSmallImg:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private vipContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userNickName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userImg:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userAge:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSex:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSignature:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userCountryFlag:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userAttentStatus:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->avatar:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->liveState:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->levelId:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->birthdayTime:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->followNum:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->fansNum:I

    .line 17
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->contributionImg:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->friendNewList:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->friendLikeNum:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->diamond:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSmallImg:Ljava/lang/String;

    .line 22
    const-class v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAge()I
    .locals 1

    invoke-static {p0}, Lp7/a;->a(Lp7/b;)I

    move-result v0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthdayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->birthdayTime:J

    return-wide v0
.end method

.method public getContributionImg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->contributionImg:Ljava/util/List;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->diamond:I

    return v0
.end method

.method public getFansNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->fansNum:I

    return v0
.end method

.method public getFollowNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->followNum:I

    return v0
.end method

.method public getFriendLikeNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->friendLikeNum:I

    return v0
.end method

.method public getFriendNewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->friendNewList:Ljava/util/List;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSex:I

    return v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public getLevelId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->levelId:I

    return v0
.end method

.method public getLiveState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->liveState:I

    return v0
.end method

.method public getLookMeNum()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->isLookMe:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userAge:I

    return v0
.end method

.method public getUserAttentStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userAttentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userId:I

    return v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSex:I

    return v0
.end method

.method public getUserSignIn()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSignIn:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSmallImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSmallImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVipContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->vipContent:Ljava/lang/String;

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

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBirthdayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->birthdayTime:J

    return-void
.end method

.method public setContributionImg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->contributionImg:Ljava/util/List;

    return-void
.end method

.method public setDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->diamond:I

    return-void
.end method

.method public setFansNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->fansNum:I

    return-void
.end method

.method public setFollowNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->followNum:I

    return-void
.end method

.method public setFriendLikeNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->friendLikeNum:I

    return-void
.end method

.method public setFriendNewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->friendNewList:Ljava/util/List;

    return-void
.end method

.method public setLevelId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->levelId:I

    return-void
.end method

.method public setLiveState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->liveState:I

    return-void
.end method

.method public setLookMeNum(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->isLookMe:Ljava/lang/Integer;

    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userAge:I

    return-void
.end method

.method public setUserAttentStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userAttentStatus:Ljava/lang/String;

    return-void
.end method

.method public setUserCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userCountryFlag:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userId:I

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserMvpInfo(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-void
.end method

.method public setUserNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userNickName:Ljava/lang/String;

    return-void
.end method

.method public setUserSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSex:I

    return-void
.end method

.method public setUserSignIn(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSignIn:Ljava/lang/Integer;

    return-void
.end method

.method public setUserSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSignature:Ljava/lang/String;

    return-void
.end method

.method public setUserSmallImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSmallImg:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVipContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->vipContent:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userAge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userCountryFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userAttentStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->liveState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->levelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->birthdayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->followNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->fansNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->contributionImg:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->friendNewList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 17
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->friendLikeNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->diamond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userSmallImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
