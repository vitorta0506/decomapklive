.class public Lcom/guochao/faceshow/aaspring/beans/RankListBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private rankInfo:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

.field private rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->total:I

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->rankInfo:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->rows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRankInfo()Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->rankInfo:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->rows:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->total:I

    return v0
.end method

.method public setRankInfo(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->rankInfo:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    return-void
.end method

.method public setRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->rows:Ljava/util/List;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->total:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->rankInfo:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->rows:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
