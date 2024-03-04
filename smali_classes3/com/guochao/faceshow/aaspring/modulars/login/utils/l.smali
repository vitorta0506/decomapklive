.class public abstract Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;,
        Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;,
        Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;
    }
.end annotation


# instance fields
.field protected b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;

    .line 3
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;->onAuthResponse(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p4

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "user/openid"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "accessToken"

    .line 6
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p3, ""

    :cond_3
    const-string v0, "uid"

    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string p3, "secret"

    .line 8
    invoke-virtual {p2, p3, p5}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string p3, "unionid"

    .line 9
    invoke-virtual {p2, p3, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;I)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method protected d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;

    .line 3
    invoke-interface {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;->A(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;

    .line 3
    invoke-interface {v1, p1, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;->k(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;

    .line 3
    invoke-interface {v1, p1, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;->H(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$b;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->c:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->c:Z

    return v0
.end method

.method public i(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected j(ILcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V
    .locals 9

    const-string v0, "pictureUrl"

    const-string v1, "displayName"

    const-string v2, "userId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_15

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "name"

    const-string v7, "id"

    const-string v8, ""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_b

    .line 3
    :pswitch_0
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "response"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "sex"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "first_name"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;-><init>()V

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v8

    :goto_0
    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->h(Ljava/lang/String;)V

    const/4 p1, 0x2

    if-ne v1, p1, :cond_2

    const-string p1, "1"

    goto :goto_1

    :cond_2
    const-string p1, "2"

    .line 10
    :goto_1
    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->g(Ljava/lang/String;)V

    .line 11
    instance-of p1, v0, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    invoke-virtual {v2, v8}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->j(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->f(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto/16 :goto_b

    .line 13
    :pswitch_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v4

    .line 16
    :goto_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v4

    .line 18
    :goto_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    :cond_6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;-><init>()V

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v8

    :goto_4
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->h(Ljava/lang/String;)V

    .line 22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move-object v4, v8

    :goto_5
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->i(Ljava/lang/String;)V

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v8, v2

    :cond_9
    invoke-virtual {p1, v8}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->j(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->f(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto/16 :goto_b

    .line 25
    :pswitch_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "username"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 28
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;-><init>()V

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v8

    :goto_6
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->h(Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v8, p1

    :cond_b
    invoke-virtual {v1, v8}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->j(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->f(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto/16 :goto_b

    .line 32
    :pswitch_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "sub"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "picture"

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;-><init>()V

    .line 37
    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->h(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->j(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->i(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->f(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto/16 :goto_b

    .line 41
    :pswitch_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;-><init>()V

    .line 43
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile_image_url_https"

    .line 45
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profile_image_url"

    .line 46
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    move-object v2, v8

    :goto_7
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->h(Ljava/lang/String;)V

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object v3, p1

    goto :goto_8

    :cond_e
    move-object v3, v8

    :goto_8
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->i(Ljava/lang/String;)V

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    move-object v8, v1

    :cond_f
    invoke-virtual {v0, v8}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->j(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->f(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto/16 :goto_b

    .line 51
    :pswitch_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "http://graph.facebook.com/%s/picture?type=large"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 54
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_9

    :cond_10
    move-object p1, v8

    :goto_9
    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->h(Ljava/lang/String;)V

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_a

    :cond_11
    move-object v1, v8

    :goto_a
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->i(Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    move-object v8, v0

    :cond_12
    invoke-virtual {v2, v8}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->j(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->f(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    goto :goto_b

    .line 60
    :pswitch_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;

    invoke-virtual {v5, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;

    .line 61
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;-><init>()V

    if-eqz p1, :cond_13

    .line 62
    invoke-virtual {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    goto :goto_b

    .line 63
    :cond_13
    invoke-virtual {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    goto :goto_b

    .line 64
    :pswitch_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getJson()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/guochao/faceshow/aaspring/modulars/login/bean/QqUserBean;

    invoke-virtual {v5, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/QqUserBean;

    if-eqz p1, :cond_14

    .line 65
    invoke-virtual {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    goto :goto_b

    .line 66
    :cond_14
    invoke-virtual {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    goto :goto_b

    .line 67
    :pswitch_8
    invoke-virtual {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_b
    return-void

    .line 69
    :cond_15
    :goto_c
    invoke-virtual {p0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract m()V
.end method

.method public n(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
