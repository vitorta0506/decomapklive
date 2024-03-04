.class public Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveGameRoundDetail"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backDiamond:I

.field private confDiamondNum:I

.field private countryLogo:Ljava/lang/String;

.field private diamond:I

.field private idx:I

.field private inputTime:J

.field private isInput:I

.field private logo:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private nowTime:J

.field private position:I

.field private sex:I

.field private userId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->logo:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->userId:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nickName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->idx:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->diamond:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->confDiamondNum:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->backDiamond:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->countryLogo:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->sex:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->position:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nowTime:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->inputTime:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->isInput:I

    return-void
.end method

.method public static fromLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->userId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->logo:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nickName:Ljava/lang/String;

    const/4 p0, 0x0

    .line 6
    iput p0, v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->idx:I

    return-object v0
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

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getBackDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->backDiamond:I

    return v0
.end method

.method public getConfDiamondNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->confDiamondNum:I

    return v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->userId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->diamond:I

    return v0
.end method

.method public getGameSeatCurrentPlayerPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getPosition()I

    move-result v0

    return v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->sex:I

    return v0
.end method

.method public getIdx()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->idx:I

    return v0
.end method

.method public getInputTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->inputTime:J

    return-wide v0
.end method

.method public getIsInput()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->isInput:I

    return v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->logo:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNowTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nowTime:J

    return-wide v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->position:I

    return v0
.end method

.method public getRemovePosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->idx:I

    return v0
.end method

.method public getRestActiveTime()J
    .locals 4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getNowTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getInputTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->sex:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->userId:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nickName:Ljava/lang/String;

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

.method public isActive()Z
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getIsInput()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->backDiamond:I

    return-void
.end method

.method public setConfDiamondNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->confDiamondNum:I

    return-void
.end method

.method public setCountryLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->countryLogo:Ljava/lang/String;

    return-void
.end method

.method public setDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->diamond:I

    return-void
.end method

.method public setGameSeatCurrentPlayerPosition(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setPosition(I)V

    return-void
.end method

.method public setIdx(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->idx:I

    return-void
.end method

.method public setInputTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->inputTime:J

    return-void
.end method

.method public setIsInput(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->isInput:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setNowTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nowTime:J

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->position:I

    return-void
.end method

.method public setRemovePosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->idx:I

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->sex:I

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->userId:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->idx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->diamond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->confDiamondNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->backDiamond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->sex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->nowTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->inputTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->isInput:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
