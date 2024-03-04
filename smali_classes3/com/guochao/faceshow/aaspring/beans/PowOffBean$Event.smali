.class public Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/PowOffBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private duration:I

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->startTime:J

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->duration:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->duration:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->startTime:J

    return-wide v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->duration:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->startTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
