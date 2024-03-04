.class public Lcom/guochao/faceshow/bean/UserBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/a;
.implements Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;
.implements Landroid/os/Parcelable;
.implements Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;
.implements Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;,
        Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;,
        Lcom/guochao/faceshow/bean/UserBean$UserSet;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;"
        }
    .end annotation
.end field

.field public static isFirstRegist:Z = false


# instance fields
.field public address:Ljava/lang/String;

.field public anchorNo:Ljava/lang/String;

.field private appointState:I

.field public avatar:Ljava/lang/String;

.field public balance:F

.field private bindMobileLimit:I

.field private birthdayStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "birthday"
        }
        value = "birthdayStr"
    .end annotation
.end field

.field private channel:Ljava/lang/String;

.field public charmValues:Ljava/lang/String;

.field public cityId:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public countryFlag:Ljava/lang/String;

.field public countryId:I

.field public del:I

.field private downloadlink:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field private exposureEndTime:J

.field private freezeName:Ljava/lang/String;

.field public hobbys:Ljava/lang/String;

.field private idx:I

.field public img:Ljava/lang/String;

.field public intro:Ljava/lang/String;

.field public isAnchor:I

.field private isExposuring:I

.field private isInvited:I

.field private isNewUser:I

.field private isOpenTurnTable:I

.field private isSelect:Z

.field private isUpdate:I

.field public job:Ljava/lang/String;

.field private keyPadToneSwitch:I

.field private lastTime:Ljava/lang/String;

.field public levelId:I

.field public logoutStatus:I

.field public mobile:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public payPassword:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public qrCode:Ljava/lang/String;

.field private recharged:I

.field private regType:I

.field private restCount:I

.field private riskLevel:I

.field public sex:I

.field public signature:Ljava/lang/String;

.field private smallImg:Ljava/lang/String;

.field public statues:I

.field public stature:Ljava/lang/String;

.field public tencentSignature:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field private unfreezeTime:Ljava/lang/String;

.field private updateCopywriting:Ljava/lang/String;

.field private userAge:I

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "id"
        }
        value = "userId"
    .end annotation
.end field

.field public userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

.field private userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

.field public userName:Ljava/lang/String;

.field public userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private videoBarrageSwitch:I

.field public weight:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/bean/UserBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/bean/UserBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->appointState:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->appointState:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->pwd:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->statues:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->balance:F

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->qrCode:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->intro:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->cityId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->address:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->type:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->del:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->countryId:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->charmValues:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isAnchor:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->anchorNo:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->job:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->weight:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->stature:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->hobbys:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->payPassword:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/guochao/faceshow/bean/UserBean$UserSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    .line 34
    const-class v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->birthdayStr:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->unfreezeTime:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->freezeName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isUpdate:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->downloadlink:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->updateCopywriting:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->keyPadToneSwitch:I

    .line 43
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isNewUser:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isOpenTurnTable:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->smallImg:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->recharged:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->channel:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/bean/UserBean;->exposureEndTime:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isExposuring:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->restCount:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userAge:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->regType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->logoutStatus:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->riskLevel:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->bindMobileLimit:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->lastTime:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->appointState:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isInvited:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->videoBarrageSwitch:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isSelect:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean;->idx:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 64
    const-class v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getUserAge()I

    move-result v0

    return v0
.end method

.method public getAppointState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->appointState:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarThumb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBindMobileLimit()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->bindMobileLimit:I

    return v0
.end method

.method public getBirthdayStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->birthdayStr:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadlink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->downloadlink:Ljava/lang/String;

    return-object v0
.end method

.method public getExposureEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/bean/UserBean;->exposureEndTime:J

    return-wide v0
.end method

.method public getFreezeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->freezeName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getGameSeatCurrentPlayerPosition()I
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)I

    move-result v0

    return v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    return v0
.end method

.method public bridge synthetic getHostCertificationUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->a(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsExposuring()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isExposuring:I

    return v0
.end method

.method public getIsInvited()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isInvited:I

    return v0
.end method

.method public getIsNewUser()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isNewUser:I

    return v0
.end method

.method public getIsOpenTurnTable()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isOpenTurnTable:I

    return v0
.end method

.method public getIsUpdate()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isUpdate:I

    return v0
.end method

.method public getKeyPadToneSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->keyPadToneSwitch:I

    return v0
.end method

.method public getLastTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    return v0
.end method

.method public getLogoutStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->logoutStatus:I

    return v0
.end method

.method public getMVPUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferentialLang()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/utils/TranslateUtils;->getPhoneLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecharged()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->recharged:I

    return v0
.end method

.method public getRegType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->regType:I

    return v0
.end method

.method public getRemovePosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->idx:I

    return v0
.end method

.method public bridge synthetic getRestActiveTime()J
    .locals 2

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRestCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->restCount:I

    return v0
.end method

.method public getRiskLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->riskLevel:I

    return v0
.end method

.method public bridge synthetic getSended()I
    .locals 1

    invoke-static {p0}, Lb8/f;->b(Lb8/g;)I

    move-result v0

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->smallImg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->statues:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUnfreezeTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->unfreezeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateCopywriting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->updateCopywriting:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userAge:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVideoBarrageSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->videoBarrageSwitch:I

    return v0
.end method

.method public bridge synthetic getVipAvatarPendentId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->c(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipAvatarPendentType()I
    .locals 1

    invoke-static {p0}, Lb8/f;->d(Lb8/g;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVipAvatarPendentUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->e(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressCarId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->f(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressCarUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->g(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressCarUrlV2()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->h(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressChatUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->i(Lb8/g;)Ljava/lang/String;

    move-result-object v0

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

.method public getVipLevel()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic isActive()Z
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)Z

    move-result v0

    return v0
.end method

.method public isMVPDanmuOn()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->dmSwitch:I

    sget v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->MVP_DANMU_ON:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMvp()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvp:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMvpGift()Z
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->giftSwitch:I

    if-ne v2, v1, :cond_0

    invoke-static {v0}, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->access$000(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRealMvp()Z
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvp:I

    if-ne v2, v1, :cond_0

    invoke-static {v0}, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->access$000(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isSelect:Z

    return v0
.end method

.method public bridge synthetic isVip()Z
    .locals 1

    invoke-static {p0}, Lb8/f;->k(Lb8/g;)Z

    move-result v0

    return v0
.end method

.method public setAppointState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->appointState:I

    return-void
.end method

.method public setBindMobileLimit(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->bindMobileLimit:I

    return-void
.end method

.method public setBirthdayStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->birthdayStr:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->channel:Ljava/lang/String;

    return-void
.end method

.method public setDownloadlink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->downloadlink:Ljava/lang/String;

    return-void
.end method

.method public setExposureEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/bean/UserBean;->exposureEndTime:J

    return-void
.end method

.method public setFreezeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->freezeName:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setGameSeatCurrentPlayerPosition(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;I)V

    return-void
.end method

.method public setGender(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    return-void
.end method

.method public setIsExposuring(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->isExposuring:I

    return-void
.end method

.method public setIsInvited(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->isInvited:I

    return-void
.end method

.method public setIsNewUser(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->isNewUser:I

    return-void
.end method

.method public setIsOpenTurnTable(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->isOpenTurnTable:I

    return-void
.end method

.method public setIsUpdate(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->isUpdate:I

    return-void
.end method

.method public setKeyPadToneSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->keyPadToneSwitch:I

    return-void
.end method

.method public setLastTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->lastTime:Ljava/lang/String;

    return-void
.end method

.method public setLogoutStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->logoutStatus:I

    return-void
.end method

.method public setPendantUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setRecharged(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->recharged:I

    return-void
.end method

.method public setRegType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->regType:I

    return-void
.end method

.method public setRemovePosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->idx:I

    return-void
.end method

.method public setRestCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->restCount:I

    return-void
.end method

.method public setRiskLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->riskLevel:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/bean/UserBean;->isSelect:Z

    return-void
.end method

.method public setSmallImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->smallImg:Ljava/lang/String;

    return-void
.end method

.method public setUnfreezeTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->unfreezeTime:Ljava/lang/String;

    return-void
.end method

.method public setUpdateCopywriting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->updateCopywriting:Ljava/lang/String;

    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->userAge:I

    return-void
.end method

.method public setUserMvpInfo(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/UserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVideoBarrageSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean;->videoBarrageSwitch:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->pwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->statues:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->balance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->qrCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->intro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->cityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->del:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->countryId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->charmValues:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isAnchor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->anchorNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->job:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->weight:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->stature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->hobbys:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->payPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->birthdayStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->unfreezeTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->freezeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->downloadlink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->updateCopywriting:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->keyPadToneSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isNewUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isOpenTurnTable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->smallImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->recharged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->channel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-wide v0, p0, Lcom/guochao/faceshow/bean/UserBean;->exposureEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isExposuring:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->restCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userAge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->regType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->logoutStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->riskLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->bindMobileLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->lastTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->appointState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isInvited:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->videoBarrageSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-boolean v0, p0, Lcom/guochao/faceshow/bean/UserBean;->isSelect:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean;->idx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserBean;->userMvpInfo:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
