.class public Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aid:I

.field private amount:Ljava/lang/String;

.field private amount_type:I

.field private applayTime:J

.field private pay_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->aid:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->amount:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->amount_type:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->applayTime:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->pay_type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAid()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->aid:I

    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount_type()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->amount_type:I

    return v0
.end method

.method public getApplayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->applayTime:J

    return-wide v0
.end method

.method public getPay_type()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->pay_type:I

    return v0
.end method

.method public setAid(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->aid:I

    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->amount:Ljava/lang/String;

    return-void
.end method

.method public setAmount_type(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->amount_type:I

    return-void
.end method

.method public setApplayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->applayTime:J

    return-void
.end method

.method public setPay_type(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->pay_type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->aid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->amount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->amount_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->applayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->pay_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
