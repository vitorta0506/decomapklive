.class final Lcom/tencent/rtmp/downloader/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/downloader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/downloader/a/c;

.field final synthetic b:Lcom/tencent/liteav/txcvodplayer/b/c;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tencent/rtmp/downloader/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/downloader/a/b;Lcom/tencent/rtmp/downloader/a/c;Lcom/tencent/liteav/txcvodplayer/b/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    iput-object p2, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    iput-object p3, p0, Lcom/tencent/rtmp/downloader/a/b$3;->b:Lcom/tencent/liteav/txcvodplayer/b/c;

    iput-object p4, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "TXVodDownloadManagerImpl"

    const-string v1, "prepareDownloadMedia onError"

    .line 74
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 76
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 77
    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 79
    iget-object v1, v1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 80
    iget-object v2, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 83
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v2, -0x1389

    const-string v3, "get substream infos failure"

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 85
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 3
    iget-object v0, p1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 6
    iget-object p1, p1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 7
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 10
    iget-object p1, p1, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz p1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v1, -0x1389

    const-string v2, "get substream infos failure"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->b:Lcom/tencent/liteav/txcvodplayer/b/c;

    .line 14
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/b/c;->b:Lcom/tencent/liteav/txcvodplayer/b/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 15
    iget-object v0, v1, Lcom/tencent/liteav/txcvodplayer/b/b;->f:Ljava/util/List;

    goto/16 :goto_1

    .line 16
    :cond_2
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/b/f;->k()Ljava/util/List;

    move-result-object v1

    .line 18
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/c;->c:Lcom/tencent/liteav/txcvodplayer/b/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/f;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_7

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/liteav/txcvodplayer/b/f$a;

    .line 22
    new-instance v5, Lcom/tencent/liteav/txcvodplayer/b/c$d;

    invoke-direct {v5}, Lcom/tencent/liteav/txcvodplayer/b/c$d;-><init>()V

    .line 23
    iget-object v6, v4, Lcom/tencent/liteav/txcvodplayer/b/f$a;->b:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/liteav/txcvodplayer/b/c$d;->a:Ljava/lang/String;

    .line 24
    iget-object v4, v4, Lcom/tencent/liteav/txcvodplayer/b/f$a;->c:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/liteav/txcvodplayer/b/g;

    .line 26
    iget v8, v7, Lcom/tencent/liteav/txcvodplayer/b/g;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 27
    iget v4, v7, Lcom/tencent/liteav/txcvodplayer/b/g;->c:I

    iput v4, v5, Lcom/tencent/liteav/txcvodplayer/b/c$d;->b:I

    .line 28
    iget v6, v7, Lcom/tencent/liteav/txcvodplayer/b/g;->b:I

    iput v6, v5, Lcom/tencent/liteav/txcvodplayer/b/c$d;->c:I

    if-lez v4, :cond_5

    const-string/jumbo v4, "video"

    .line 29
    iput-object v4, v5, Lcom/tencent/liteav/txcvodplayer/b/c$d;->d:Ljava/lang/String;

    .line 30
    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_1

    :cond_7
    move-object v0, v2

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    const/4 v3, 0x0

    .line 32
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/liteav/txcvodplayer/b/c$d;

    .line 34
    iget-object v5, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v5}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;->getDataSource()Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->getQuality()I

    move-result v5

    iget-object v6, v4, Lcom/tencent/liteav/txcvodplayer/b/c$d;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tencent/rtmp/downloader/a/a;->a(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    if-nez v5, :cond_a

    const-string v0, "TXVodDownloadManagerImpl"

    const-string v3, "resolution is not matched, use last resolution!"

    .line 36
    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget v3, v4, Lcom/tencent/liteav/txcvodplayer/b/c$d;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/tencent/liteav/txcvodplayer/b/c$d;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v2

    .line 39
    :goto_4
    invoke-static {p1, v0}, Lcom/tencent/rtmp/downloader/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->b:Lcom/tencent/liteav/txcvodplayer/b/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/b/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v3, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 42
    array-length v4, v3

    if-lez v4, :cond_10

    .line 43
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    .line 44
    iget-object v4, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "voddrm.token."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".m3u8"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    const-string v0, ".m3u8"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 50
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".m3u8"

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    const-string v1, ".m3u8"

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 53
    :cond_d
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 54
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "voddrm.token."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_e
    :goto_5
    move-object v2, p1

    :cond_f
    const-string p1, "TXVodDownloadManagerImpl"

    const-string/jumbo v0, "to download subStreamUrl: "

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 59
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 60
    iget-object p1, p1, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 61
    monitor-enter p1

    .line 62
    :try_start_2
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 63
    iget-object v0, v0, Lcom/tencent/rtmp/downloader/a/b;->b:Ljava/util/ArrayList;

    .line 64
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    .line 67
    iget-object p1, p1, Lcom/tencent/rtmp/downloader/a/b;->c:Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;

    if-eqz p1, :cond_11

    .line 68
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    const/16 v1, -0x138b

    const-string v2, "No such resolution"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/rtmp/downloader/ITXVodDownloadListener;->onDownloadError(Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;ILjava/lang/String;)V

    :cond_11
    const-string p1, "TXVodDownloadManagerImpl"

    const-string/jumbo v0, "to download subStreamUrl is null"

    .line 69
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 70
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 71
    :cond_12
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/downloader/a/c;->b(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/a/b$3;->d:Lcom/tencent/rtmp/downloader/a/b;

    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/b$3;->a:Lcom/tencent/rtmp/downloader/a/c;

    .line 73
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/downloader/a/b;->a(Lcom/tencent/rtmp/downloader/a/c;)V

    return-void
.end method
