.class public Lm9/a;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;-><init>(Landroid/content/Context;)V

    const-string p1, "896255734201697"

    .line 2
    iput-object p1, p0, Lm9/a;->e:Ljava/lang/String;

    .line 3
    new-instance p1, Lm9/a$a;

    invoke-direct {p1, p0}, Lm9/a$a;-><init>(Lm9/a;)V

    iput-object p1, p0, Lm9/a;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic o(Lm9/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic p(Lm9/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lm9/a;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lm9/a;)V
    .locals 0

    invoke-direct {p0}, Lm9/a;->s()V

    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lm9/a;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v2, p0, Lm9/a;->e:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "client_secret"

    const-string v3, "7716268f129ecb1e6858358462cc09d7"

    .line 8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zune\uff1a"

    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "code"

    .line 10
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "grant_type"

    const-string v2, "authorization_code"

    .line 11
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "redirect_uri"

    const-string v2, "https://socialsizzle.herokuapp.com/auth/"

    .line 12
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p1, Lokhttp3/FormBody$Builder;

    invoke-direct {p1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    .line 17
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "https://api.instagram.com/oauth/access_token"

    .line 18
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lm9/a$b;

    invoke-direct {v0, p0}, Lm9/a$b;-><init>(Lm9/a;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public i(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    const/16 v0, 0x22b

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "result"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, -0x2

    const-string p2, "no code "

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lm9/a;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    const-string p1, "cancel"

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public m()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lm9/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "https://socialsizzle.herokuapp.com/auth/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "user_profile,user_media"

    aput-object v2, v0, v1

    const-string v1, "https://api.instagram.com/oauth/authorize/?force_authentication=1&client_id=%s&redirect_uri=%s&scope=%s&state=1&response_type=code"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/ins/InstagramLoginActivity;->b0(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
