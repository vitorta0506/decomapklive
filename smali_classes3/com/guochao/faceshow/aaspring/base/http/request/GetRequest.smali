.class public Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;
.super Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest<",
        "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method H(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 7
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TE;>;)",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest$a;-><init>(Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;Lcom/guochao/faceshow/aaspring/base/http/callback/b;)V

    .line 3
    invoke-virtual {v0}, Ll7/a;->a()Ljava/lang/reflect/Type;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->setRequest(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->r()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->setRetryCount(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->p:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->cancel()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lx6/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XX"

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->n()Ljava/util/Map;

    move-result-object v4

    .line 14
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->h:Z

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->f(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o()Ljava/lang/String;

    move-result-object v3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->f(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    return-object p1
.end method

.method protected R()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lx6/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
