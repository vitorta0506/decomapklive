.class public Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/promotion/data/PromotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeBackgroundColor:Ljava/lang/String;

.field private activitiesCoverBig:Ljava/lang/String;

.field private activitiesCoverSmall:Ljava/lang/String;

.field public appActivityGiftEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;",
            ">;"
        }
    .end annotation
.end field

.field public appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

.field public backgroundImg:Ljava/lang/String;

.field public belongLang:Ljava/lang/Integer;

.field private borderColor:Ljava/lang/String;

.field public coverImgUrl:Ljava/lang/String;

.field public endTime:J

.field public floatIconUrl:Ljava/lang/String;

.field private giftNumberColor:Ljava/lang/String;

.field public id:I

.field public introduction:Ljava/lang/String;

.field public isBackgroundImg:I

.field public likImg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public liveActiveType:I

.field public liveMultilLang:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public normalMutilLang:Ljava/lang/String;

.field private numberBannerColor:Ljava/lang/String;

.field public transient requestTime:J

.field private rightCornerImg:Ljava/lang/String;

.field private rightFoldUpImg:Ljava/lang/String;

.field public screenEffectMd5:Ljava/lang/String;

.field public screenEffectUrl:Ljava/lang/String;

.field public shareImgUrl:Ljava/lang/String;

.field public shareTextCn:Ljava/lang/String;

.field public shareTextEn:Ljava/lang/String;

.field public startTime:J

.field public stripImgUrl:Ljava/lang/String;

.field public type:I

.field private variableNumberColor:Ljava/lang/String;

.field public webPageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->requestTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->requestTime:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->coverImgUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->stripImgUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->startTime:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->endTime:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->type:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->introduction:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextCn:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextEn:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareImgUrl:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->floatIconUrl:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->likImg:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->isBackgroundImg:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->backgroundImg:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->screenEffectUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->screenEffectMd5:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->liveMultilLang:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->normalMutilLang:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverBig:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverSmall:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activeBackgroundColor:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->borderColor:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->variableNumberColor:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->giftNumberColor:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->numberBannerColor:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightCornerImg:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightFoldUpImg:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->liveActiveType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActiveBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activeBackgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#10471F"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activeBackgroundColor:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getActivitiesCoverBig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverBig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://mp5.facecast.xyz/storage1/M06/61/C0/aPODC19GM5yAVT21AAIaGBXZz_0378.png"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverBig:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getActivitiesCoverSmall()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverSmall:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://mp5.facecast.xyz/storage1/M05/61/C0/aPODC19GM5yAGdw1AAGxjE5PLgg976.png"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverSmall:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getBorderColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->borderColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#FFFF00"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->borderColor:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getGiftNumberColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->giftNumberColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#ffffff"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->giftNumberColor:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getNumberBannerColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->numberBannerColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#052b05"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->numberBannerColor:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRightCornerImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightCornerImg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://mp5.facecast.xyz/storage1/M01/64/5C/aPODCl9Ns22AU08UAAAIHW6epUM609.png"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightCornerImg:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRightFoldUpImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightFoldUpImg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://mp5.facecast.xyz/storage1/M00/64/5C/aPODCl9Ns2yAX7qCAAAJAs6qzHo510.png"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightFoldUpImg:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getVariableNumberColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->variableNumberColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#ffe400"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->variableNumberColor:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public setActiveBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activeBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setActivitiesCoverBig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverBig:Ljava/lang/String;

    return-void
.end method

.method public setActivitiesCoverSmall(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverSmall:Ljava/lang/String;

    return-void
.end method

.method public setBorderColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->borderColor:Ljava/lang/String;

    return-void
.end method

.method public setGiftNumberColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->giftNumberColor:Ljava/lang/String;

    return-void
.end method

.method public setNumberBannerColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->numberBannerColor:Ljava/lang/String;

    return-void
.end method

.method public setRightCornerImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightCornerImg:Ljava/lang/String;

    return-void
.end method

.method public setRightFoldUpImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightFoldUpImg:Ljava/lang/String;

    return-void
.end method

.method public setVariableNumberColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->variableNumberColor:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->coverImgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->stripImgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-wide v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-wide v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->introduction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextCn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextEn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareImgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->floatIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->likImg:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 15
    iget p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->isBackgroundImg:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->backgroundImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->screenEffectUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->screenEffectMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->liveMultilLang:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->normalMutilLang:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverBig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activitiesCoverSmall:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->activeBackgroundColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->borderColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->variableNumberColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->giftNumberColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->numberBannerColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightCornerImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->rightFoldUpImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget p2, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->liveActiveType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
