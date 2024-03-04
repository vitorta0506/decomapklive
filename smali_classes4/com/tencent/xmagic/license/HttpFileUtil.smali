.class public Lcom/tencent/xmagic/license/HttpFileUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContentLength:J

.field private mContext:Landroid/content/Context;

.field private mDownloadingSize:J

.field private mFilename:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mLastModified:Ljava/lang/String;

.field private mListener:Lcom/tencent/xmagic/license/HttpFileListener;

.field private mNeedProgress:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/license/HttpFileListener;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mUrl:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mFolder:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mFilename:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    .line 7
    iput-boolean p6, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mNeedProgress:Z

    .line 8
    iput-object p7, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mLastModified:Ljava/lang/String;

    return-void
.end method

.method private callFailed(ZLjava/lang/Exception;Ljava/io/File;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p3, p2}, Lcom/tencent/xmagic/license/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private close(Ljava/io/FileOutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Lcom/tencent/xmagic/license/HttpFileListener;->onProcessEnd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private fail(Ljava/lang/Exception;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, v0, p1}, Lcom/tencent/xmagic/license/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    return-void
.end method

.method private request()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mFolder:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v4

    move-object v8, v5

    goto/16 :goto_a

    .line 4
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 5
    new-instance v0, Ljava/net/URL;

    iget-object v5, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 6
    :try_start_3
    iget-object v0, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mLastModified:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v0, :cond_1

    :try_start_4
    const-string v0, "If-Modified-Since"

    .line 7
    iget-object v6, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mLastModified:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v4

    goto/16 :goto_a

    :cond_1
    :goto_1
    const/16 v0, 0x7530

    .line 8
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 9
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v6, "GET"

    .line 11
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 13
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/16 v0, 0x64

    if-eqz v7, :cond_b

    :try_start_6
    const-string v6, "Last-Modified"

    .line 14
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    iput-object v6, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mLastModified:Ljava/lang/String;

    .line 16
    iget-boolean v8, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mNeedProgress:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_6

    .line 17
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v11, v8

    iput-wide v11, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mContentLength:J

    cmp-long v8, v11, v9

    if-gtz v8, :cond_4

    .line 18
    iget-object v0, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {v0, v2, v4}, Lcom/tencent/xmagic/license/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 20
    :cond_3
    invoke-direct {v1, v4, v4, v5}, Lcom/tencent/xmagic/license/HttpFileUtil;->close(Ljava/io/FileOutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    return-void

    .line 21
    :cond_4
    :try_start_8
    invoke-static {v11, v12}, Lcom/tencent/xmagic/license/FileUtil;->isExternalStorageSpaceEnough(J)Z

    move-result v8

    if-nez v8, :cond_6

    .line 22
    iget-object v0, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    if-eqz v0, :cond_5

    .line 23
    invoke-interface {v0, v2, v4}, Lcom/tencent/xmagic/license/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 24
    :cond_5
    invoke-direct {v1, v4, v4, v5}, Lcom/tencent/xmagic/license/HttpFileUtil;->close(Ljava/io/FileOutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    return-void

    .line 25
    :cond_6
    :try_start_9
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/16 v11, 0x2000

    :try_start_a
    new-array v11, v11, [B

    .line 26
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 27
    :try_start_b
    iput-wide v9, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mDownloadingSize:J

    .line 28
    :cond_7
    :goto_3
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    .line 29
    invoke-virtual {v12, v11, v3, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 30
    iget-boolean v10, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mNeedProgress:Z

    if-eqz v10, :cond_7

    .line 31
    iget-wide v13, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mDownloadingSize:J

    const-wide/16 v15, 0x64

    mul-long v17, v13, v15

    iget-wide v3, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mContentLength:J

    move-object/from16 v19, v11

    div-long v10, v17, v3

    long-to-int v11, v10

    int-to-long v9, v9

    add-long/2addr v13, v9

    .line 32
    iput-wide v13, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mDownloadingSize:J

    mul-long v13, v13, v15

    .line 33
    div-long/2addr v13, v3

    long-to-int v3, v13

    if-eq v11, v3, :cond_8

    .line 34
    iget-object v4, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    if-eqz v4, :cond_8

    .line 35
    invoke-interface {v4, v3}, Lcom/tencent/xmagic/license/HttpFileListener;->onProgressUpdate(I)V

    :cond_8
    move-object/from16 v11, v19

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3

    .line 36
    :cond_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 37
    iget-object v3, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    if-eqz v3, :cond_a

    .line 38
    invoke-interface {v3, v0}, Lcom/tencent/xmagic/license/HttpFileListener;->onProgressUpdate(I)V

    .line 39
    iget-object v0, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    invoke-interface {v0, v2, v6}, Lcom/tencent/xmagic/license/HttpFileListener;->onSaveSuccess(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_a
    move-object v4, v12

    const/4 v0, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v4, v12

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move v3, v7

    move-object v4, v12

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move v3, v7

    const/4 v4, 0x0

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    goto :goto_8

    :catch_4
    move-exception v0

    move v3, v7

    const/4 v4, 0x0

    const/4 v8, 0x0

    goto :goto_a

    :cond_b
    const/16 v3, 0x130

    if-ne v6, v3, :cond_d

    .line 40
    :try_start_c
    iget-object v3, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    if-eqz v3, :cond_c

    .line 41
    invoke-interface {v3, v0}, Lcom/tencent/xmagic/license/HttpFileListener;->onProgressUpdate(I)V

    .line 42
    iget-object v0, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    iget-object v3, v1, Lcom/tencent/xmagic/license/HttpFileUtil;->mLastModified:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v0, v4, v3}, Lcom/tencent/xmagic/license/HttpFileListener;->onSaveSuccess(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    move-object v0, v4

    move-object v8, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    const/4 v4, 0x0

    goto :goto_7

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    .line 43
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http status got exception. code = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object v8, v4

    .line 44
    :goto_5
    invoke-direct {v1, v4, v8, v5}, Lcom/tencent/xmagic/license/HttpFileUtil;->close(Ljava/io/FileOutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    goto :goto_b

    :catch_6
    move-exception v0

    :goto_6
    move-object v8, v4

    move v3, v7

    goto :goto_a

    :catchall_4
    move-exception v0

    :goto_7
    move-object v8, v4

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v8, v4

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v5, v4

    move-object v8, v5

    :goto_8
    invoke-direct {v1, v4, v8, v5}, Lcom/tencent/xmagic/license/HttpFileUtil;->close(Ljava/io/FileOutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 45
    throw v0

    :catch_8
    move-exception v0

    move-object v5, v4

    move-object v8, v5

    :goto_9
    const/4 v3, 0x0

    .line 46
    :goto_a
    invoke-direct {v1, v4, v8, v5}, Lcom/tencent/xmagic/license/HttpFileUtil;->close(Ljava/io/FileOutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    move v7, v3

    .line 47
    :goto_b
    invoke-direct {v1, v7, v0, v2}, Lcom/tencent/xmagic/license/HttpFileUtil;->callFailed(ZLjava/lang/Exception;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/xmagic/license/FileUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mUrl:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Lcom/tencent/xmagic/license/HttpFileUtil;->mListener:Lcom/tencent/xmagic/license/HttpFileListener;

    if-eqz v1, :cond_4

    .line 8
    invoke-interface {v1, v0, v3}, Lcom/tencent/xmagic/license/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/tencent/xmagic/license/HttpFileUtil;->request()V

    return-void

    .line 10
    :cond_5
    :goto_3
    invoke-direct {p0, v3, v1}, Lcom/tencent/xmagic/license/HttpFileUtil;->fail(Ljava/lang/Exception;I)V

    return-void
.end method
