.class public Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private email:Ljava/lang/String;

.field private json:Ljava/lang/String;

.field private reg:I

.field private uid:Ljava/lang/String;

.field private unionid:Ljava/lang/String;

.field private user:Lcom/guochao/faceshow/bean/UserBean;

.field private userInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->reg:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->uid:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->json:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->unionid:Ljava/lang/String;

    .line 7
    const-class v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->user:Lcom/guochao/faceshow/bean/UserBean;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->email:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/guochao/faceshow/bean/UserBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->userInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getReg()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->reg:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->unionid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/guochao/faceshow/bean/UserBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->user:Lcom/guochao/faceshow/bean/UserBean;

    return-object v0
.end method

.method public getUserInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->userInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->email:Ljava/lang/String;

    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->json:Ljava/lang/String;

    return-void
.end method

.method public setReg(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->reg:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUnionid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->unionid:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->user:Lcom/guochao/faceshow/bean/UserBean;

    return-void
.end method

.method public setUserInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->userInfoList:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->reg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->json:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->unionid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->user:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->userInfoList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
