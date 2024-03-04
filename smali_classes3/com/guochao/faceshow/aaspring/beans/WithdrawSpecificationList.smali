.class public Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isOnlyFirst:I

.field private priority:I

.field private ruleId:Ljava/lang/String;

.field private withdrawMoeny:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->withdrawMoeny:I

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->isOnlyFirst:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->ruleId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->withdrawMoeny:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->priority:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->isOnlyFirst:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsOnlyFirst()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->isOnlyFirst:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->priority:I

    return v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->ruleId:Ljava/lang/String;

    return-object v0
.end method

.method public getWithdrawMoeny()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->withdrawMoeny:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->ruleId:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->withdrawMoeny:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->priority:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->isOnlyFirst:I

    return-void
.end method

.method public setIsOnlyFirst(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->isOnlyFirst:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->priority:I

    return-void
.end method

.method public setRuleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->ruleId:Ljava/lang/String;

    return-void
.end method

.method public setWithdrawMoeny(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->withdrawMoeny:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->ruleId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->withdrawMoeny:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->isOnlyFirst:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
