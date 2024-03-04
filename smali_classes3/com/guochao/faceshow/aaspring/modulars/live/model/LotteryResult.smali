.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private newUserGiftBag:Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userGiftBag"
    .end annotation
.end field

.field private selectTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
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
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->selectTime:J

    return-void
.end method

.method public static build(Lcom/guochao/faceshow/signin/bean/NewUser;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->access$002(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/NewUser;->getRewardDiamond()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->access$102(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/NewUser;->getRegDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->access$202(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "1"

    .line 6
    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->access$302(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/NewUser;->getFCerIndex()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->access$402(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/NewUser;->getFCerHeadImg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->access$502(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/NewUser;->getCharmValues()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->access$602(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/NewUser;->getUsedDay()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->access$702(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->newUserGiftBag:Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->selectTime:J

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->newUserGiftBag:Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    return-object v0
.end method

.method public getSelectTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->selectTime:J

    return-wide v0
.end method

.method public setNewUserGiftBag(Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->newUserGiftBag:Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    return-void
.end method

.method public setSelectTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->selectTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->selectTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
