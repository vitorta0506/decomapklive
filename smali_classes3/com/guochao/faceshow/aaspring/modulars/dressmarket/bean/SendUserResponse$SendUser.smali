.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;
.implements Lp7/i;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendUser"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:I

.field private countryLogo:Ljava/lang/String;

.field private isSelect:Z

.field private logo:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private sex:I

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->sex:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->age:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->nickName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->countryLogo:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->logo:Ljava/lang/String;

    .line 9
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public static obtain(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userId:Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserSex()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->sex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getAge()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->age:I

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->nickName:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->countryLogo:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserImg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->logo:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isSelect()Z

    move-result p0

    iput-boolean p0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->isSelect:Z

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->age:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->sex:I

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->logo:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->sex:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

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

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->isSelect:Z

    return v0
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->age:I

    return-void
.end method

.method public setCountryLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->countryLogo:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->isSelect:Z

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->sex:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->sex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->age:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
