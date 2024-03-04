.class public Lcom/guochao/faceshow/bean/FollowBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/bean/FollowBean$LiveData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/bean/FollowBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private account:I

.field private age:I

.field private attention_id:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private black_list:I

.field private countryId:I

.field private create_time:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private transient isOtherFollowedYou:Z

.field private is_attention:I

.field private is_tutual:I

.field private leveId:I

.field public liveData:Lcom/guochao/faceshow/bean/FollowBean$LiveData;

.field private logo:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private selected:Z

.field private sex:I

.field private shield_circle:I

.field private signature:Ljava/lang/String;

.field private start_live_push:I

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private user_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/bean/FollowBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/FollowBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/bean/FollowBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->isOtherFollowedYou:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->selected:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->isOtherFollowedYou:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->selected:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setIs_tutual(I)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setIs_attention(I)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setAttention_id(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setCreate_time(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setUser_id(I)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setBlack_list(I)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setSignature(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setSex(I)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setNick_name(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setShield_circle(I)V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/bean/FollowBean;->setAccount(I)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/bean/FollowBean;->setSelected(Z)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/bean/FollowBean;->setAvatar(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/bean/FollowBean;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/guochao/faceshow/bean/FollowBean;

    .line 3
    iget p1, p1, Lcom/guochao/faceshow/bean/FollowBean;->user_id:I

    iget v2, p0, Lcom/guochao/faceshow/bean/FollowBean;->user_id:I

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getAccount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->account:I

    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->age:I

    return v0
.end method

.method public getAttention_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->attention_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getBlack_list()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->black_list:I

    return v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->countryId:I

    return v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->account:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->sex:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_attention()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->is_attention:I

    return v0
.end method

.method public getIs_tutual()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->is_tutual:I

    return v0
.end method

.method public getLeveId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->leveId:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->leveId:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->sex:I

    return v0
.end method

.method public getShield_circle()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->shield_circle:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->signature:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getStartLivePush()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->start_live_push:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getUser_id()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->user_id:I

    return v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getUser_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOtherFollowedYou()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->isOtherFollowedYou:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->selected:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/bean/FollowBean;->selected:Z

    return v0
.end method

.method public setAccount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->account:I

    return-void
.end method

.method public setAttention_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->attention_id:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBlack_list(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->black_list:I

    return-void
.end method

.method public setCountryId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->countryId:I

    return-void
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->create_time:Ljava/lang/String;

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->distance:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIs_attention(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->is_attention:I

    return-void
.end method

.method public setIs_tutual(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->is_tutual:I

    return-void
.end method

.method public setLeveId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->leveId:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public setOtherFollowedYou(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->isOtherFollowedYou:Z

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->selected:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->selected:Z

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->sex:I

    return-void
.end method

.method public setShield_circle(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->shield_circle:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->signature:Ljava/lang/String;

    return-void
.end method

.method public setStartLivePush(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->start_live_push:I

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/FollowBean;->user_id:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getIs_tutual()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getIs_attention()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getAttention_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getCreate_time()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getUser_id()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getBlack_list()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getSex()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getNick_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getShield_circle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getAccount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/FollowBean;->getAvatar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
