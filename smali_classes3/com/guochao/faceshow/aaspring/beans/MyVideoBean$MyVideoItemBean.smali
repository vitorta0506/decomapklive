.class public Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/MyVideoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyVideoItemBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private browseCount:I

.field private height:I

.field private likeCount:Ljava/lang/String;

.field private musicName:Ljava/lang/String;

.field private musicUrl:Ljava/lang/String;

.field private privat:I

.field private shortUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userNick:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoImg:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoImg:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->shortUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userId:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userNick:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->width:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->height:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->browseCount:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->likeCount:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->privat:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBrowseCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->browseCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->height:I

    return v0
.end method

.method public getLikeCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->likeCount:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivat()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->privat:I

    return v0
.end method

.method public getShortUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->shortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoImg:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->width:I

    return v0
.end method

.method public obtain()Lcom/guochao/faceshow/aaspring/beans/VideoItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoUrl(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->shortUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setShortUrl(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setMusicName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setMusicUrl(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserId(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserNickName(Ljava/lang/String;)V

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->likeCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCollectionNum(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->width:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setWidth(Ljava/lang/String;)V

    .line 11
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->height:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setHeight(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->browseCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setShareNum(Ljava/lang/String;)V

    return-object v0
.end method

.method public setBrowseCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->browseCount:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->height:I

    return-void
.end method

.method public setLikeCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->likeCount:Ljava/lang/String;

    return-void
.end method

.method public setMusicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicName:Ljava/lang/String;

    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivat(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->privat:I

    return-void
.end method

.method public setShortUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->shortUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userNick:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoImg:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->videoImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->shortUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->musicUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->userNick:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->browseCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->likeCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/MyVideoBean$MyVideoItemBean;->privat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
