.class public Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
.super Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest<",
        "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private C:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->B:Ljava/util/Map;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->C:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method H(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .locals 8
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
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest$a;-><init>(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;Lcom/guochao/faceshow/aaspring/base/http/callback/b;)V

    .line 3
    invoke-virtual {v0}, Ll7/a;->a()Ljava/lang/reflect/Type;

    move-result-object v6

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

    if-lez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    const-string v1, "unixTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->n()Ljava/util/Map;

    move-result-object v4

    .line 15
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->C:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->i:Ljava/lang/Object;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->h:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->n(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    return-object p1

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->B:Ljava/util/Map;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->m(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    return-object p1

    :cond_7
    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->n(Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->B:Ljava/util/Map;

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->m(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    return-object p1
.end method

.method public R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->B:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public S(Ljava/lang/String;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->B:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public T()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->B:Ljava/util/Map;

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->cancel()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->h:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
