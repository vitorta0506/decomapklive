.class public Lcom/guochao/faceshow/aaspring/beans/DataAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/DataAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private applyState:I

.field private applyTime:Ljava/lang/String;

.field private appointAuth:I

.field private appointState:I

.field private dateLang:Ljava/lang/String;

.field private gifUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/DataAuth$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/DataAuth$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->userId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->applyTime:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->applyState:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->appointState:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->dateLang:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->appointAuth:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->gifUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplyState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->applyState:I

    return v0
.end method

.method public getApplyTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->applyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getAppointAuth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->appointAuth:I

    return v0
.end method

.method public getAppointState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->appointState:I

    return v0
.end method

.method public getDateLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->dateLang:Ljava/lang/String;

    return-object v0
.end method

.method public getGifUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->gifUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setApplyState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->applyState:I

    return-void
.end method

.method public setApplyTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->applyTime:Ljava/lang/String;

    return-void
.end method

.method public setAppointAuth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->appointAuth:I

    return-void
.end method

.method public setAppointState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->appointState:I

    return-void
.end method

.method public setDateLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->dateLang:Ljava/lang/String;

    return-void
.end method

.method public setGifUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->gifUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->userId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->applyTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->applyState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->appointState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->dateLang:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->appointAuth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->gifUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
