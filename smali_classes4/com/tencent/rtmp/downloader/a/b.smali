.class public final Lcom/tencent/rtmp/downloader/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/tencent/liteav/txcplayer/a/a;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/rtmp/downloader/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

.field public d:Lcom/tencent/liteav/base/storage/PersistStorage;

.field e:Lcom/tencent/liteav/txcplayer/a/a$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/rtmp/downloader/a/b$4;

    invoke-direct {v0, p0}, Lcom/tencent/rtmp/downloader/a/b$4;-><init>(Lcom/tencent/rtmp/downloader/a/b;)V

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->e:Lcom/tencent/liteav/txcplayer/a/a$a;

    .line 3
    invoke-static {}, Lcom/tencent/rtmp/downloader/a/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/tencent/liteav/txcplayer/a/c;->a(Landroid/content/Context;)Lcom/tencent/liteav/txcplayer/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->a:Lcom/tencent/liteav/txcplayer/a/a;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/tencent/rtmp/downloader/a/b;->e:Lcom/tencent/liteav/txcplayer/a/a$a;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/txcplayer/a/a;->setListener(Lcom/tencent/liteav/txcplayer/a/a$a;)V

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Lcom/tencent/liteav/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    const-string v0, "liteav"

    .line 8
    invoke-static {v0}, Lcom/tencent/liteav/base/ContextUtils;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string/jumbo v1, "vod_download"

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/rtmp/downloader/a/c;)Ljava/lang/String;
    .locals 3

    .line 63
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getOverlayKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&oversign="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&o1="

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&o2="

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&o3="

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&o4="

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getOverlayKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&o5="

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getOverlayIv()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1, v0, v1}, Lcom/tencent/rtmp/downloader/a/c;->writeToParcel(Landroid/os/Parcel;I)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 160
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {p0}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "saveDownloadMediaInfo key: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "| mediaInfo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TXVodDownloadManagerImpl"

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/liteav/txcvodplayer/b/c;)V
    .locals 4

    if-eqz p2, :cond_6

    .line 137
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/liteav/txcvodplayer/b/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ".m3u8"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/liteav/txcvodplayer/b/c;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1, v1}, Lcom/tencent/rtmp/downloader/a/c;->a(I)V

    .line 141
    iget-object v1, p2, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 142
    iget v2, v1, Lcom/tencent/liteav/txcvodplayer/b/b;->e:I

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p2, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v1, :cond_4

    .line 144
    iget-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/f;->b:Lcom/tencent/liteav/txcvodplayer/b/g;

    if-nez v3, :cond_3

    .line 145
    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/b/f;->c()Lcom/tencent/liteav/txcvodplayer/b/g;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/liteav/txcvodplayer/b/f;->b:Lcom/tencent/liteav/txcvodplayer/b/g;

    .line 146
    :cond_3
    iget-object v1, v1, Lcom/tencent/liteav/txcvodplayer/b/f;->b:Lcom/tencent/liteav/txcvodplayer/b/g;

    if-eqz v1, :cond_4

    .line 147
    iget v2, v1, Lcom/tencent/liteav/txcvodplayer/b/g;->d:I

    .line 148
    :cond_4
    :goto_0
    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/downloader/a/c;->c(I)V

    .line 149
    sget-object v1, Lcom/tencent/liteav/txcvodplayer/b/a$a;->a:Lcom/tencent/liteav/txcvodplayer/b/a;

    .line 150
    new-instance v2, Lcom/tencent/rtmp/downloader/a/b$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/tencent/rtmp/downloader/a/b$3;-><init>(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/liteav/txcvodplayer/b/c;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/liteav/txcvodplayer/b/a;->a(Ljava/lang/String;Lcom/tencent/liteav/txcvodplayer/b/a$b;)V

    return-void

    .line 151
    :cond_5
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "not support format! masterPlaylistUrl : "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "TXVodDownloadManagerImpl"

    invoke-static {v0, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz p0, :cond_6

    const/16 p2, -0x138c

    const-string v0, "No support format"

    .line 153
    invoke-interface {p0, p1, p2, v0}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static b()Landroid/content/Context;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Landroid/app/Application;

    .line 8
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static b(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Ljava/lang/String;
    .locals 3

    .line 26
    invoke-virtual {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_"

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/liteav/txcplayer/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getFileId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAppId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\n"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 33
    array-length v0, p0

    if-lez v0, :cond_2

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p0, v1

    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "#EXT-X-STREAM-INF:"

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    const-string v4, ".m3u8"

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static c(Ljava/lang/String;)Z
    .locals 2

    const-string v0, ".hls"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/a/c;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6
    sget-object p0, Lcom/tencent/rtmp/downloader/a/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/rtmp/downloader/a/c;

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez p0, :cond_1

    return-object v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&oversign="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/downloader/a/a;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getOverlayKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/rtmp/downloader/a/b;->a(Ljava/lang/String;Lcom/tencent/rtmp/downloader/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/downloader/a/c;->a(Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;I)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 9

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/rtmp/downloader/a/c;

    .line 121
    invoke-virtual {v3}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 122
    invoke-virtual {v4}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAppId()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 123
    invoke-virtual {v4}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getFileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    move-result v4

    if-ne v4, p3, :cond_1

    .line 124
    monitor-exit v0

    return-object v3

    .line 125
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    if-eqz v0, :cond_4

    .line 127
    new-instance v0, Lcom/tencent/rtmp/downloader/a/c;

    invoke-direct {v0}, Lcom/tencent/rtmp/downloader/a/c;-><init>()V

    .line 128
    new-instance v8, Lcom/tencent/rtmp/downloader/a/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/tencent/rtmp/downloader/a/a;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/tencent/rtmp/downloader/a/c;->a(Lcom/tencent/rtmp/downloader/a/a;)V

    .line 129
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->d(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/rtmp/downloader/a/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->clear(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    const-string p1, "TXVodDownloadManagerImpl"

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fileId : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | qualityId: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " download file not exist! remove download info!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 136
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Lcom/tencent/liteav/txcplayer/a/b;)Lcom/tencent/rtmp/downloader/a/c;
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/rtmp/downloader/a/c;

    .line 85
    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getTaskId()I

    move-result v3

    iget v4, p1, Lcom/tencent/liteav/txcplayer/a/b;->a:I

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/liteav/txcplayer/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    :cond_1
    iget v1, p1, Lcom/tencent/liteav/txcplayer/a/b;->h:I

    if-lez v1, :cond_2

    .line 87
    invoke-virtual {v2, v1}, Lcom/tencent/rtmp/downloader/a/c;->b(I)V

    .line 88
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDuration()I

    move-result v1

    if-gtz v1, :cond_3

    iget v1, p1, Lcom/tencent/liteav/txcplayer/a/b;->i:I

    if-lez v1, :cond_3

    .line 89
    invoke-virtual {v2, v1}, Lcom/tencent/rtmp/downloader/a/c;->a(I)V

    .line 90
    :cond_3
    iget v1, p1, Lcom/tencent/liteav/txcplayer/a/b;->c:I

    if-lez v1, :cond_4

    .line 91
    invoke-virtual {v2, v1}, Lcom/tencent/rtmp/downloader/a/c;->d(I)V

    .line 92
    :cond_4
    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getSize()I

    move-result v1

    if-gtz v1, :cond_5

    iget v1, p1, Lcom/tencent/liteav/txcplayer/a/b;->d:I

    if-lez v1, :cond_5

    .line 93
    invoke-virtual {v2, v1}, Lcom/tencent/rtmp/downloader/a/c;->c(I)V

    .line 94
    :cond_5
    iget v1, p1, Lcom/tencent/liteav/txcplayer/a/b;->f:I

    if-lez v1, :cond_6

    .line 95
    invoke-virtual {v2, v1}, Lcom/tencent/rtmp/downloader/a/c;->e(I)V

    .line 96
    :cond_6
    iget v1, p1, Lcom/tencent/liteav/txcplayer/a/b;->g:I

    if-lez v1, :cond_7

    .line 97
    invoke-virtual {v2, v1}, Lcom/tencent/rtmp/downloader/a/c;->f(I)V

    .line 98
    :cond_7
    iget p1, p1, Lcom/tencent/liteav/txcplayer/a/b;->e:I

    if-lez p1, :cond_8

    .line 99
    invoke-virtual {v2, p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->setSpeed(I)V

    .line 100
    :cond_8
    monitor-exit v0

    return-object v2

    .line 101
    :cond_9
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;)Lcom/tencent/rtmp/downloader/a/c;
    .locals 11

    .line 18
    new-instance v0, Lcom/tencent/rtmp/downloader/a/c;

    invoke-direct {v0}, Lcom/tencent/rtmp/downloader/a/c;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getTemplateName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Lcom/tencent/rtmp/downloader/a/a;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAuthBuilder()Lcom/tencent/rtmp/TXPlayerAuthBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/rtmp/downloader/a/a;-><init>(Lcom/tencent/rtmp/TXPlayerAuthBuilder;I)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lcom/tencent/rtmp/downloader/a/a;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAuthBuilder()Lcom/tencent/rtmp/TXPlayerAuthBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getTemplateName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/rtmp/downloader/a/a;-><init>(Lcom/tencent/rtmp/TXPlayerAuthBuilder;Ljava/lang/String;)V

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/downloader/a/c;->a(Lcom/tencent/rtmp/downloader/a/a;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAuthBuilder()Lcom/tencent/rtmp/TXPlayerAuthBuilder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {v1}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAuthBuilder()Lcom/tencent/rtmp/TXPlayerAuthBuilder;

    move-result-object v2

    .line 26
    new-instance v10, Lcom/tencent/liteav/txcvodplayer/b/d;

    invoke-direct {v10}, Lcom/tencent/liteav/txcvodplayer/b/d;-><init>()V

    .line 27
    invoke-virtual {v2}, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->isHttps()Z

    move-result v3

    .line 28
    iput-boolean v3, v10, Lcom/tencent/liteav/txcvodplayer/b/d;->c:Z

    .line 29
    new-instance v3, Lcom/tencent/rtmp/downloader/a/b$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/tencent/rtmp/downloader/a/b$1;-><init>(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;Lcom/tencent/rtmp/downloader/a/a;)V

    invoke-virtual {v10, v3}, Lcom/tencent/liteav/txcvodplayer/b/d;->a(Lcom/tencent/liteav/txcvodplayer/b/e;)V

    .line 30
    invoke-virtual {v2}, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->getAppId()I

    move-result v4

    .line 31
    invoke-virtual {v2}, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->getFileId()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v2}, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->getTimeout()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v2}, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->getUs()Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v2}, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->getExper()I

    move-result v8

    .line 35
    invoke-virtual {v2}, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->getSign()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    .line 36
    invoke-virtual/range {v3 .. v9}, Lcom/tencent/liteav/txcvodplayer/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 37
    invoke-virtual {v0, v10}, Lcom/tencent/rtmp/downloader/a/c;->a(Lcom/tencent/liteav/txcvodplayer/b/d;)V

    .line 38
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    monitor-enter p1

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const-string p1, "TXVodDownloadManagerImpl"

    const-string/jumbo v0, "unable to getPlayInfo"

    .line 41
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Lcom/tencent/rtmp/downloader/a/c;
    .locals 3

    .line 6
    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->d(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/rtmp/downloader/a/b;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TXVodDownloadManagerImpl"

    if-eqz v1, :cond_0

    const-string p1, "partly download, resume download"

    .line 12
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/c;)V

    return-object v0

    :cond_0
    const-string v0, "file is deleted, remove cache and restart download"

    .line 14
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->clear(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_kv"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->clear(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/rtmp/downloader/a/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/rtmp/downloader/a/c;

    invoke-direct {v0}, Lcom/tencent/rtmp/downloader/a/c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/c;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/tencent/rtmp/downloader/a/c;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/c;)V

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 103
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/base/storage/PersistStorage;->getAllKeys()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 104
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v0, v5

    .line 106
    iget-object v7, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v7, v6}, Lcom/tencent/liteav/base/storage/PersistStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/rtmp/downloader/a/b;->d(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 107
    invoke-virtual {v7}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/rtmp/downloader/a/b;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 108
    iget-object v7, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v7, v6}, Lcom/tencent/liteav/base/storage/PersistStorage;->clear(Ljava/lang/String;)V

    .line 109
    iget-object v6, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v6}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    goto :goto_2

    .line 110
    :cond_1
    iget-object v6, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    iget-object v8, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/rtmp/downloader/a/c;

    .line 112
    invoke-virtual {v9}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 113
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 114
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_4

    .line 115
    :try_start_2
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 116
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object v1
.end method

.method final a(Lcom/tencent/rtmp/downloader/a/c;)V
    .locals 5

    .line 42
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, -0x138c

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->a:Lcom/tencent/liteav/txcplayer/a/a;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcplayer/a/a;->makePlayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Ljava/lang/String;Lcom/tencent/rtmp/downloader/a/c;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Lcom/tencent/rtmp/downloader/a/c;->a(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 48
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_1

    const/16 v1, -0x138f

    const-string v2, "Failed to create local path"

    .line 49
    invoke-interface {v0, p1, v1, v2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "TXVodDownloadManagerImpl"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download hls "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v3, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->a:Lcom/tencent/liteav/txcplayer/a/a;

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/tencent/liteav/txcplayer/a/a;->downloadHls(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/downloader/a/c;->g(I)V

    .line 55
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getTaskId()I

    move-result v0

    if-gez v0, :cond_3

    const-string v0, "TXVodDownloadManagerImpl"

    const-string/jumbo v1, "start download failed"

    .line 56
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_3

    const-string v1, "Internal error"

    .line 58
    invoke-interface {v0, p1, v2, v1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    const-string v1, "TXVodDownloadManagerImpl"

    const-string v3, "only support m3u8 file, format error: "

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_5

    const-string v1, "No support format"

    .line 62
    invoke-interface {v0, p1, v2, v1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "TXVodDownloadManagerImpl"

    const-string v1, "delete file "

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/rtmp/downloader/a/c;

    .line 77
    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "TXVodDownloadManagerImpl"

    const-string v1, "file is downloading, can not be delete"

    .line 78
    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 79
    monitor-exit v0

    return p1

    .line 80
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->a:Lcom/tencent/liteav/txcplayer/a/a;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/a/a;->deleteDownloadFile(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 82
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
    .locals 5

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/rtmp/downloader/a/c;

    .line 13
    invoke-virtual {v3}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    monitor-exit v0

    return-object v3

    .line 15
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    if-eqz v0, :cond_4

    .line 17
    new-instance v0, Lcom/tencent/rtmp/downloader/a/c;

    invoke-direct {v0}, Lcom/tencent/rtmp/downloader/a/c;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/c;->b(Ljava/lang/String;)V

    .line 19
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->b(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->d(Ljava/lang/String;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/rtmp/downloader/a/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 23
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->clear(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b;->d:Lcom/tencent/liteav/base/storage/PersistStorage;

    invoke-virtual {p1}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
