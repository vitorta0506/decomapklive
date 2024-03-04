.class public Lqd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    sput-object v0, Lqd/c;->a:Landroid/app/Application;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Object;Lod/b;)Lokhttp3/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Object;",
            "Lod/b;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    const/4 p1, 0x0

    const-string/jumbo p2, "url is null or format url error,please check your code!!!"

    .line 2
    invoke-static {p5, p1, p0, p2}, Lqd/c;->c(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lqd/c;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-static {p1, p2, p3}, Lqd/c;->f(Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/RequestBody;

    move-result-object p2

    .line 5
    sget-object p3, Lqd/c;->a:Landroid/app/Application;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 6
    new-instance p5, Lokhttp3/Request$Builder;

    invoke-direct {p5}, Lokhttp3/Request$Builder;-><init>()V

    .line 7
    invoke-virtual {p5, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string/jumbo p2, "systoken"

    .line 9
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 10
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 14
    invoke-virtual {p0, p4}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 15
    :cond_2
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static b(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lod/b<",
            "TT;>;TT;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p0, Lod/a;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Lod/a;

    invoke-virtual {v0, p1, p2, p3}, Lod/a;->a(Ljava/lang/Object;ILjava/lang/String;)V

    .line 3
    :cond_1
    invoke-interface {p0, p1}, Lod/b;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lod/b<",
            "TT;>;TT;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lqd/c$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lqd/c$a;-><init>(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static d(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lqd/c;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "errorCode: 564"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "errorCode: 502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "errorCode: 504"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "timeout"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lqd/c;->g()V

    return-object v0

    :cond_2
    const-string v1, "UnknownHostException"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ConnectException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 8
    :cond_4
    :goto_0
    invoke-static {}, Lqd/c;->g()V

    return-object v0

    .line 9
    :cond_5
    :goto_1
    invoke-static {}, Lqd/c;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method static f(Ljava/util/Map;Ljava/util/Map;Z)Lokhttp3/RequestBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const-string p0, "application/json"

    .line 5
    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_4

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    new-instance p2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 9
    invoke-virtual {p2, v0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object p2

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v1}, Lcom/guochao/faceshow/utils/AAMethod;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p0

    return-object p0

    .line 17
    :cond_4
    new-instance p1, Lokhttp3/FormBody$Builder;

    invoke-direct {p1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 18
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 19
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 20
    :cond_6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_3

    .line 21
    :cond_7
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p0

    return-object p0
.end method

.method static g()V
    .locals 0

    return-void
.end method
