.class public Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContributionImgBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gongxianImg:Ljava/lang/String;

.field private total:D

.field private user_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->total:D

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->user_id:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->gongxianImg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGongxianImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->gongxianImg:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->total:D

    return-wide v0
.end method

.method public getUser_id()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->user_id:I

    return v0
.end method

.method public setGongxianImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->gongxianImg:Ljava/lang/String;

    return-void
.end method

.method public setTotal(D)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->total:D

    return-void
.end method

.method public setUser_id(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->user_id:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->total:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->user_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean$ContributionImgBean;->gongxianImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
