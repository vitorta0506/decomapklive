.class public Lcom/guochao/faceshow/aaspring/beans/LookVideBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LookVideBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attention:I

.field private browseCount:Ljava/lang/String;

.field private height:I

.field private hisself:I

.field private imStatus:I

.field private likeCount:Ljava/lang/String;

.field private likeStatus:I

.field private musicName:Ljava/lang/String;

.field private musicUrl:Ljava/lang/String;

.field private privat:I

.field private shortUrl:Ljava/lang/String;

.field private superLikeToday:I

.field private userId:Ljava/lang/String;

.field private userNick:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoImg:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LookVideBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userNick:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->hisself:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->shortUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoImg:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->width:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->height:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->privat:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->browseCount:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeCount:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->attention:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeStatus:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->superLikeToday:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->imStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttention()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->attention:I

    return v0
.end method

.method public getBrowseCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->browseCount:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->height:I

    return v0
.end method

.method public getHisself()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->hisself:I

    return v0
.end method

.method public getImStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->imStatus:I

    return v0
.end method

.method public getLikeCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeCount:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeStatus:I

    return v0
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivat()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->privat:I

    return v0
.end method

.method public getShortUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->shortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperLikeToday()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->superLikeToday:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoImg:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->width:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userId:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userNick:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->hisself:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->shortUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoImg:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->width:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->height:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->privat:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->browseCount:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeCount:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->attention:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeStatus:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->superLikeToday:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->imStatus:I

    return-void
.end method

.method public setAttention(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->attention:I

    return-void
.end method

.method public setBrowseCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->browseCount:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->height:I

    return-void
.end method

.method public setHisself(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->hisself:I

    return-void
.end method

.method public setImStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->imStatus:I

    return-void
.end method

.method public setLikeCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeCount:Ljava/lang/String;

    return-void
.end method

.method public setLikeStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeStatus:I

    return-void
.end method

.method public setMusicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicName:Ljava/lang/String;

    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivat(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->privat:I

    return-void
.end method

.method public setShortUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->shortUrl:Ljava/lang/String;

    return-void
.end method

.method public setSuperLikeToday(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->superLikeToday:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userNick:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoImg:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->userNick:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->hisself:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->shortUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->videoImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->musicName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->privat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->browseCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->attention:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->likeStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->superLikeToday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LookVideBean;->imStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
