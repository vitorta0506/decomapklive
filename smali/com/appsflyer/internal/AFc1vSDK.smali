.class public final Lcom/appsflyer/internal/AFc1vSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final values:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/appsflyer/internal/AFc1vSDK;->values:I

    return-void
.end method

.method private static AFKeystoreWrapper(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    .line 6
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    const/16 v0, 0xa

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 11
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v0

    :goto_2
    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    .line 14
    :cond_5
    throw p0
.end method


# virtual methods
.method public final AFInAppEventType(Lcom/appsflyer/internal/AFb1wSDK;)Lcom/appsflyer/internal/AFc1pSDK;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFb1wSDK;",
            ")",
            "Lcom/appsflyer/internal/AFc1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v2, "ms"

    const-string v3, "\n took "

    const-string v4, "] "

    const-string v5, "HTTP: ["

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType()[B

    move-result-object v0

    .line 3
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v11, v1, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v11, v1, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType:Ljava/lang/String;

    .line 7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType()[B

    move-result-object v10

    if-eqz v10, :cond_1

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1wSDK;->AFKeystoreWrapper()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v10, "<encrypted>"

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    move-object v10, v11

    :goto_0
    const-string v11, "\n payload: "

    .line 10
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    iget-object v10, v1, Lcom/appsflyer/internal/AFb1wSDK;->valueOf:Ljava/util/Map;

    .line 12
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    const-string v12, "\n "

    .line 13
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 15
    new-instance v9, Ljava/net/URL;

    .line 16
    iget-object v10, v1, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType:Ljava/lang/String;

    .line 17
    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 18
    :try_start_1
    iget-object v10, v1, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 19
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1wSDK;->values()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    .line 21
    invoke-virtual {v9, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 22
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1wSDK;->AFLogger()Z

    move-result v10

    if-nez v10, :cond_4

    .line 23
    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_4
    move-object/from16 v10, p0

    .line 24
    :try_start_2
    iget v12, v10, Lcom/appsflyer/internal/AFc1vSDK;->values:I

    .line 25
    iget v13, v1, Lcom/appsflyer/internal/AFb1wSDK;->AFLogger:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    move v12, v13

    .line 26
    :cond_5
    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 27
    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1wSDK;->AFKeystoreWrapper()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "application/octet-stream"

    goto :goto_2

    :cond_6
    const-string v12, "application/json"

    :goto_2
    const-string v13, "Content-Type"

    .line 29
    invoke-virtual {v9, v13, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v12, v1, Lcom/appsflyer/internal/AFb1wSDK;->valueOf:Ljava/util/Map;

    .line 31
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v14, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/4 v12, 0x1

    if-eqz v0, :cond_9

    .line 33
    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v13, "Content-Length"

    .line 34
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 35
    :try_start_3
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :try_start_4
    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    :try_start_5
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v13

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 38
    :cond_8
    throw v0

    .line 39
    :cond_9
    :goto_5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 40
    div-int/lit8 v0, v0, 0x64

    const/4 v13, 0x2

    if-ne v0, v13, :cond_a

    const/4 v11, 0x1

    .line 41
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName()Z

    move-result v0

    const-string v12, ""

    if-eqz v0, :cond_b

    .line 42
    invoke-static {v9, v11}, Lcom/appsflyer/internal/AFc1vSDK;->AFKeystoreWrapper(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_6

    :cond_b
    move-object v15, v12

    .line 43
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    .line 44
    new-instance v0, Lcom/appsflyer/internal/AFc1wSDK;

    invoke-direct {v0, v12, v13}, Lcom/appsflyer/internal/AFc1wSDK;-><init>(J)V

    .line 45
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "response code:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n body:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lcom/appsflyer/internal/AFc1wSDK;->AFInAppEventParameterName:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 46
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 47
    new-instance v12, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 48
    invoke-interface {v12, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v8, Lcom/appsflyer/internal/AFc1pSDK;

    .line 50
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    move-object v14, v8

    move/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lcom/appsflyer/internal/AFc1pSDK;-><init>(Ljava/lang/Object;IZLjava/util/Map;Lcom/appsflyer/internal/AFc1wSDK;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 51
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v10, p0

    :goto_7
    move-object v8, v9

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    :goto_8
    move-object v8, v9

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v10, p0

    .line 52
    :goto_9
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    .line 53
    new-instance v6, Lcom/appsflyer/internal/AFc1wSDK;

    invoke-direct {v6, v11, v12}, Lcom/appsflyer/internal/AFc1wSDK;-><init>(J)V

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "error: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v6, Lcom/appsflyer/internal/AFc1wSDK;->AFInAppEventParameterName:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    new-instance v1, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    invoke-direct {v1, v0, v6}, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;-><init>(Ljava/lang/Throwable;Lcom/appsflyer/internal/AFc1wSDK;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    :goto_a
    if-eqz v8, :cond_c

    .line 57
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 58
    :cond_c
    throw v0
.end method