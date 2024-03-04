.class public Lpd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lokhttp3/Response;Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/Response;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-static {p3, p2}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private c()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/guochao/faceshow/aaspring/beans/BaseRespData;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->code:I

    const v0, 0x9c42

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public b(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    move-object v3, v2

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v2, v1

    .line 5
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v1

    .line 6
    :goto_1
    invoke-direct {p0, v3}, Lpd/a;->d(Lcom/guochao/faceshow/aaspring/beans/BaseRespData;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {p3, p1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-direct {p0, v3}, Lpd/a;->d(Lcom/guochao/faceshow/aaspring/beans/BaseRespData;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    if-ne p4, p1, :cond_2

    .line 9
    iget-object p1, v3, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object p4, v3, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->msg:Ljava/lang/String;

    invoke-static {p1, p4, p3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_2

    :cond_2
    if-eqz v3, :cond_a

    .line 11
    iget p1, v3, Lcom/guochao/faceshow/aaspring/beans/BaseRespData;->code:I

    .line 12
    :try_start_2
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const p4, 0x9c41

    if-eq p1, p4, :cond_3

    const p4, 0x9c42

    if-ne p1, p4, :cond_4

    .line 13
    :cond_3
    invoke-direct {p0}, Lpd/a;->c()Landroid/content/Context;

    move-result-object p4

    const v4, 0x7f12004f

    invoke-virtual {p4, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 14
    invoke-direct {p0}, Lpd/a;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p4

    const-string v4, "ACCOUNT_LOGOUT"

    .line 16
    invoke-virtual {p4, v4, v1}, Lcom/guochao/faceshow/BaseAppContext;->accountForceLogout(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const p4, 0x9c44

    const-wide/16 v4, 0x3e8

    if-ne p1, p4, :cond_5

    .line 17
    new-instance p4, Ly7/b;

    invoke-direct {p4}, Ly7/b;-><init>()V

    .line 18
    iput-boolean p3, p4, Ly7/b;->f:Z

    .line 19
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p4

    new-instance v1, Lpd/a$a;

    invoke-direct {v1, p0, v3}, Lpd/a$a;-><init>(Lpd/a;Lcom/guochao/faceshow/aaspring/beans/BaseRespData;)V

    invoke-virtual {p4, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const p4, 0x9c46

    if-ne p1, p4, :cond_6

    .line 21
    new-instance p4, Ly7/b;

    invoke-direct {p4}, Ly7/b;-><init>()V

    .line 22
    iput-boolean p3, p4, Ly7/b;->f:Z

    .line 23
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p4

    new-instance v1, Lpd/a$b;

    invoke-direct {v1, p0}, Lpd/a$b;-><init>(Lpd/a;)V

    invoke-virtual {p4, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    const p4, 0x9c45

    if-ne p1, p4, :cond_7

    .line 25
    new-instance p4, Ly7/b;

    invoke-direct {p4}, Ly7/b;-><init>()V

    .line 26
    iput-boolean p3, p4, Ly7/b;->f:Z

    .line 27
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    invoke-virtual {p3, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lpd/a$c;

    invoke-direct {p4, p0, v3}, Lpd/a$c;-><init>(Lpd/a;Lcom/guochao/faceshow/aaspring/beans/BaseRespData;)V

    invoke-virtual {p3, p4, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    const p3, 0x9c4d

    if-ne p1, p3, :cond_8

    .line 29
    invoke-direct {p0}, Lpd/a;->c()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f12009c

    invoke-static {p3, p4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_8
    const p3, 0x1388d

    if-ne p1, p3, :cond_9

    .line 30
    new-instance p3, Lpd/a$d;

    invoke-direct {p3, p0}, Lpd/a$d;-><init>(Lpd/a;)V

    invoke-static {p3}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_9
    const p3, 0x1388e

    if-ne p1, p3, :cond_a

    .line 31
    new-instance p1, Lpd/a$e;

    invoke-direct {p1, p0}, Lpd/a$e;-><init>(Lpd/a;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 33
    :cond_a
    :goto_2
    invoke-direct {p0, p2, v0, v2}, Lpd/a;->a(Lokhttp3/Response;Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 5
    invoke-virtual {p0, v0, v1, p1, v2}, Lpd/a;->b(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x202

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x1ad

    if-ne v3, v4, :cond_0

    :cond_1
    return-object v1
.end method
