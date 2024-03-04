.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lp7/h;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatar:Ljava/lang/String;

.field private bestLuck:I

.field private happyMoney:Ljava/lang/Float;

.field private money:Ljava/lang/String;

.field private userCountryFlag:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userNickName:Ljava/lang/String;

.field private userSex:I

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->bestLuck:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->bestLuck:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userCountryFlag:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userSex:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userImg:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->money:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userNickName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->avatar:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->happyMoney:Ljava/lang/Float;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->bestLuck:I

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getUserImg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBestLuck()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->bestLuck:I

    return v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getUserCountryFlag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userSex:I

    return v0
.end method

.method public getHappyMoney()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->happyMoney:Ljava/lang/Float;

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

.method public getMoney()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userImg:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userSex:I

    return v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBestLuck(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->bestLuck:I

    return-void
.end method

.method public setHappyMoney(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->happyMoney:Ljava/lang/Float;

    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->money:Ljava/lang/String;

    return-void
.end method

.method public setUserCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userCountryFlag:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userNickName:Ljava/lang/String;

    return-void
.end method

.method public setUserSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userSex:I

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userCountryFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userSex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->money:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userNickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->happyMoney:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->bestLuck:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
