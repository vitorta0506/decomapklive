.class public Lcn/jiguang/as/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcn/jiguang/s/a;->b([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/as/a;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/jiguang/as/a;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x79t
        0x44t
        0x54t
        0x69t
        0x7bt
        0x2ct
        0x3et
        0x1ft
        0x43t
        0x7ct
        0x3bt
        0x73t
        0x26t
        0x5t
        0x44t
        0x2ct
        0x26t
        0x7ct
        0x61t
        0x45t
        0x53t
        0x71t
        0x26t
        0x75t
        0x7ft
        0x1ft
        0x57t
        0x70t
        0x27t
        0x65t
        0x61t
        0x5ft
        0x4dt
        0x75t
    .end array-data
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcn/jiguang/as/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/g/a;->W()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    :goto_0
    new-instance v1, Lcn/jiguang/as/a$1;

    invoke-direct {v1, p0}, Lcn/jiguang/as/a$1;-><init>(Landroid/content/Context;)V

    mul-int/lit16 v0, v0, 0x3e8

    const-string p0, "DELAY_TASK"

    invoke-static {p0, v1, v0}, Lcn/jiguang/bg/d;->a(Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const-string v0, "data"

    const-string v1, "UTF-8"

    const-string v2, "application/json"

    const-string v3, ""

    const-string v4, "LogFileHelper"

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/ar/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "request upload token failed because can\'t get appKey"

    invoke-static {v4, v0}, Lcn/jiguang/as/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v5}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_0
    :try_start_1
    sget-object v7, Lcn/jiguang/as/a;->b:Ljava/lang/String;

    sget-boolean v8, Lcn/jiguang/o/c$a;->a:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcn/jiguang/as/a;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v7, Lcn/jiguang/as/a;->a:Ljava/lang/String;

    :cond_1
    invoke-static {p0}, Lcn/jiguang/d/a;->f(Landroid/content/Context;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_2

    const-string v0, "request l config failed because can\'t get uid"

    invoke-static {v4, v0}, Lcn/jiguang/as/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {v5}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    return-object v5

    :cond_2
    :try_start_2
    invoke-static {p0}, Lcn/jiguang/d/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v0, "request l config failed because need register first"

    invoke-static {v4, v0}, Lcn/jiguang/as/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v5}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    return-object v5

    :cond_3
    :try_start_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "appkey"

    invoke-virtual {v12, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "uid"

    invoke-virtual {v12, v13, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v13, "platform"

    const-string v14, "a"

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "key"

    move-object/from16 v14, p1

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "Content-Type"

    invoke-interface {v11, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "Accept"

    invoke-interface {v11, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-Http-Platform"

    const-string v13, "android"

    invoke-interface {v11, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-Http-Appkey"

    invoke-interface {v11, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lcn/jiguang/f/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/f/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_4

    invoke-static {v5}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    return-object v5

    :cond_4
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v6, 0xa

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_5

    invoke-static {v5}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    return-object v5

    :cond_5
    :try_start_5
    const-string v6, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Basic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Charset"

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", param json:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", header is : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/jiguang/as/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    invoke-static {p0, v7}, Lcn/jiguang/net/HttpUtils;->getHttpURLConnectionWithProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v6, 0x7530

    :try_start_6
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_1
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_7
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v1, v5

    move-object v5, v6

    goto :goto_2

    :cond_8
    move-object v1, v5

    :goto_2
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseBody:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/jiguang/as/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request upload token success,response body:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/jiguang/as/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "code"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x7d0

    if-ne v5, v7, :cond_a

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "token"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    invoke-static {v1}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :cond_a
    invoke-static {v1}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v5

    :goto_3
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUploadToken error is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/as/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {v5}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_b

    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-object v3

    :catchall_3
    move-exception v0

    invoke-static {v5}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v0
.end method
