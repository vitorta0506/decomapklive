.class final Lcom/tencent/imsdk/common/HttpClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/common/HttpClient;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connectTimeout:I

.field final synthetic val$content:[B

.field final synthetic val$downloadFile:Ljava/lang/String;

.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$proxyHost:Ljava/lang/String;

.field final synthetic val$proxyPassword:Ljava/lang/String;

.field final synthetic val$proxyPort:I

.field final synthetic val$proxyType:I

.field final synthetic val$proxyUserName:Ljava/lang/String;

.field final synthetic val$recvTimeout:I

.field final synthetic val$rollbackHttps2Http:Ljava/lang/String;

.field final synthetic val$uploadFile:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$use_origin_ip:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/Boolean;[BLjava/lang/String;Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$url:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$rollbackHttps2Http:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyType:I

    move-object v1, p4

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    move-object v1, p6

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$method:Ljava/lang/String;

    move v1, p9

    iput v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$connectTimeout:I

    move v1, p10

    iput v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$recvTimeout:I

    move-object v1, p11

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$headers:Ljava/util/Map;

    move-object v1, p12

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$use_origin_ip:Ljava/lang/Boolean;

    move-object v1, p13

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$content:[B

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$uploadFile:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$downloadFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "http request failed."

    .line 1
    iget-object v1, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$url:Ljava/lang/String;

    const-string v2, "https"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/common/HttpClient;->access$000()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$rollbackHttps2Http:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$rollbackHttps2Http:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/imsdk/common/HttpClient;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$rollbackHttps2Http:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/imsdk/common/HttpClient;->access$200(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/tencent/imsdk/common/HttpClient;->access$102(Z)Z

    .line 6
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/HttpClient;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v1, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$url:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, -0x1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    .line 8
    :try_start_0
    iget v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyType:I

    const/4 v6, 0x1

    if-ne v6, v5, :cond_2

    iget-object v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    if-eqz v5, :cond_2

    .line 9
    new-instance v5, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    iget v10, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 10
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 11
    :try_start_1
    iget-object v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 12
    new-instance v5, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;

    iget-object v7, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    .line 13
    :try_start_2
    iget v7, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyType:I

    if-ne v5, v7, :cond_3

    iget-object v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    if-eqz v5, :cond_3

    .line 14
    new-instance v5, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    iget v10, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 15
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 16
    :try_start_3
    iget-object v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 17
    new-instance v5, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;

    iget-object v7, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 18
    :cond_3
    :try_start_4
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 19
    :cond_4
    :goto_0
    :try_start_5
    iget-object v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 20
    iget v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$connectTimeout:I

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 21
    iget v5, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$recvTimeout:I

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v5, 0x0

    .line 22
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 23
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 24
    iget-object v7, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$headers:Ljava/util/Map;

    if-eqz v7, :cond_5

    .line 25
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_5
    iget-object v7, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$use_origin_ip:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v7, :cond_6

    .line 28
    move-object v7, v1

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    .line 29
    new-instance v8, Lcom/tencent/imsdk/common/HttpClient$1$1;

    invoke-direct {v8, p0, v7}, Lcom/tencent/imsdk/common/HttpClient$1$1;-><init>(Lcom/tencent/imsdk/common/HttpClient$1;Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 30
    :cond_6
    iget-object v7, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$content:[B

    if-eqz v7, :cond_7

    array-length v7, v7

    if-lez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    .line 31
    :goto_2
    iget-object v8, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$uploadFile:Ljava/lang/String;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v7, 0x1

    .line 32
    :goto_5
    iget-object v9, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$method:Ljava/lang/String;

    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x1000

    if-nez v9, :cond_e

    if-eqz v7, :cond_e

    .line 33
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v8, :cond_b

    .line 34
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$uploadFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 35
    :cond_b
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$content:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    :goto_6
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 37
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-array v9, v10, [B

    const/4 v11, 0x0

    .line 38
    :cond_c
    :goto_7
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-gez v12, :cond_d

    .line 39
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :cond_d
    add-int/2addr v11, v12

    .line 40
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v13, v9, v5, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    iget-object v12, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v12, :cond_c

    .line 42
    invoke-interface {v12, v5, v11, v8}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onProgress(III)V

    goto :goto_7

    .line 43
    :cond_e
    :goto_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 44
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_f

    .line 45
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v8, :cond_10

    .line 46
    :try_start_7
    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_f
    move-object v9, v4

    .line 47
    :cond_10
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    if-ne v8, v2, :cond_11

    const/4 v8, 0x0

    .line 48
    :cond_11
    iget-object v11, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$downloadFile:Ljava/lang/String;

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    goto :goto_a

    :cond_12
    const/4 v11, 0x0

    :goto_a
    if-ne v7, v3, :cond_17

    .line 49
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v11, :cond_13

    .line 50
    :try_start_8
    new-instance v12, Ljava/io/FileOutputStream;

    iget-object v13, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$downloadFile:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 51
    :cond_13
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_b
    new-array v10, v10, [B

    const/4 v13, 0x0

    .line 52
    :cond_14
    :goto_c
    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-gez v14, :cond_16

    if-eqz v11, :cond_15

    new-array v4, v5, [B

    goto :goto_d

    .line 53
    :cond_15
    move-object v5, v12

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 54
    :goto_d
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    move-object v0, v4

    move-object v4, v3

    goto :goto_e

    :cond_16
    add-int/2addr v13, v14

    .line 55
    invoke-virtual {v12, v10, v5, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 56
    iget-object v14, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v14, :cond_14

    .line 57
    invoke-interface {v14, v6, v13, v8}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onProgress(III)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v5, v4

    move v2, v7

    move-object v4, v3

    goto/16 :goto_1b

    :catch_0
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v7

    goto/16 :goto_15

    :catch_1
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto :goto_11

    :cond_17
    move-object v0, v4

    :goto_e
    if-eqz v4, :cond_18

    .line 58
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_f

    :catch_2
    move-exception v2

    .line 59
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    :cond_18
    :goto_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    iget-object v1, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v1, :cond_1d

    .line 62
    invoke-interface {v1, v7, v9, v0}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onCompleted(ILjava/util/Map;[B)V

    goto/16 :goto_1a

    :catchall_1
    move-exception v0

    move-object v5, v4

    goto :goto_10

    :catch_3
    move-exception v5

    move-object v6, v5

    move v3, v7

    move-object v5, v4

    goto :goto_15

    :catch_4
    move-exception v2

    move-object v5, v4

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v5, v4

    move-object v9, v5

    :goto_10
    move v2, v7

    goto/16 :goto_1b

    :catch_5
    move-exception v5

    move-object v9, v4

    move-object v6, v5

    move v3, v7

    goto :goto_14

    :catch_6
    move-exception v2

    move-object v5, v4

    move-object v9, v5

    :goto_11
    move v3, v7

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    move-object v5, v4

    goto :goto_12

    :catch_7
    move-exception v5

    move-object v9, v4

    goto :goto_13

    :catch_8
    move-exception v2

    move-object v5, v4

    goto :goto_17

    :catchall_4
    move-exception v0

    move-object v1, v4

    move-object v5, v1

    :goto_12
    move-object v9, v5

    const/16 v2, 0xc8

    goto/16 :goto_1b

    :catch_9
    move-exception v5

    move-object v1, v4

    move-object v9, v1

    :goto_13
    move-object v6, v5

    :goto_14
    move-object v5, v9

    .line 63
    :goto_15
    :try_start_a
    invoke-static {}, Lcom/tencent/imsdk/common/HttpClient;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 64
    :try_start_b
    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v4, :cond_19

    .line 65
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_16

    :catch_a
    move-exception v3

    .line 66
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_16
    if-eqz v1, :cond_1a

    .line 67
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 68
    :cond_1a
    iget-object v1, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v1, :cond_1d

    .line 69
    invoke-interface {v1, v2, v9, v0}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onCompleted(ILjava/util/Map;[B)V

    goto :goto_1a

    :catchall_5
    move-exception v0

    goto :goto_1b

    :catch_b
    move-exception v2

    move-object v1, v4

    move-object v5, v1

    :goto_17
    move-object v9, v5

    .line 70
    :goto_18
    :try_start_d
    invoke-static {}, Lcom/tencent/imsdk/common/HttpClient;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const/16 v0, 0x194

    if-eqz v4, :cond_1b

    .line 71
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_19

    :catch_c
    move-exception v2

    .line 72
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b
    :goto_19
    if-eqz v1, :cond_1c

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_1c
    iget-object v1, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v1, :cond_1d

    .line 75
    invoke-interface {v1, v0, v9, v5}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onCompleted(ILjava/util/Map;[B)V

    :cond_1d
    :goto_1a
    return-void

    :catchall_6
    move-exception v0

    move v2, v3

    :goto_1b
    if-eqz v4, :cond_1e

    .line 76
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_1c

    :catch_d
    move-exception v3

    .line 77
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1e
    :goto_1c
    if-eqz v1, :cond_1f

    .line 78
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 79
    :cond_1f
    iget-object v1, p0, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v1, :cond_20

    .line 80
    invoke-interface {v1, v2, v9, v5}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onCompleted(ILjava/util/Map;[B)V

    .line 81
    :cond_20
    throw v0
.end method
