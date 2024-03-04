.class public Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchorId:Ljava/lang/String;

.field private appNumGameJoin:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

.field private endNum:I

.field private guessResult:I

.field private inputNum:I

.field private luckyNum:I

.field private prizeNum:I

.field private rateNum:Ljava/lang/String;

.field private startNum:I

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->startNum:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->endNum:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->guessResult:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->inputNum:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->prizeNum:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->userId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->anchorId:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->rateNum:Ljava/lang/String;

    .line 11
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->appNumGameJoin:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->luckyNum:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->anchorId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppNumGameJoin()Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->appNumGameJoin:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

    return-object v0
.end method

.method public getEndNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->endNum:I

    return v0
.end method

.method public getGuessResult()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->guessResult:I

    return v0
.end method

.method public getInputNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->inputNum:I

    return v0
.end method

.method public getLuckyNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->luckyNum:I

    return v0
.end method

.method public getPrizeNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->prizeNum:I

    return v0
.end method

.method public getRateNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->rateNum:Ljava/lang/String;

    return-object v0
.end method

.method public getStartNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->startNum:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAnchorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->anchorId:Ljava/lang/String;

    return-void
.end method

.method public setAppNumGameJoin(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->appNumGameJoin:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

    return-void
.end method

.method public setEndNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->endNum:I

    return-void
.end method

.method public setGuessResult(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->guessResult:I

    return-void
.end method

.method public setInputNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->inputNum:I

    return-void
.end method

.method public setLuckyNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->luckyNum:I

    return-void
.end method

.method public setPrizeNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->prizeNum:I

    return-void
.end method

.method public setRateNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->rateNum:Ljava/lang/String;

    return-void
.end method

.method public setStartNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->startNum:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->startNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->endNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->guessResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->inputNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->prizeNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->anchorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->rateNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->appNumGameJoin:Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean$LuckyNumberUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->luckyNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
