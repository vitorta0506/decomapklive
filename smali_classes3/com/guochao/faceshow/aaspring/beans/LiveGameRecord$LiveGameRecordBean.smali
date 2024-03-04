.class public Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveGameRecordBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createTime:J

.field private diamondIn:I

.field private diamondOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->diamondOut:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->diamondIn:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->createTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->createTime:J

    return-wide v0
.end method

.method public getDiamondIn()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->diamondIn:I

    return v0
.end method

.method public getDiamondOut()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->diamondOut:I

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->createTime:J

    return-void
.end method

.method public setDiamondIn(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->diamondIn:I

    return-void
.end method

.method public setDiamondOut(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->diamondOut:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->diamondOut:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->diamondIn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
