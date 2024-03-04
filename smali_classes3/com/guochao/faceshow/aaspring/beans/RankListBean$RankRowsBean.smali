.class public Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lp7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/RankListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankRowsBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private charmValue:I

.field private country:Ljava/lang/String;

.field private flvUrl:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private isAttention:I

.field private isLive:I

.field private isVip:I

.field private levelName:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private liveImg:Ljava/lang/String;

.field private liveType:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private no:I

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userSex:I

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isAttention:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->no:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->country:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userImg:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isLive:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->nickName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->logo:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->levelName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->charmValue:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userId:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->value:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isVip:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->flvUrl:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->groupId:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveType:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userSex:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveImg:Ljava/lang/String;

    .line 21
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getCharmValue()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->charmValue:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFlvUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->flvUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userSex:I

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAttention()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isAttention:I

    return v0
.end method

.method public getIsLive()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isLive:I

    return v0
.end method

.method public getIsVip()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isVip:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->no:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userSex:I

    return v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCharmValue(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->charmValue:I

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setFlvUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->flvUrl:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setIsAttention(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isAttention:I

    return-void
.end method

.method public setIsLive(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isLive:I

    return-void
.end method

.method public setIsVip(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isVip:I

    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->levelName:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLiveImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveImg:Ljava/lang/String;

    return-void
.end method

.method public setLiveType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveType:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setNo(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->no:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userSex:I

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->value:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isAttention:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->no:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isLive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->charmValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->isVip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->flvUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userSex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->liveImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
