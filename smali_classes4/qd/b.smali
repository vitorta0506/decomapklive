.class public Lqd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(ZLokhttp3/Response;Lod/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lokhttp3/Response;",
            "Lod/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 3
    :goto_0
    :try_start_1
    sget-object v4, Lqd/b;->a:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v4, :cond_1

    move-object v2, v0

    goto :goto_1

    .line 5
    :cond_1
    :try_start_2
    iget-object v2, v4, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->msg:Ljava/lang/String;

    :goto_1
    if-nez v4, :cond_2

    const/4 v5, -0x1

    goto :goto_2

    .line 6
    :cond_2
    iget v5, v4, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->code:I

    .line 7
    :goto_2
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p0, :cond_3

    .line 8
    invoke-static {p2, v3, v5, v2}, Lqd/c;->b(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_3

    .line 9
    :cond_3
    invoke-static {p2, v3, v5, v2}, Lqd/c;->c(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    move-object v2, v4

    goto :goto_6

    :catch_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    :goto_5
    move-object v3, v0

    .line 10
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v2

    :cond_4
    if-nez v4, :cond_5

    goto :goto_7

    .line 11
    :cond_5
    iget-object v0, v4, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->msg:Ljava/lang/String;

    :goto_7
    if-nez v4, :cond_6

    goto :goto_8

    .line 12
    :cond_6
    iget v1, v4, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->code:I

    :goto_8
    if-eqz p0, :cond_7

    .line 13
    invoke-static {p2, v3, v1, v0}, Lqd/c;->b(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_9

    .line 14
    :cond_7
    invoke-static {p2, v3, v1, v0}, Lqd/c;->c(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V

    :goto_9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;ZLjava/lang/Object;Lod/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Ljava/lang/Object;",
            "Lod/b<",
            "TR;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-static/range {v0 .. v5}, Lqd/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Object;Lod/b;)Lokhttp3/Request;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p3, p6}, Lqd/b;->c(Lokhttp3/Request;Ljava/lang/Class;Lod/b;)V

    return-void
.end method

.method private static c(Lokhttp3/Request;Ljava/lang/Class;Lod/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Request;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lod/b<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lqd/b$a;

    invoke-direct {v0, p1, p2}, Lqd/b$a;-><init>(Ljava/lang/Class;Lod/b;)V

    .line 2
    invoke-static {p0, v0}, Lqd/b;->d(Lokhttp3/Request;Lod/b;)V

    return-void
.end method

.method private static d(Lokhttp3/Request;Lod/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lod/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lqd/a;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    invoke-static {v0, p0, p1}, Lqd/b;->a(ZLokhttp3/Response;Lod/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Lqd/b;->a:Ljava/lang/String;

    const-string v0, "curr request is cancel"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 8
    invoke-static {p0}, Lqd/c;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lqd/c;->b(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
