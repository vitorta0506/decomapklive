.class public Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkList:Ljava/lang/String;

.field private createId:I

.field private createTime:Ljava/lang/String;

.field private id:I

.field private outTime:Ljava/lang/String;

.field private outUserId:I

.field private reasonRemark:Ljava/lang/String;

.field private reasonType:I

.field private securityKey:Ljava/lang/String;

.field private securityResult:I

.field private securityType:I

.field private status:I

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->id:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->userId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityType:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityKey:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityResult:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->reasonType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->reasonRemark:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->checkList:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->status:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->createTime:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->createId:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->outTime:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->outUserId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->checkList:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->createId:I

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->id:I

    return v0
.end method

.method public getOutTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->outTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOutUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->outUserId:I

    return v0
.end method

.method public getReasonRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->reasonRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->reasonType:I

    return v0
.end method

.method public getSecurityKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityResult()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityResult:I

    return v0
.end method

.method public getSecurityType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->status:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->userId:I

    return v0
.end method

.method public setCheckList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->checkList:Ljava/lang/String;

    return-void
.end method

.method public setCreateId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->createId:I

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->id:I

    return-void
.end method

.method public setOutTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->outTime:Ljava/lang/String;

    return-void
.end method

.method public setOutUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->outUserId:I

    return-void
.end method

.method public setReasonRemark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->reasonRemark:Ljava/lang/String;

    return-void
.end method

.method public setReasonType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->reasonType:I

    return-void
.end method

.method public setSecurityKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityKey:Ljava/lang/String;

    return-void
.end method

.method public setSecurityResult(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityResult:I

    return-void
.end method

.method public setSecurityType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityType:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->status:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->userId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->securityResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->reasonType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->reasonRemark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->checkList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->createTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->createId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->outTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->outUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
