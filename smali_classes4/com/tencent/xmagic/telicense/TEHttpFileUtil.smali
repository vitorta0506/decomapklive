.class Lcom/tencent/xmagic/telicense/TEHttpFileUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DOWNLOAD_EXCEPTION:I = 0x3

.field private static final DOWNLOAD_NOT_MODIFIED:I = 0x1

.field private static final DOWNLOAD_STATUS_INVALID:I = 0x2

.field private static final DOWNLOAD_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TEHttpFileUtil"


# instance fields
.field private mFilename:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mLastModified:Ljava/lang/String;

.field private mListener:Lcom/tencent/xmagic/telicense/TEHttpFileListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TEHttpFileListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mFolder:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mFilename:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mListener:Lcom/tencent/xmagic/telicense/TEHttpFileListener;

    .line 6
    iput-object p5, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mLastModified:Ljava/lang/String;

    return-void
.end method

.method private result(ILjava/io/File;I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mListener:Lcom/tencent/xmagic/telicense/TEHttpFileListener;

    const-string p2, "http connection failed,undefined"

    invoke-interface {p1, p2}, Lcom/tencent/xmagic/telicense/TEHttpFileListener;->onDownloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mListener:Lcom/tencent/xmagic/telicense/TEHttpFileListener;

    const-string p2, "http connection failed,IO exception"

    invoke-interface {p1, p2}, Lcom/tencent/xmagic/telicense/TEHttpFileListener;->onDownloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mListener:Lcom/tencent/xmagic/telicense/TEHttpFileListener;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http connection failed,statusCode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tencent/xmagic/telicense/TEHttpFileListener;->onDownloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mListener:Lcom/tencent/xmagic/telicense/TEHttpFileListener;

    invoke-interface {p1}, Lcom/tencent/xmagic/telicense/TEHttpFileListener;->onNotModified()V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mListener:Lcom/tencent/xmagic/telicense/TEHttpFileListener;

    iget-object p3, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mLastModified:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/tencent/xmagic/telicense/TEHttpFileListener;->onDownloadSuccess(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "run: client.disconnect(),e="

    const-string v1, "run: responseIs.close(),e="

    const-string v2, "run: fos.close(),e="

    const-string v3, "TEHttpFileUtil"

    .line 1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mFolder:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 5
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xc8

    const/4 v6, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 9
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mUrl:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    :try_start_1
    iget-object v8, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mLastModified:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "If-Modified-Since"

    .line 11
    iget-object v9, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mLastModified:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v8, 0x2710

    .line 12
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 13
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v8, 0x1

    .line 14
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v9, "GET"

    .line 15
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 17
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run: statusCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    if-ne v9, v5, :cond_4

    const-string v5, "Last-Modified"

    .line 18
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    iput-object v5, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mLastModified:Ljava/lang/String;

    .line 20
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v8, 0x2000

    :try_start_3
    new-array v8, v8, [B

    .line 21
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :goto_0
    :try_start_4
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v12, -0x1

    if-eq v6, v12, :cond_3

    .line 23
    invoke-virtual {v11, v8, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v11

    const/4 v8, 0x0

    goto :goto_3

    :catchall_0
    move-exception v4

    move-object v8, v7

    move-object v6, v11

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v8, v7

    move-object v7, v5

    move v5, v9

    move-object v9, v6

    move-object v6, v11

    goto/16 :goto_6

    :catchall_1
    move-exception v4

    move-object v8, v7

    :goto_1
    move-object v7, v5

    goto/16 :goto_b

    :catch_1
    move-exception v8

    move-object v13, v7

    move-object v7, v5

    move v5, v9

    move-object v9, v8

    move-object v8, v13

    goto/16 :goto_6

    :cond_4
    const/16 v5, 0x130

    if-ne v9, v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    :goto_2
    move-object v5, v6

    :goto_3
    if-eqz v6, :cond_6

    .line 25
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v6

    .line 26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 28
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    :cond_7
    :goto_5
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_a

    :catch_4
    move-exception v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    :catch_5
    move-exception v5

    move-object v8, v7

    move-object v7, v6

    move v13, v9

    move-object v9, v5

    move v5, v13

    goto :goto_6

    :catchall_2
    move-exception v4

    move-object v8, v7

    move-object v7, v6

    goto/16 :goto_b

    :catch_6
    move-exception v8

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    goto :goto_6

    :catchall_3
    move-exception v4

    move-object v7, v6

    move-object v8, v7

    goto/16 :goto_b

    :catch_7
    move-exception v7

    move-object v8, v6

    move-object v9, v7

    move-object v7, v8

    .line 34
    :goto_6
    :try_start_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run: exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v9, 0x3

    if-eqz v6, :cond_8

    .line 35
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception v6

    .line 36
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_7
    if-eqz v7, :cond_9

    .line 38
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception v2

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_8
    if-eqz v8, :cond_a

    .line 41
    :try_start_b
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    move-exception v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_9
    move v9, v5

    const/4 v8, 0x3

    .line 44
    :goto_a
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->mListener:Lcom/tencent/xmagic/telicense/TEHttpFileListener;

    if-nez v0, :cond_b

    return-void

    .line 45
    :cond_b
    invoke-direct {p0, v8, v4, v9}, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->result(ILjava/io/File;I)V

    return-void

    :catchall_4
    move-exception v4

    :goto_b
    if-eqz v6, :cond_c

    .line 46
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_c

    :catch_b
    move-exception v5

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_c
    if-eqz v7, :cond_d

    .line 49
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_d

    :catch_c
    move-exception v2

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_d
    if-eqz v8, :cond_e

    .line 52
    :try_start_e
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_e

    :catch_d
    move-exception v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_e
    :goto_e
    throw v4
.end method
