.class public Lcom/guochao/faceshow/utils/HttpFileUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final BUFFERED_READER_SIZE:I = 0x2000

.field public static final TIMEOUT:I = 0x7530


# instance fields
.field private mContentLength:J

.field private mDownloadingSize:J

.field private mFilename:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

.field private mNeedProgress:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/utils/HttpFileListener;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/utils/HttpFileUtil;->mUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/utils/HttpFileUtil;->mFolder:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/utils/HttpFileUtil;->mFilename:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    .line 6
    iput-boolean p5, p0, Lcom/guochao/faceshow/utils/HttpFileUtil;->mNeedProgress:Z

    return-void
.end method

.method private fail(Ljava/lang/Exception;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, v0, p1}, Lcom/guochao/faceshow/utils/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Ln7/c;->c()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mUrl:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mUrl:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mFolder:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v4, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    if-eqz v4, :cond_2

    .line 8
    invoke-interface {v4, v0, v3}, Lcom/guochao/faceshow/utils/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mFolder:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v3

    move-object/from16 v16, v5

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v5, v3

    move-object v6, v5

    move-object v8, v6

    goto/16 :goto_b

    .line 12
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 13
    new-instance v0, Ljava/net/URL;

    iget-object v5, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/16 v0, 0x7530

    .line 14
    :try_start_3
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 15
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v6, "GET"

    .line 17
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 19
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_b

    .line 20
    :try_start_4
    iget-boolean v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mNeedProgress:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_6

    .line 21
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v8, v0

    iput-wide v8, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mContentLength:J

    .line 22
    invoke-static {v8, v9}, Lcb/a;->b(J)Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    if-eqz v0, :cond_5

    .line 24
    invoke-interface {v0, v4, v3}, Lcom/guochao/faceshow/utils/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 25
    :cond_5
    :try_start_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 26
    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    invoke-interface {v0}, Lcom/guochao/faceshow/utils/HttpFileListener;->onProcessEnd()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v6, v3

    move-object v8, v6

    :goto_3
    move v2, v7

    goto/16 :goto_b

    .line 27
    :cond_6
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/16 v0, 0x2000

    :try_start_8
    new-array v0, v0, [B

    .line 28
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-wide/16 v9, 0x0

    .line 29
    :try_start_9
    iput-wide v9, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mDownloadingSize:J

    .line 30
    :cond_7
    :goto_4
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    .line 31
    invoke-virtual {v8, v0, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 32
    iget-boolean v10, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mNeedProgress:Z

    if-eqz v10, :cond_7

    .line 33
    iget-wide v10, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mDownloadingSize:J

    const-wide/16 v12, 0x64

    mul-long v14, v10, v12

    iget-wide v2, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mContentLength:J

    div-long/2addr v14, v2

    long-to-int v15, v14

    int-to-long v12, v9

    add-long/2addr v10, v12

    .line 34
    iput-wide v10, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mDownloadingSize:J

    const-wide/16 v12, 0x64

    mul-long v10, v10, v12

    .line 35
    div-long/2addr v10, v2

    long-to-int v2, v10

    if-eq v15, v2, :cond_8

    .line 36
    iget-object v3, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    if-eqz v3, :cond_8

    .line 37
    invoke-interface {v3, v2}, Lcom/guochao/faceshow/utils/HttpFileListener;->onProgressUpdate(I)V

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_4

    .line 38
    :cond_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 39
    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    if-eqz v0, :cond_a

    const/16 v2, 0x64

    .line 40
    invoke-interface {v0, v2}, Lcom/guochao/faceshow/utils/HttpFileListener;->onProgressUpdate(I)V

    .line 41
    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    invoke-interface {v0, v4}, Lcom/guochao/faceshow/utils/HttpFileListener;->onSaveSuccess(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    move-object v3, v8

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v16, v6

    const/4 v3, 0x0

    goto :goto_8

    :catch_4
    move-exception v0

    move v2, v7

    goto :goto_a

    .line 42
    :cond_b
    :try_start_a
    new-instance v0, Lcom/guochao/faceshow/utils/HttpStatusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http status got exception. code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/guochao/faceshow/utils/HttpStatusException;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_c

    .line 43
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    :catch_5
    nop

    goto :goto_c

    :cond_c
    :goto_6
    if-eqz v6, :cond_d

    .line 44
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 45
    :cond_d
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    iget-object v2, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    invoke-interface {v2}, Lcom/guochao/faceshow/utils/HttpFileListener;->onProcessEnd()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_c

    :catch_6
    move-exception v0

    move v2, v7

    goto :goto_9

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    goto :goto_7

    :catch_7
    move-exception v0

    const/4 v2, 0x0

    goto :goto_9

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_7
    const/16 v16, 0x0

    :goto_8
    if-eqz v3, :cond_e

    .line 47
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_e
    if-eqz v16, :cond_f

    .line 48
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_f
    if-eqz v5, :cond_10

    .line 49
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 50
    :cond_10
    iget-object v2, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    invoke-interface {v2}, Lcom/guochao/faceshow/utils/HttpFileListener;->onProcessEnd()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 51
    :catch_8
    throw v0

    :catch_9
    move-exception v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_9
    const/4 v6, 0x0

    :goto_a
    const/4 v8, 0x0

    :goto_b
    if-eqz v8, :cond_11

    .line 52
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_11
    if-eqz v6, :cond_12

    .line 53
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_12
    if-eqz v5, :cond_13

    .line 54
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 55
    :cond_13
    iget-object v3, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    invoke-interface {v3}, Lcom/guochao/faceshow/utils/HttpFileListener;->onProcessEnd()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :catch_a
    move v7, v2

    :goto_c
    if-eqz v7, :cond_14

    if-eqz v0, :cond_15

    .line 56
    :cond_14
    iget-object v0, v1, Lcom/guochao/faceshow/utils/HttpFileUtil;->mListener:Lcom/guochao/faceshow/utils/HttpFileListener;

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2}, Lcom/guochao/faceshow/utils/HttpFileListener;->onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V

    :cond_15
    return-void

    :cond_16
    :goto_d
    move-object v2, v3

    const/4 v3, 0x0

    .line 57
    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/utils/HttpFileUtil;->fail(Ljava/lang/Exception;I)V

    return-void
.end method
