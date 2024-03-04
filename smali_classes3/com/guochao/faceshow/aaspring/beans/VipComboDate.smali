.class public Lcom/guochao/faceshow/aaspring/beans/VipComboDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/guochao/faceshow/aaspring/beans/VipComboDate;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/VipComboDate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actrualPrice:Ljava/lang/String;

.field private actrualUnitPrice:Ljava/lang/String;

.field private comboName:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isDiscount:I

.field private model:I

.field private show:I

.field private terminal:I

.field private totalPrice:Ljava/lang/String;

.field private unit:I

.field private unitPrice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/VipComboDate$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->id:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unit:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->duration:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unitPrice:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->totalPrice:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualPrice:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualUnitPrice:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->isDiscount:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->model:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->terminal:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->comboName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->show:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/guochao/faceshow/aaspring/beans/VipComboDate;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->getShow()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->getShow()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->compareTo(Lcom/guochao/faceshow/aaspring/beans/VipComboDate;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActrualPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getActrualUnitPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualUnitPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getComboName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->comboName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDiscount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->isDiscount:I

    return v0
.end method

.method public getModel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->model:I

    return v0
.end method

.method public getShow()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->show:I

    return v0
.end method

.method public getTerminal()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->terminal:I

    return v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->totalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unit:I

    return v0
.end method

.method public getUnitPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unitPrice:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->id:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unit:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->duration:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unitPrice:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->totalPrice:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualPrice:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualUnitPrice:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->isDiscount:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->model:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->terminal:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->comboName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->show:I

    return-void
.end method

.method public setActrualPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualPrice:Ljava/lang/String;

    return-void
.end method

.method public setActrualUnitPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualUnitPrice:Ljava/lang/String;

    return-void
.end method

.method public setComboName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->comboName:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->duration:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsDiscount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->isDiscount:I

    return-void
.end method

.method public setModel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->model:I

    return-void
.end method

.method public setShow(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->show:I

    return-void
.end method

.method public setTerminal(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->terminal:I

    return-void
.end method

.method public setTotalPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->totalPrice:Ljava/lang/String;

    return-void
.end method

.method public setUnit(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unit:I

    return-void
.end method

.method public setUnitPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unitPrice:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->duration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->unitPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->totalPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->actrualUnitPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->isDiscount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->model:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->terminal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->comboName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VipComboDate;->show:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
