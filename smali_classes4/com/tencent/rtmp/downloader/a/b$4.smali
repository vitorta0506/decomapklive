.class final Lcom/tencent/rtmp/downloader/a/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/downloader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/downloader/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/downloader/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/txcplayer/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/a/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/downloader/a/c;->h(I)V

    .line 3
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 5
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStart(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/liteav/txcplayer/a/b;ILjava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/a/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "TXVodDownloadManagerImpl"

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 9
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/downloader/a/c;->h(I)V

    .line 10
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    .line 11
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 12
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 15
    iget-object v1, v1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 19
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 21
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 22
    iget-object p2, p2, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    .line 23
    invoke-interface {p2, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStop(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    return-void

    :cond_0
    const/16 v0, 0x3f0

    if-ne p2, v0, :cond_1

    .line 24
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 25
    iget-object p2, p2, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    const/16 v0, -0x138e

    .line 26
    invoke-interface {p2, p1, v0, p3}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    return-void

    :cond_1
    const v0, 0xd5eda3

    if-ne p2, v0, :cond_2

    .line 27
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 28
    iget-object p2, p2, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    const/16 v0, -0x1390

    .line 29
    invoke-interface {p2, p1, v0, p3}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    return-void

    .line 30
    :cond_2
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 31
    iget-object p2, p2, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    const/16 v0, -0x138d

    .line 32
    invoke-interface {p2, p1, v0, p3}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Lcom/tencent/liteav/txcplayer/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/a/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "TXVodDownloadManagerImpl"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadEnd "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/downloader/a/c;->h(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 6
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 9
    iget-object v1, v1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 13
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadStop(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(Lcom/tencent/liteav/txcplayer/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/a/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "TXVodDownloadManagerImpl"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadFinish "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/downloader/a/c;->h(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-static {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 6
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 9
    iget-object v1, v1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 13
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getPlayPath()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/tencent/rtmp/downloader/a/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 17
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    .line 18
    invoke-interface {v0, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadFinish(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 20
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    const/16 v1, -0x138b

    const-string v2, "The file not exist"

    .line 21
    invoke-interface {v0, p1, v1, v2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lcom/tencent/liteav/txcplayer/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/liteav/txcplayer/a/b;)Lcom/tencent/rtmp/downloader/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$4;->a:Lcom/tencent/rtmp/downloader/a/b;

    .line 3
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadProgress(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;)V

    :cond_0
    return-void
.end method
