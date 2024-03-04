.class Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;->fetchLicenseOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/youtu/xmagic/YTDeviceInfo;)Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchThreadRunnable"
.end annotation


# instance fields
.field result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

.field final synthetic this$0:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$device_id:Ljava/lang/String;

.field final synthetic val$device_info_encrypted:Ljava/lang/String;

.field final synthetic val$package_name:Ljava/lang/String;

.field final synthetic val$platform:Ljava/lang/String;

.field final synthetic val$secret_key:Ljava/lang/String;

.field final synthetic val$url_str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->this$0:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;

    iput-object p2, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$appid:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$secret_key:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$platform:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$device_id:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$device_info_encrypted:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$package_name:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$url_str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    invoke-direct {p2, p1}, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;-><init>(Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;)V

    iput-object p2, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "error_code"

    const-string v1, "HmacSHA256"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    .line 2
    div-long/2addr v3, v5

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$appid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 5
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v8, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$secret_key:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 6
    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    const/4 v5, 0x2

    .line 8
    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "app_id"

    .line 10
    iget-object v7, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$appid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "auth_string"

    .line 11
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "machine_type"

    .line 12
    iget-object v6, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$platform:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "machine_id"

    .line 13
    iget-object v6, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$device_id:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "machine_info"

    .line 14
    iget-object v6, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$device_info_encrypted:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    .line 15
    iget-object v6, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$package_name:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "time_stamp"

    .line 16
    invoke-virtual {v5, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->val$url_str:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "POST"

    .line 20
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 21
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 22
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 24
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "Content-type"

    const-string v5, "application/json"

    .line 25
    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1388

    .line 26
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 27
    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 28
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 29
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 31
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 32
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 33
    iget-object v1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v1, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->http_status:I

    .line 34
    iget-object v1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    iget v1, v1, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->http_status:I

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_2

    .line 35
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 36
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 37
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_code:I

    .line 43
    iget-object v0, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    const-string v1, "error_msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_msg:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    iget v1, v0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_code:I

    if-nez v1, :cond_1

    const-string v1, "license"

    .line 45
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->license:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    const-string v1, "bind_type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->bind_type:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    const-string v1, "auth_type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->auth_type:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v2, v4

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v2, v4

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v2, v4

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object v2, v4

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v2, v4

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object v2, v4

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object v2, v4

    goto/16 :goto_e

    .line 48
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection status: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    iget v4, v4, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->http_status:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    if-eqz v2, :cond_a

    .line 49
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_10

    :catch_7
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_8

    :catch_c
    move-exception v0

    goto :goto_a

    :catch_d
    move-exception v0

    goto/16 :goto_c

    :catch_e
    move-exception v0

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto/16 :goto_11

    :catch_f
    move-exception v0

    move-object v3, v2

    .line 51
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_3

    .line 52
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    goto :goto_3

    :catch_10
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v3, :cond_b

    goto/16 :goto_10

    :catch_11
    move-exception v0

    move-object v3, v2

    .line 54
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_4

    .line 55
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_12

    goto :goto_5

    :catch_12
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    if-eqz v3, :cond_b

    goto/16 :goto_10

    :catch_13
    move-exception v0

    move-object v3, v2

    .line 57
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_5

    .line 58
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14

    goto :goto_7

    :catch_14
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_7
    if-eqz v3, :cond_b

    goto :goto_10

    :catch_15
    move-exception v0

    move-object v3, v2

    .line 60
    :goto_8
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v2, :cond_6

    .line 61
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_16

    goto :goto_9

    :catch_16
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_9
    if-eqz v3, :cond_b

    goto :goto_10

    :catch_17
    move-exception v0

    move-object v3, v2

    .line 63
    :goto_a
    :try_start_d
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v2, :cond_7

    .line 64
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_18

    goto :goto_b

    :catch_18
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_b
    if-eqz v3, :cond_b

    goto :goto_10

    :catch_19
    move-exception v0

    move-object v3, v2

    .line 66
    :goto_c
    :try_start_f
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v2, :cond_8

    .line 67
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1a

    goto :goto_d

    :catch_1a
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_d
    if-eqz v3, :cond_b

    goto :goto_10

    :catch_1b
    move-exception v0

    move-object v3, v2

    .line 69
    :goto_e
    :try_start_11
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v2, :cond_9

    .line 70
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1c

    goto :goto_f

    :catch_1c
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_f
    if-eqz v3, :cond_b

    .line 72
    :cond_a
    :goto_10
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_b
    return-void

    :catchall_2
    move-exception v0

    :goto_11
    if-eqz v2, :cond_c

    .line 73
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1d

    goto :goto_12

    :catch_1d
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_12
    if-eqz v3, :cond_d

    .line 75
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_d
    throw v0
.end method
