.class public Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private leftIconUrl:Ljava/lang/String;

.field private max:I

.field private min:I

.field private rightIconUrl:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->id:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->type:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->min:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->max:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->leftIconUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->rightIconUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->leftIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->min:I

    return v0
.end method

.method public getRightIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->rightIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLeftIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->leftIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->min:I

    return-void
.end method

.method public setRightIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->rightIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->type:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->min:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->leftIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;->rightIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
