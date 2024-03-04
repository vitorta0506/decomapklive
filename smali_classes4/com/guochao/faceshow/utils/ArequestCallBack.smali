.class public Lcom/guochao/faceshow/utils/ArequestCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public aresult:Lcom/guochao/faceshow/utils/AResult;

.field public data:Ljava/lang/String;

.field public isError:Z

.field public objectData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->isError:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->isError:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/guochao/faceshow/utils/Ahttp;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->isError:Z

    return-void
.end method

.method private checkAResult()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->aresult:Lcom/guochao/faceshow/utils/AResult;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/utils/AResult;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/AResult;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->aresult:Lcom/guochao/faceshow/utils/AResult;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    return-void
.end method

.method public onError(Lg7/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg7/a<",
            "TT;>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public onFinished()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "result"

    const-string v1, "Response"

    .line 1
    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/utils/AResult;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/AResult;

    iput-object v1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->aresult:Lcom/guochao/faceshow/utils/AResult;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/utils/ArequestCallBack;->checkAResult()V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->data:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 7
    :goto_0
    :try_start_3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->objectData:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->aresult:Lcom/guochao/faceshow/utils/AResult;

    iget p1, p1, Lcom/guochao/faceshow/utils/AResult;->code:I

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->isError:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/utils/ArequestCallBack;->checkAResult()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method

.method public onSuccessV2(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "{"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onSuccess(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    const-string v1, ""

    .line 6
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
