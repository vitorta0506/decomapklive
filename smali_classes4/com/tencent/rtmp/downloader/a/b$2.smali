.class public final Lcom/tencent/rtmp/downloader/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/downloader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/downloader/a/c;

.field final synthetic b:Lcom/tencent/rtmp/downloader/a/b;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    iput-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "TXVodDownloadManagerImpl"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFail: errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    .line 44
    iget-object p1, p1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 45
    monitor-enter p1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    .line 47
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 48
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    .line 51
    iget-object p1, p1, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v1, -0x1389

    invoke-interface {p1, v0, v1, p2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 53
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final a(Lcom/tencent/liteav/txcvodplayer/b/c;Lcom/tencent/rtmp/TXPlayInfoParams;)V
    .locals 5

    const-string v0, "TXVodDownloadManagerImpl"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: protocol params = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    .line 4
    iget-object v0, p1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    .line 7
    iget-object p1, p1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 8
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    .line 11
    iget-object p1, p1, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz p1, :cond_0

    .line 12
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-interface {p1, p2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStop(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    :cond_0
    const-string p1, "TXVodDownloadManagerImpl"

    const-string p2, "Download task canceled"

    .line 13
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const-string v0, "SimpleAES"

    .line 15
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/b/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/downloader/a/a;

    .line 21
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getAppId()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    move-result v4

    .line 23
    invoke-static {v1, v2, v3, v4}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 24
    iget-object v2, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    .line 25
    invoke-static {v1, v2}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    iget-object v3, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    .line 27
    invoke-static {v1, v3}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 29
    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/downloader/a/a;->a(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/downloader/a/a;->b(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/c/a;->a()Lcom/tencent/liteav/txcvodplayer/c/a;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Lcom/tencent/rtmp/TXPlayInfoParams;->getAppId()I

    move-result v1

    .line 33
    invoke-virtual {p2}, Lcom/tencent/rtmp/TXPlayInfoParams;->getFileId()Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object v2, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->d:Ljava/lang/String;

    .line 35
    iget-object v3, p1, Lcom/tencent/liteav/txcvodplayer/b/c;->e:Ljava/lang/String;

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-static {v0, v1, p2, v2, v3}, Lcom/tencent/liteav/txcvodplayer/c/c;->a(Lcom/tencent/liteav/txcvodplayer/c/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "PlayInfoProtocolV4Storage"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "put params empty fileId: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " overlayKey:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " overlayIv:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "TXVodDownloadManagerImpl"

    const-string p2, "create local key exception!"

    .line 40
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$2;->b:Lcom/tencent/rtmp/downloader/a/b;

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$2;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-static {p2, v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/liteav/txcvodplayer/b/c;)V

    return-void
.end method
