.class public Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidFaceEffectMd5:Ljava/lang/String;

.field private androidFaceEffectMd5V2:Ljava/lang/String;

.field private androidFaceEffectUrl:Ljava/lang/String;

.field private androidFaceEffectUrlV2:Ljava/lang/String;

.field private androidFileUrl:Ljava/lang/String;

.field private androidFileUrlMd5:Ljava/lang/String;

.field private androidFileUrlMd5V2:Ljava/lang/String;

.field private androidFileUrlV2:Ljava/lang/String;

.field private bagAttribute:I

.field private content:Ljava/lang/String;

.field private dateLimit:J

.field private downloadUrl:Ljava/lang/String;

.field private effectDisplayTime:Ljava/lang/String;

.field private effectTime:Ljava/lang/Long;

.field private faceEffectName:Ljava/lang/String;

.field private fprice:Ljava/lang/String;

.field private freezeNumber:I

.field private giftSelectionEffectMd5:Ljava/lang/String;

.field private giftSelectionEffectUrl:Ljava/lang/String;

.field private id:I

.field private img:Ljava/lang/String;

.field private introduction:Ljava/lang/String;

.field private iosFaceEffectMd5:Ljava/lang/String;

.field private iosFaceEffectMd5V2:Ljava/lang/String;

.field private iosFaceEffectUrl:Ljava/lang/String;

.field private iosFaceEffectUrlV2:Ljava/lang/String;

.field private iosFileUrl:Ljava/lang/String;

.field private isCollect:I

.field private isExclusive:I

.field private isSelectionEffect:Ljava/lang/String;

.field private isTokenGift:Ljava/lang/String;

.field private isUse:I

.field private isWithAudio:I

.field private itemType:I

.field private levelId:I

.field private levelMome:Ljava/lang/String;

.field private levelName:Ljava/lang/String;

.field private maxDraw:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limitMaxNum"
    .end annotation
.end field

.field private maxMultiple:I

.field private md5:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private mp4Md5:Ljava/lang/String;

.field private mp4Url:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:I

.field private pasterImg:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private selectMp4Md5:Ljava/lang/String;

.field private selectMp4Url:Ljava/lang/String;

.field private sizeType:I

.field private svgaUrl:Ljava/lang/String;

.field private tipsOnSelect:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxMultiple:I

    .line 59
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxDraw:I

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->bagAttribute:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxMultiple:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxDraw:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->bagAttribute:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->id:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->content:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->introduction:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->module:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->price:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->fprice:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->img:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->pasterImg:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->svgaUrl:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->downloadUrl:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFileUrl:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrl:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlV2:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectDisplayTime:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->tipsOnSelect:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isExclusive:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isWithAudio:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelId:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelMome:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->type:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->sizeType:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->md5:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlMd5:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlMd5V2:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isUse:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->giftSelectionEffectUrl:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->giftSelectionEffectMd5:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isSelectionEffect:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectUrl:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectMd5:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectUrl:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectMd5:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectUrlV2:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectUrlV2:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectMd5V2:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectMd5V2:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->faceEffectName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectTime:Ljava/lang/Long;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectTime:Ljava/lang/Long;

    .line 47
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isCollect:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isTokenGift:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->number:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->freezeNumber:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->itemType:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxMultiple:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->mp4Url:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->mp4Md5:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->selectMp4Url:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->selectMp4Md5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->id:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->id:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAndroidFaceEffectMd5()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidFaceEffectUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidFaceEffectUrlV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectUrlV2:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidFaceMd5V2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectMd5V2:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidFileUrlMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidFileUrlMd5V2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlMd5V2:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidFileUrlV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlV2:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->bagAttribute:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDateLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->dateLimit:J

    return-wide v0
.end method

.method public getDateLimitDay()Ljava/lang/String;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->dateLimit:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "days"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const v1, 0x7f1206e4

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectDisplayTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectDisplayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getFaceEffectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->faceEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceNXPath()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effect"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFprice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->fprice:Ljava/lang/String;

    return-object v0
.end method

.method public getFreezeNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->freezeNumber:I

    return v0
.end method

.method public getGiftSelectionEffectMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->giftSelectionEffectMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftSelectionEffectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->giftSelectionEffectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->id:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getIosFaceEffectMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getIosFaceEffectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIosFaceEffectUrlV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectUrlV2:Ljava/lang/String;

    return-object v0
.end method

.method public getIosFaceMd5V2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectMd5V2:Ljava/lang/String;

    return-object v0
.end method

.method public getIosFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCollect()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isCollect:I

    return v0
.end method

.method public getIsExclusive()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isExclusive:I

    return v0
.end method

.method public getIsSelectionEffect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isSelectionEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getIsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isTokenGift:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUse()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isUse:I

    return v0
.end method

.method public getIsWithAudio()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isWithAudio:I

    return v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->itemType:I

    return v0
.end method

.method public getLevelId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelId:I

    return v0
.end method

.method public getLevelMome()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelMome:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDraw()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxDraw:I

    return v0
.end method

.method public getMaxMultiple()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxMultiple:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getMp4Md5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->mp4Md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMp4Url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->mp4Url:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->number:I

    return v0
.end method

.method public getPasterImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->pasterImg:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectMp4Md5()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->selectMp4Md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectMp4Url()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->selectMp4Url:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->sizeType:I

    return v0
.end method

.method public getSvgaUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->svgaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTipsOnSelect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->tipsOnSelect:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBagChipsGIft()Z
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->bagAttribute:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHandyGift()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->sizeType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLuckyGift()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->sizeType:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMVPGift()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->sizeType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAndroidFaceEffectMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectMd5:Ljava/lang/String;

    return-void
.end method

.method public setAndroidFaceEffectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectUrl:Ljava/lang/String;

    return-void
.end method

.method public setAndroidFaceEffectUrlV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectUrlV2:Ljava/lang/String;

    return-void
.end method

.method public setAndroidFaceMd5V2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectMd5V2:Ljava/lang/String;

    return-void
.end method

.method public setAndroidFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setAndroidFileUrlMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlMd5:Ljava/lang/String;

    return-void
.end method

.method public setAndroidFileUrlMd5V2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlMd5V2:Ljava/lang/String;

    return-void
.end method

.method public setAndroidFileUrlV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlV2:Ljava/lang/String;

    return-void
.end method

.method public setBagAttribute(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->bagAttribute:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setDateLimit(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->dateLimit:J

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setEffectDisplayTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectDisplayTime:Ljava/lang/String;

    return-void
.end method

.method public setEffectTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectTime:Ljava/lang/Long;

    return-void
.end method

.method public setFaceEffectName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->faceEffectName:Ljava/lang/String;

    return-void
.end method

.method public setFprice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->fprice:Ljava/lang/String;

    return-void
.end method

.method public setFreezeNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->freezeNumber:I

    return-void
.end method

.method public setGiftSelectionEffectMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->giftSelectionEffectMd5:Ljava/lang/String;

    return-void
.end method

.method public setGiftSelectionEffectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->giftSelectionEffectUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->id:I

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setIosFaceEffectMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectMd5:Ljava/lang/String;

    return-void
.end method

.method public setIosFaceEffectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectUrl:Ljava/lang/String;

    return-void
.end method

.method public setIosFaceEffectUrlV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectUrlV2:Ljava/lang/String;

    return-void
.end method

.method public setIosFaceMd5V2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectMd5V2:Ljava/lang/String;

    return-void
.end method

.method public setIosFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsCollect(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isCollect:I

    return-void
.end method

.method public setIsExclusive(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isExclusive:I

    return-void
.end method

.method public setIsSelectionEffect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isSelectionEffect:Ljava/lang/String;

    return-void
.end method

.method public setIsToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isTokenGift:Ljava/lang/String;

    return-void
.end method

.method public setIsUse(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isUse:I

    return-void
.end method

.method public setIsWithAudio(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isWithAudio:I

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->itemType:I

    return-void
.end method

.method public setLevelId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelId:I

    return-void
.end method

.method public setLevelMome(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelMome:Ljava/lang/String;

    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelName:Ljava/lang/String;

    return-void
.end method

.method public setMaxDraw(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxDraw:I

    return-void
.end method

.method public setMaxMultiple(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxMultiple:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->module:Ljava/lang/String;

    return-void
.end method

.method public setMp4Md5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->mp4Md5:Ljava/lang/String;

    return-void
.end method

.method public setMp4Url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->mp4Url:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->number:I

    return-void
.end method

.method public setPasterImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->pasterImg:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setSelectMp4Md5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->selectMp4Md5:Ljava/lang/String;

    return-void
.end method

.method public setSelectMp4Url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->selectMp4Url:Ljava/lang/String;

    return-void
.end method

.method public setSizeType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->sizeType:I

    return-void
.end method

.method public setSvgaUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->svgaUrl:Ljava/lang/String;

    return-void
.end method

.method public setTipsOnSelect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->tipsOnSelect:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->introduction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->module:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->price:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->fprice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->img:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->pasterImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->svgaUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlV2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectDisplayTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->tipsOnSelect:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isExclusive:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isWithAudio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->levelMome:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->sizeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->md5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFileUrlMd5V2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isUse:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->giftSelectionEffectUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->giftSelectionEffectMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isSelectionEffect:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectUrlV2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectUrlV2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->androidFaceEffectMd5V2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->iosFaceEffectMd5V2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->faceEffectName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectTime:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->effectTime:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    :goto_0
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isCollect:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isTokenGift:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->number:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->freezeNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->itemType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->maxMultiple:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->mp4Url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->mp4Md5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->selectMp4Url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->selectMp4Md5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
