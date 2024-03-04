.class public Lcom/tencent/rtmp/downloader/a/c;
.super Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/rtmp/downloader/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/rtmp/downloader/a/c;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/tencent/rtmp/downloader/a/c$1;

    invoke-direct {v0}, Lcom/tencent/rtmp/downloader/a/c$1;-><init>()V

    sput-object v0, Lcom/tencent/rtmp/downloader/a/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;-><init>()V

    .line 3
    const-class v0, Lcom/tencent/rtmp/downloader/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/downloader/a/a;

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->duration:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->size:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadSize:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->segments:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadSegments:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->playPath:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->url:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->userName:Ljava/lang/String;

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadState:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->playableDuration:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->speed:I

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->duration:I

    return-void
.end method

.method final a(Lcom/tencent/liteav/txcvodplayer/b/d;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->netApi:Lcom/tencent/liteav/txcvodplayer/b/d;

    return-void
.end method

.method public final a(Lcom/tencent/rtmp/downloader/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->playPath:Ljava/lang/String;

    return-void
.end method

.method final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->playableDuration:I

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->url:Ljava/lang/String;

    return-void
.end method

.method final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->size:I

    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadSize:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->segments:I

    return-void
.end method

.method final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadSegments:I

    return-void
.end method

.method final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->tid:I

    return-void
.end method

.method final h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->segments:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadSegments:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->playPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    if-nez p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    :cond_0
    iget p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->downloadState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->playableDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->speed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
